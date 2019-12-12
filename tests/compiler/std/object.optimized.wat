(module
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iff (func (param f32 f32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort))
 (memory $0 1)
 (data (i32.const 8) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00s\00t\00d\00/\00o\00b\00j\00e\00c\00t\00.\00t\00s")
 (data (i32.const 56) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 80) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b")
 (data (i32.const 104) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 132) "\01\00\00\00\01")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/object/Object.is<f64> (; 1 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
  local.get $0
  local.get $1
  f64.eq
  if
   local.get $0
   i64.reinterpret_f64
   local.get $1
   i64.reinterpret_f64
   i64.eq
   return
  end
  local.get $0
  local.get $0
  f64.ne
  local.get $1
  local.get $1
  f64.ne
  i32.and
 )
 (func $~lib/object/Object.is<f32> (; 2 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  f32.eq
  if
   local.get $0
   i32.reinterpret_f32
   local.get $1
   i32.reinterpret_f32
   i32.eq
   return
  end
  local.get $0
  local.get $0
  f32.ne
  local.get $1
  local.get $1
  f32.ne
  i32.and
 )
 (func $~lib/object/Object.is<i32> (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.eq
 )
 (func $~lib/object/Object.is<bool> (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  local.get $1
  i32.const 0
  i32.ne
  i32.eq
 )
 (func $~lib/string/String#get:length (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 6 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $continue|0
    local.get $0
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $continue|0
    end
   end
  end
  loop $continue|1
   block $break|1
    local.get $2
    local.tee $3
    i32.const 1
    i32.sub
    local.set $2
    local.get $3
    i32.eqz
    br_if $break|1
    local.get $1
    i32.load16_u
    local.tee $3
    local.get $0
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $4
     local.get $3
     i32.sub
     return
    else
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $continue|1
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $~lib/object/Object.is<~lib/string/String> (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
 )
 (func $start:std/object (; 9 ;) (type $FUNCSIG$v)
  block $folding-inner0
   f64.const 0
   f64.const 0
   call $~lib/object/Object.is<f64>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   f64.const 0
   f64.const -0
   call $~lib/object/Object.is<f64>
   if
    br $folding-inner0
   end
   f64.const -0
   f64.const 0
   call $~lib/object/Object.is<f64>
   if
    br $folding-inner0
   end
   f64.const 0
   f64.const 1
   call $~lib/object/Object.is<f64>
   if
    br $folding-inner0
   end
   f64.const 1
   f64.const -1
   call $~lib/object/Object.is<f64>
   if
    br $folding-inner0
   end
   f64.const 1
   f64.const 1
   call $~lib/object/Object.is<f64>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   f64.const inf
   f64.const inf
   call $~lib/object/Object.is<f64>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   f64.const -inf
   f64.const -inf
   call $~lib/object/Object.is<f64>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   f64.const inf
   f64.const -inf
   call $~lib/object/Object.is<f64>
   if
    br $folding-inner0
   end
   f64.const -inf
   f64.const inf
   call $~lib/object/Object.is<f64>
   if
    br $folding-inner0
   end
   f64.const inf
   f64.const nan:0x8000000000000
   call $~lib/object/Object.is<f64>
   if
    br $folding-inner0
   end
   f64.const nan:0x8000000000000
   f64.const inf
   call $~lib/object/Object.is<f64>
   if
    br $folding-inner0
   end
   f64.const nan:0x8000000000000
   f64.const nan:0x8000000000000
   call $~lib/object/Object.is<f64>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   f32.const 0
   f32.const 0
   call $~lib/object/Object.is<f32>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   f32.const 0
   f32.const -0
   call $~lib/object/Object.is<f32>
   if
    br $folding-inner0
   end
   f32.const -0
   f32.const 0
   call $~lib/object/Object.is<f32>
   if
    br $folding-inner0
   end
   f32.const 0
   f32.const 1
   call $~lib/object/Object.is<f32>
   if
    br $folding-inner0
   end
   f32.const 1
   f32.const -1
   call $~lib/object/Object.is<f32>
   if
    br $folding-inner0
   end
   f32.const 1
   f32.const 1
   call $~lib/object/Object.is<f32>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   f32.const inf
   f32.const inf
   call $~lib/object/Object.is<f32>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   f32.const -inf
   f32.const -inf
   call $~lib/object/Object.is<f32>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   f32.const inf
   f32.const -inf
   call $~lib/object/Object.is<f32>
   if
    br $folding-inner0
   end
   f32.const -inf
   f32.const inf
   call $~lib/object/Object.is<f32>
   if
    br $folding-inner0
   end
   f32.const inf
   f32.const nan:0x400000
   call $~lib/object/Object.is<f32>
   if
    br $folding-inner0
   end
   f32.const nan:0x400000
   f32.const inf
   call $~lib/object/Object.is<f32>
   if
    br $folding-inner0
   end
   f32.const nan:0x400000
   f32.const nan:0x400000
   call $~lib/object/Object.is<f32>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   f64.const 0
   f64.const -1e-309
   call $~lib/object/Object.is<f64>
   if
    br $folding-inner0
   end
   f64.const -0
   f64.const -1e-309
   call $~lib/object/Object.is<f64>
   if
    br $folding-inner0
   end
   f64.const 0
   f64.const 0
   call $~lib/object/Object.is<f64>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 0
   i32.const 0
   call $~lib/object/Object.is<i32>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 1
   i32.const -1
   call $~lib/object/Object.is<i32>
   if
    br $folding-inner0
   end
   i32.const 1
   i32.const 1
   call $~lib/object/Object.is<bool>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 1
   i32.const 0
   call $~lib/object/Object.is<bool>
   if
    br $folding-inner0
   end
   i32.const 0
   i32.const 0
   call $~lib/object/Object.is<bool>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 72
   i32.const 72
   call $~lib/object/Object.is<~lib/string/String>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 72
   i32.const 96
   call $~lib/object/Object.is<~lib/string/String>
   if
    br $folding-inner0
   end
   i32.const 72
   i32.const 120
   call $~lib/object/Object.is<~lib/string/String>
   if
    br $folding-inner0
   end
   i32.const 0
   i32.const 0
   call $~lib/object/Object.is<i32>
   i32.const 1
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 144
   i32.const 0
   call $~lib/object/Object.is<~lib/string/String>
   if
    br $folding-inner0
   end
   i32.const 0
   i32.const 144
   call $~lib/object/Object.is<~lib/string/String>
   if
    br $folding-inner0
   end
   return
  end
  call $~lib/builtins/abort
  unreachable
 )
 (func $start (; 10 ;) (type $FUNCSIG$v)
  call $start:std/object
 )
 (func $null (; 11 ;) (type $FUNCSIG$v)
  nop
 )
)