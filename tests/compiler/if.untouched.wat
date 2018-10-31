(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort))
 (global $HEAP_BASE i32 (i32.const 24))
 (memory $0 1)
 (data (i32.const 8) "\05\00\00\00i\00f\00.\00t\00s\00")
 (export "memory" (memory $0))
 (export "ifThenElse" (func $if/ifThenElse))
 (export "ifThen" (func $if/ifThen))
 (export "ifThenElseBlock" (func $if/ifThenElseBlock))
 (export "ifAlwaysReturns" (func $if/ifAlwaysReturns))
 (start $start)
 (func $if/ifThenElse (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_local $0)
   (return
    (i32.const 1)
   )
   (return
    (i32.const 0)
   )
  )
  (unreachable)
 )
 (func $if/ifThen (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_local $0)
   (return
    (i32.const 1)
   )
  )
  (i32.const 0)
 )
 (func $if/ifThenElseBlock (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_local $0)
   (return
    (i32.const 1)
   )
   (return
    (i32.const 0)
   )
  )
  (unreachable)
 )
 (func $if/ifAlwaysReturns (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_local $0)
   (return
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (unreachable)
 )
 (func $start (; 5 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (call $if/ifThenElse
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $if/ifThenElse
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $if/ifThen
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $if/ifThen
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $if/ifThenElseBlock
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $if/ifThenElseBlock
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
)
