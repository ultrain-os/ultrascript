import "allocator/arena";
class A {
    constructor(age: u32){
    }
}
export class B extends A {
    constructor(age:u32, name: u64){
      super(age);
    }
}

var b = new B(1, 2);
  