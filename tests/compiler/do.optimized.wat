(module
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort))
 (memory $0 1)
 (data (i32.const 8) "\05\00\00\00d\00o\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $do/n (mut i32) (i32.const 10))
 (global $do/m (mut i32) (i32.const 0))
 (global $do/o (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  loop $continue|0
   get_global $do/n
   i32.const 1
   i32.sub
   set_global $do/n
   get_global $do/m
   i32.const 1
   i32.add
   set_global $do/m
   get_global $do/n
   br_if $continue|0
  end
  block $folding-inner0
   get_global $do/n
   if
    br $folding-inner0
   end
   get_global $do/m
   i32.const 10
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 10
   set_global $do/n
   loop $continue|1
    get_global $do/n
    tee_local $0
    i32.const 1
    i32.sub
    set_global $do/n
    get_local $0
    br_if $continue|1
   end
   get_global $do/n
   i32.const -1
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 10
   set_global $do/n
   i32.const 0
   set_global $do/m
   loop $continue|2
    get_global $do/n
    i32.const 1
    i32.sub
    set_global $do/n
    get_global $do/m
    i32.const 1
    i32.add
    set_global $do/m
    loop $continue|3
     get_global $do/n
     i32.const 1
     i32.sub
     set_global $do/n
     get_global $do/o
     i32.const 1
     i32.add
     set_global $do/o
     get_global $do/n
     br_if $continue|3
    end
    get_global $do/n
    if
     br $folding-inner0
    end
    get_global $do/o
    i32.const 9
    i32.ne
    if
     br $folding-inner0
    end
    get_global $do/n
    br_if $continue|2
   end
   get_global $do/n
   if
    br $folding-inner0
   end
   get_global $do/m
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   get_global $do/o
   i32.const 9
   i32.ne
   if
    br $folding-inner0
   end
   return
  end
  call $~lib/env/abort
  unreachable
 )
 (func $null (; 2 ;) (type $v)
  nop
 )
)
