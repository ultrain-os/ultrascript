(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (type $i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort))
 (global $function-expression/f1 (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 1))
 (global $function-expression/f3 (mut i32) (i32.const 2))
 (global $function-expression/f4 (mut i32) (i32.const 3))
 (table 4 4 anyfunc)
 (elem (i32.const 0) $start~anonymous|0 $start~anonymous|0 $start~someName|2 $start~anonymous|3)
 (memory $0 1)
 (data (i32.const 8) "\16\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start~anonymous|0 (; 1 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $start~someName|2 (; 2 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
 (func $start~anonymous|3 (; 3 ;) (; has Stack IR ;) (type $i) (result i32)
  (i32.const 1)
 )
 (func $start (; 4 ;) (; has Stack IR ;) (type $v)
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.ne
    (call_indirect (type $ii)
     (i32.const 1)
     (get_global $function-expression/f1)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.ne
    (call_indirect (type $ii)
     (i32.const 2)
     (get_global $function-expression/f2)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 0)
  )
  (call_indirect (type $v)
   (get_global $function-expression/f3)
  )
  (set_global $~argc
   (i32.const 0)
  )
  (if
   (i32.ne
    (call_indirect (type $i)
     (get_global $function-expression/f4)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
)
