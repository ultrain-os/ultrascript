import {
    AbiHelper
} from "./abi";

import {
    ClassDeclaration,
    CommonTypeNode,
    DecoratorKind,
    FieldDeclaration,
    NodeKind,
    TypeNode,
    BlockStatement,
    Statement
} from "./ast";

import {
    ClassPrototype,
    Element,
    ElementKind,
    FieldPrototype,
    FunctionPrototype,
    Program,
} from "./program";

import {
    Range
} from "./tokenizer";

import {
    Type,
    TypeKind
} from "./types";

import {
    AstUtil
} from "./util/astutil";

export enum VarialbeKind {
    BOOL, // boolean and bool
    NUMBER, // original type except boolean and bool
    STRING, // string kind
    ARRAY, // array kind
    CLASS // class kind
}

export class InsertPoint {

    protected range: Range;
    protected insertCode: string;
    protected code: string[];

    private static descComparator = (a: InsertPoint, b: InsertPoint): i32 => {
        return (b.line - a.line);
    };

    static toSortedMap(insertPoints: Array<InsertPoint>): Map<string, Array<InsertPoint>> {

        var map = new Map<string, Array<InsertPoint>>();
        for (let insertPoint of insertPoints) {
            let normalizedPath = insertPoint.normalizedPath;
            let insertPointArr: Array<InsertPoint> | null = map.get(normalizedPath);

            if (!insertPointArr) {
                insertPointArr = new Array<InsertPoint>();
                map.set(normalizedPath, insertPointArr);
            }
            insertPointArr.push(insertPoint);
        }

        for (let [_, values] of map) {
            values.sort(InsertPoint.descComparator);
        }
        return map;
    }

    constructor(range: Range, insertCode: string = "") {
        this.range = range;
        this.insertCode = insertCode;
        this.code = [];
    }

    get line(): i32 {
        return this.range.line - 1;
    }
    get normalizedPath(): string {
        return this.range.source.normalizedPath;
    }

    get indentity(): string {
        return this.range.source.normalizedPath + this.range.toString();
    }

    addInsertCode(code: string): void {
        this.code.push(code);
    }

    getInsertCode(): string {
        return this.insertCode;
    }
}

/**
 * Various type
 * 1. abi Type, 
 * 2. declare type, account_name, u64, 
 * 3. asc type, u64, u64[]
 * 4. asc basic type, u64
 */
export class TypeNodeInfo {

    kind: VarialbeKind;

    program: Program;

    abiTypeLookup: Map<string, string> = new Map();

    commonTypeNode: CommonTypeNode;

    /** Parameter name, u64 */
    declareType: string;
    /** Base Parameter type */
    ascBasicType: string;
    /** The abi field type, eg:account_name */
    // abiType: string;
    /** The field fact type, eg: u64, u32 */
    ascFactType: string;
    /** Whether parameter or field is array  */

    get isArray(): bool {
        return AstUtil.isArray(this.declareType);
    }

    constructor(program: Program, commonTypeNode: CommonTypeNode) {
        this.program = program;
        this.commonTypeNode = commonTypeNode;
        this.abiTypeLookup = AbiHelper.abiTypeLookup;
        this.resolve();
    }

    /**
     * string TypeKind is 9, and usize TypeKind is also 9.
     * @param type
     */
    private resolve(): void {
        var declareType = this.commonTypeNode.range.toString();
        // var typeAlias = this.program.typeAliases.get(declareType);

        // if (typeAlias) {
        //     declareType = typeAlias.type.range.toString();
        // }
        this.declareType = declareType;

        var basicTypeName: string = AstUtil.getBasicTypeName(declareType);
        this.ascBasicType = basicTypeName;
        if (basicTypeName == "string" || basicTypeName == "String") {
            this.kind = VarialbeKind.STRING;
            this.ascFactType = "string";
            return;
        }

        // this.abiType = this.findAbiType(basicTypeName);
        var _ascFactType: Type | null = this.findOriginalAscType(basicTypeName);

        // TODO
        if (!_ascFactType) {
            this.kind = VarialbeKind.CLASS;
        } else if (_ascFactType.kind == TypeKind.BOOL) {
            this.kind = VarialbeKind.BOOL;
            this.ascFactType = _ascFactType.toString();
        } else {
            this.kind = VarialbeKind.NUMBER;
            this.ascFactType = _ascFactType.toString();
        }
    }

    /**
     * Find the original type name
     * eg: declare type account_name = u64;
     *     declare type account_name_alias = account_name;
     *     findAbiType("account_name_alias") return "account_name";
     *
     * eg: findAbiType("u64") return "u64";
     * @param typeKindName
     * */
    // findAbiType(typeKindName: string): string {

    //     /**Watch the type whether was the root type */
    //     var abiType: string | null = this.abiTypeLookup.get(typeKindName);
    //     if (abiType) {
    //         return typeKindName;
    //     }
    //     var typeAlias = this.program.typeAliases.get(typeKindName);
    //     if (typeAlias) {
    //         let typeName = typeAlias.type.range.toString();
    //         return this.findAbiType(typeName);
    //     } else {
    //         return typeKindName;
    //     }
    // }

    /**
     *  Find the script original type name
     *  @param typeKindName
     *
     */
    private findOriginalAscTypeName(typeKindName: string): string {
        var typeAlias = this.program.typeAliases.get(typeKindName);
        if (typeAlias) {
            let commonaTypeName = typeAlias.type.range.toString();
            return this.findOriginalAscTypeName(commonaTypeName);
        }
        return typeKindName;
    }

    /**
    * Find assemblyscript original type name
    * eg: account_name return 'u64'
    *
    * @param typeKindName
    */
    private findOriginalAscType(typeKindName: string): Type | null {
        var originalName = this.findOriginalAscTypeName(typeKindName);
        //Get the AssemblyScript original type
        var originalType: Type | null = this.program.typesLookup.get(originalName);
        return originalType;
    }
}

/**
 * Serialiize Generateor
 */
class SerializeGenerator {

    SERIALIZE_METHOD_NAME: string = "serialize";

    DESERIALIZE_METHOD_NAME: string = "deserialize";

    PRIMARY_METHOD_NAME: string = "primaryKey";

    classPrototype: ClassPrototype;
    /**Need to implement the Serialize method of the serialize interface */
    private needImplSerialize: boolean = true;
    /**Need to implement the Deserialize method of the serialize interface */
    private needImplDeSerialize: boolean = true;
    /**Need to implement the primaryKey method */
    private needImplPrimary: boolean = true;

    constructor(classPrototype: ClassPrototype) {
        this.classPrototype = classPrototype;
    }

    toGenerateFlag(): bool {

        if (!this.classPrototype.instanceMembers) {
            return false;
        }

        for (let [_, element] of this.classPrototype.instanceMembers) {
            if (element.kind == ElementKind.FUNCTION_PROTOTYPE) {
                let functionPrototype = <FunctionPrototype>element;
                if (functionPrototype.declaration.name.range.toString() == this.SERIALIZE_METHOD_NAME) {
                    this.needImplSerialize = false;
                }
                if (functionPrototype.declaration.name.range.toString() == this.DESERIALIZE_METHOD_NAME) {
                    this.needImplDeSerialize = false;
                }
                if (functionPrototype.declaration.name.range.toString() == this.PRIMARY_METHOD_NAME) {
                    this.needImplPrimary = false;
                }
            }
        }
        return this.needImplDeSerialize || this.needImplPrimary || this.needImplSerialize;
    }

    checkFieldImplSerialize(typeNode: CommonTypeNode): bool {

        var internalName = AstUtil.getInternalName(typeNode);
        var element: Element | null = this.classPrototype.program.elementsLookup.get(internalName);

        if (element && element.kind == ElementKind.CLASS_PROTOTYPE) {
            let hasImpl = AstUtil.impledSerializable((<ClassPrototype>element).declaration);
            if (!hasImpl) {
                throw new Error(`Class ${internalName} has not implement the interface serializable`);
            }
        }
        return true;
    }

    /**Parse the class prototype and get serialize points */
    getSerializePoints(): SerializePoint {

        var serializePoint: SerializePoint = new SerializePoint(this.classPrototype.declaration.range);
        serializePoint.classDeclaration = this.classPrototype.declaration;
        serializePoint.needDeserialize = this.needImplDeSerialize;
        serializePoint.needSerialize = this.needImplSerialize;
        serializePoint.needPrimaryKey = this.needImplPrimary;

        if (!this.classPrototype.instanceMembers) {
            return serializePoint;
        }

        for (let [fieldName, element] of this.classPrototype.instanceMembers) {
            if (element.kind == ElementKind.FIELD_PROTOTYPE) {

                let fieldPrototype: FieldPrototype = <FieldPrototype>element;
                let fieldDeclaration: FieldDeclaration = fieldPrototype.declaration;
                let commonType: CommonTypeNode | null = fieldDeclaration.type;

                if (commonType && commonType.kind == NodeKind.TYPE && !AstUtil.haveSpecifyDecorator(fieldDeclaration, DecoratorKind.IGNORE)) {
                    let typeNode = <TypeNode>commonType;
                    if (this.needImplDeSerialize && this.checkFieldImplSerialize(commonType)) {
                        serializePoint.addSerializeExpr(this.serializeField(fieldName, typeNode));
                    }

                    if (this.needImplSerialize && this.checkFieldImplSerialize(commonType)) {
                        serializePoint.addDeserializeExpr(this.deserializeField(fieldName, typeNode));
                    }
                }
            }
        }
        serializePoint.addDeserializeExpr(`   }`);
        serializePoint.addSerializeExpr(`   }`);

        return serializePoint;
    }

    /** Implement the serrialize field */
    serializeField(fieldName: string, typeNode: TypeNode): string {

        var paramDeclaration: TypeNodeInfo = new TypeNodeInfo(this.classPrototype.program, typeNode);
        var body: Array<string> = new Array<string>();

        if (paramDeclaration.isArray) {
            if (paramDeclaration.kind == VarialbeKind.NUMBER) {
                body.push(`      ds.writeVector<${paramDeclaration.ascBasicType}>(this.${fieldName});`);
            } else if (paramDeclaration.kind == VarialbeKind.BOOL) {
                body.push(`      ds.writeVector<u8>(this.${fieldName});`);
            } else if (paramDeclaration.kind == VarialbeKind.STRING) {
                body.push(`      ds.writeStringVector(this.${fieldName});`);
            } else {
                body.push(`      ds.writeComplexVector<${paramDeclaration.ascBasicType}>(this.${fieldName});`);
            }
        } else {
            if (paramDeclaration.kind == VarialbeKind.STRING) {
                body.push(`      ds.writeString(this.${fieldName});`);
            } else if (paramDeclaration.kind == VarialbeKind.BOOL) {
                body.push(`      ds.write<u8>(this.${fieldName});`);
            } else if (paramDeclaration.kind == VarialbeKind.NUMBER) {
                body.push(`      ds.write<${paramDeclaration.declareType}>(this.${fieldName});`);
            } else {
                body.push(`      this.${fieldName}.serialize(ds);`);
            }
        }
        return body.join("\n");
    }

    deserializeField(fieldName: string, type: TypeNode): string {

        var variableType: TypeNodeInfo = new TypeNodeInfo(this.classPrototype.program, type);

        var body: Array<string> = new Array<string>();

        if (variableType.isArray) {
            if (variableType.kind == VarialbeKind.NUMBER) {
                body.push(`      this.${fieldName} = ds.readVector<${variableType.ascFactType}>();`);
            } else if (variableType.kind == VarialbeKind.BOOL) {
                body.push(`      this.${fieldName} = ds.readVector<u8>();`);
            } else if (variableType.kind == VarialbeKind.STRING) {
                body.push(`      this.${fieldName} = ds.readStringVector();`);
            } else {
                body.push(`      this.${fieldName} = ds.readComplexVector<${variableType.ascBasicType}>();`);
            }
        } else {
            if (variableType.kind == VarialbeKind.STRING) {
                body.push(`      this.${fieldName} = ds.readString();`);
            } else if (variableType.kind == VarialbeKind.BOOL) {
                body.push(`      this.${fieldName} = ds.read<u8>() != 0;`);
            } else if (variableType.kind == VarialbeKind.NUMBER) {
                body.push(`      this.${fieldName} = ds.read<${variableType.ascFactType}>();`);
            } else {
                body.push(`      this.${fieldName}.deserialize(ds);`);
            }
        }
        return body.join("\n");
    }
}

export class SerializePoint extends InsertPoint {

    private serialize: Array<string> = new Array<string>();

    private deserialize: Array<string> = new Array<string>();

    private primaryKey: Array<string> = new Array<string>();

    needSerialize: bool;

    needDeserialize: bool;

    needPrimaryKey: bool;

    classDeclaration: ClassDeclaration

    constructor(range: Range) {
        super(range.atEnd);
        this.serialize.push(`    serialize(ds: DataStream): void {`);

        this.deserialize.push(`    deserialize(ds: DataStream): void {`);

        this.primaryKey.push(`     primaryKey(): id_type {`);
        this.primaryKey.push(`       return 0;`);
        this.primaryKey.push(`    }`);
    }

    addSerializeExpr(expr: string): void {
        this.serialize.push(expr);
    }

    addDeserializeExpr(expr: string): void {
        this.deserialize.push(expr);
    }

    get indentity(): string {
        return this.range.source.normalizedPath + this.range.toString() + this.classDeclaration.name.range.toString();
    }

    getInsertCode(): string {
        var insertData = [];

        if (this.needDeserialize) {
            insertData.push(this.deserialize.join("\n"));
        }
        if (this.needSerialize) {
            insertData.push(this.serialize.join("\n"));
        }
        if (this.needPrimaryKey) {
            insertData.push(this.primaryKey.join("\n"))
        }
        return insertData.join("\n");
    }
}

export class SerializeInserter {

    program: Program;

    private serializeClassname: Set<string> = new Set<string>();

    private insertPoints: Array<InsertPoint> = [];

    constructor(program: Program) {
        this.program = program;
    }

    resolve(): void {
        for (let [_, element] of this.program.elementsLookup) {
            if (element && element.kind == ElementKind.CLASS_PROTOTYPE) {
                let classDeclaration: ClassDeclaration = (<ClassPrototype>element).declaration;
                if (AstUtil.impledSerializable(classDeclaration)) {
                    let generator: SerializeGenerator = new SerializeGenerator(<ClassPrototype>element);
                    if (!generator.toGenerateFlag()) {
                        continue;
                    }

                    let serializePoint: SerializePoint = generator.getSerializePoints();

                    if (!this.serializeClassname.has(serializePoint.indentity)) {
                        this.insertPoints.push(serializePoint);
                        this.serializeClassname.add(serializePoint.indentity);
                    }
                }
            }
        }
    }

    getInsertPoints(): InsertPoint[] {
        return this.insertPoints;
    }

}

export class SuperInserter {

    program: Program;

    private insertPoints: Array<InsertPoint> = [];

    constructor(program: Program) {
        this.program = program;
    }

    resolve(): void {
        for (let [_, element] of this.program.elementsLookup) {
            if (element && element.kind == ElementKind.CLASS_PROTOTYPE) {
                let classPrototype = <ClassPrototype>element;
                if (classPrototype.basePrototype) {
                    this.processSuper(classPrototype);
                }
            }
        }
    }

    getInsertPoints(): InsertPoint[] {
        return this.insertPoints;
    }

    private processSuper(classPrototype: ClassPrototype): void {
        var constructorPrototype: FunctionPrototype | null = classPrototype.constructorPrototype;
        if (!classPrototype.basePrototype) {
            return;
        }
        var baseConstructorPrototype: FunctionPrototype | null = classPrototype.basePrototype.constructorPrototype;
        if (!constructorPrototype) {
            return;
        }
        if (!baseConstructorPrototype) {
            return;
        }
        var concreteFunctionDeclaration = constructorPrototype.declaration;

        if (concreteFunctionDeclaration.body) {
            let stmt = concreteFunctionDeclaration.body;
            var bodyStmt = concreteFunctionDeclaration.body.range.toString();
            let endIndex = bodyStmt.indexOf(";");
            let superCall = bodyStmt.substring(1, endIndex).trim();
            let _superCall = `        this._${superCall};`;
            if (stmt.kind == NodeKind.BLOCK) {
                let blockStmt = <BlockStatement>stmt;
                // for (let stmt of )

                if (blockStmt.statements.length >= 1 && blockStmt.statements[0].range.toString().indexOf("super") != -1) {
                    if (blockStmt.statements[0].kind == NodeKind.COMMENT) {
                        return ;
                    }
                    // console.log(`=====superCall: ${_superCall}`);
                    this.insertPoints.push(new InsertPoint(blockStmt.statements[0].range.atEnd, _superCall));
                } else {
                    return ;
                }
            } else {
                return ;
            }
        }

        var baseFunctionDeclaration = baseConstructorPrototype.declaration;
        var body: Statement | null = baseFunctionDeclaration.body;

        if (body) {
            var content = body.range.toString();
            var signature = baseFunctionDeclaration.signature.range.toString();
            var method = this.createSuperCall(signature, content);
            this.insertPoints.push(new InsertPoint(classPrototype.declaration.range.atEnd, method));
        }
    }

    private createSuperCall(signature: string, body: string): string {
        return `    _super${signature}: void ${body}`;
    }
}