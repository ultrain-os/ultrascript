(module
 (type $iv (func (param i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort))
 (global $std/gc-integration/B.d (mut i32) (i32.const 16))
 (global $std/gc-integration/a_ref (mut i32) (i32.const 24))
 (global $std/gc-integration/b_ref (mut i32) (i32.const 32))
 (global $std/gc-integration/i (mut i32) (i32.const 0))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $start~anonymous|0)
 (memory $0 1)
 (data (i32.const 8) "\15\00\00\00s\00t\00d\00/\00g\00c\00-\00i\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n\00.\00t\00s")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start~anonymous|0 (; 1 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (set_global $std/gc-integration/i
   (i32.add
    (get_global $std/gc-integration/i)
    (i32.const 1)
   )
  )
  (if
   (i32.ne
    (get_local $0)
    (i32.shl
     (get_global $std/gc-integration/i)
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
 (func $start (; 2 ;) (; has Stack IR ;) (type $v)
  (call $~iterateRoots
   (i32.const 0)
  )
  (if
   (i32.ne
    (get_global $std/gc-integration/i)
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
 (func $~iterateRoots (; 3 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (call_indirect (type $iv)
   (i32.const 8)
   (get_local $0)
  )
  (call_indirect (type $iv)
   (get_global $std/gc-integration/B.d)
   (get_local $0)
  )
  (call_indirect (type $iv)
   (get_global $std/gc-integration/a_ref)
   (get_local $0)
  )
  (call_indirect (type $iv)
   (get_global $std/gc-integration/b_ref)
   (get_local $0)
  )
 )
)
