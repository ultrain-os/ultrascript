(module
 (type $v (func))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $i (func (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iF (func (param i32) (result f64)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (import "env" "abort" (func $~lib/env/abort))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $~lib/internal/string/EMPTY i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $std/string/str (mut i32) (i32.const 12))
 (global $std/string/nullStr (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $~lib/internal/string/CharCode.PLUS i32 (i32.const 43))
 (global $~lib/internal/string/CharCode.MINUS i32 (i32.const 45))
 (global $~lib/internal/string/CharCode.DOT i32 (i32.const 46))
 (global $~lib/internal/string/CharCode._0 i32 (i32.const 48))
 (global $~lib/internal/string/CharCode._1 i32 (i32.const 49))
 (global $~lib/internal/string/CharCode._2 i32 (i32.const 50))
 (global $~lib/internal/string/CharCode._3 i32 (i32.const 51))
 (global $~lib/internal/string/CharCode._4 i32 (i32.const 52))
 (global $~lib/internal/string/CharCode._5 i32 (i32.const 53))
 (global $~lib/internal/string/CharCode._6 i32 (i32.const 54))
 (global $~lib/internal/string/CharCode._7 i32 (i32.const 55))
 (global $~lib/internal/string/CharCode._8 i32 (i32.const 56))
 (global $~lib/internal/string/CharCode._9 i32 (i32.const 57))
 (global $~lib/internal/string/CharCode.A i32 (i32.const 65))
 (global $~lib/internal/string/CharCode.B i32 (i32.const 66))
 (global $~lib/internal/string/CharCode.E i32 (i32.const 69))
 (global $~lib/internal/string/CharCode.O i32 (i32.const 79))
 (global $~lib/internal/string/CharCode.X i32 (i32.const 88))
 (global $~lib/internal/string/CharCode.Z i32 (i32.const 90))
 (global $~lib/internal/string/CharCode.a i32 (i32.const 97))
 (global $~lib/internal/string/CharCode.b i32 (i32.const 98))
 (global $~lib/internal/string/CharCode.e i32 (i32.const 101))
 (global $~lib/internal/string/CharCode.o i32 (i32.const 111))
 (global $~lib/internal/string/CharCode.x i32 (i32.const 120))
 (global $~lib/internal/string/CharCode.z i32 (i32.const 122))
 (global $std/string/c (mut i32) (i32.const 0))
 (global $std/string/a (mut i32) (i32.const 0))
 (global $std/string/b (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $~lib/builtins/i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $HEAP_BASE i32 (i32.const 2540))
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00")
 (data (i32.const 12) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 48) "\01\00\00\00\00\00")
 (data (i32.const 56) "\01\00\00\006\00")
 (data (i32.const 64) "\02\00\00\00h\00i\00")
 (data (i32.const 72) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 84) "\06\00\00\00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 100) "\03\00\00\00I\00\'\00m\00")
 (data (i32.const 112) "\01\00\00\00 \00")
 (data (i32.const 120) "\03\00\00\00 \00 \00 \00")
 (data (i32.const 132) "\01\00\00\00a\00")
 (data (i32.const 140) "\03\00\00\00a\00b\00c\00")
 (data (i32.const 152) "\05\00\00\00 \00 \00a\00b\00c\00")
 (data (i32.const 168) "\03\00\00\001\002\003\00")
 (data (i32.const 180) "\06\00\00\001\002\003\00a\00b\00c\00")
 (data (i32.const 196) "\08\00\00\001\002\003\001\002\00a\00b\00c\00")
 (data (i32.const 216) "\05\00\00\00a\00b\00c\00 \00 \00")
 (data (i32.const 232) "\06\00\00\00a\00b\00c\00a\00b\00c\00")
 (data (i32.const 248) "\08\00\00\00a\00b\00c\00a\00b\00c\00a\00b\00")
 (data (i32.const 268) "\01\00\00\00,\00")
 (data (i32.const 276) "\01\00\00\00x\00")
 (data (i32.const 284) "\03\00\00\00,\00 \00I\00")
 (data (i32.const 296) "\01\00\00\00g\00")
 (data (i32.const 304) "\01\00\00\00i\00")
 (data (i32.const 312) "\01\00\00\000\00")
 (data (i32.const 320) "\01\00\00\001\00")
 (data (i32.const 328) "\05\00\00\000\00b\001\000\001\00")
 (data (i32.const 344) "\05\00\00\000\00o\007\000\007\00")
 (data (i32.const 360) "\05\00\00\000\00x\00f\000\00f\00")
 (data (i32.const 376) "\05\00\00\000\00x\00F\000\00F\00")
 (data (i32.const 392) "\03\00\00\000\001\001\00")
 (data (i32.const 404) "\04\00\00\000\00x\001\00g\00")
 (data (i32.const 416) "\03\00\00\000\00.\001\00")
 (data (i32.const 428) "\03\00\00\00.\002\005\00")
 (data (i32.const 440) "\08\00\00\00.\001\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 460) "\01\00\00\00b\00")
 (data (i32.const 468) "\02\00\00\00a\00b\00")
 (data (i32.const 476) "\02\00\00\00b\00a\00")
 (data (i32.const 484) "\02\00\00\00a\00a\00")
 (data (i32.const 492) "\03\00\00\00a\00a\00a\00")
 (data (i32.const 504) "\08\00\00\00a\00b\00a\00b\00a\00b\00a\00b\00")
 (data (i32.const 524) "\05\00\00\00a\00a\00a\00a\00a\00")
 (data (i32.const 540) "\06\00\00\00a\00a\00a\00a\00a\00a\00")
 (data (i32.const 556) "\07\00\00\00a\00a\00a\00a\00a\00a\00a\00")
 (data (i32.const 576) "H\02\00\00\n\00\00\00(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 648) "\90\02\00\00d\00\00\00\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1168) "\01\00\00\008\00")
 (data (i32.const 1176) "\05\00\00\00-\001\000\000\000\00")
 (data (i32.const 1192) "\04\00\00\001\002\003\004\00")
 (data (i32.const 1204) "\05\00\00\001\002\003\004\005\00")
 (data (i32.const 1220) "\06\00\00\001\002\003\004\005\006\00")
 (data (i32.const 1236) "\07\00\00\001\001\001\001\001\001\001\00")
 (data (i32.const 1256) "\07\00\00\001\002\003\004\005\006\007\00")
 (data (i32.const 1276) "\n\00\00\002\001\004\007\004\008\003\006\004\006\00")
 (data (i32.const 1300) "\n\00\00\002\001\004\007\004\008\003\006\004\007\00")
 (data (i32.const 1324) "\0b\00\00\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 1352) "\02\00\00\00-\001\00")
 (data (i32.const 1360) "\04\00\00\001\000\000\000\00")
 (data (i32.const 1372) "\n\00\00\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 1396) "\n\00\00\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 1424) "\98\05\00\00\n\00\00\00(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1496) "\e0\05\00\00d\00\00\00\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2016) "\08\00\00\009\009\009\009\009\009\009\009\00")
 (data (i32.const 2036) "\t\00\00\001\000\000\000\000\000\000\000\000\00")
 (data (i32.const 2060) "\0b\00\00\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2088) "\0c\00\00\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2116) "\0f\00\00\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2152) "\10\00\00\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2188) "\11\00\00\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2228) "\14\00\00\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00")
 (data (i32.const 2272) "\05\00\00\00-\001\002\003\004\00")
 (data (i32.const 2288) "\0b\00\00\00-\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 2316) "\0c\00\00\00-\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2344) "\0d\00\00\00-\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2376) "\10\00\00\00-\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2412) "\12\00\00\00-\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2452) "\13\00\00\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 2496) "\14\00\00\00-\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\008\00")
 (export "memory" (memory $0))
 (export "getString" (func $std/string/getString))
 (start $start)
 (func $~lib/string/String#charCodeAt (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u offset=4
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (get_local $0)
   (block
    (if
     (i32.gt_u
      (get_local $0)
      (get_global $~lib/internal/allocator/MAX_SIZE_32)
     )
     (unreachable)
    )
    (set_local $1
     (get_global $~lib/allocator/arena/offset)
    )
    (set_local $2
     (i32.and
      (i32.add
       (i32.add
        (get_local $1)
        (get_local $0)
       )
       (get_global $~lib/internal/allocator/AL_MASK)
      )
      (i32.xor
       (get_global $~lib/internal/allocator/AL_MASK)
       (i32.const -1)
      )
     )
    )
    (set_local $3
     (current_memory)
    )
    (if
     (i32.gt_u
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 16)
      )
     )
     (block
      (set_local $4
       (i32.shr_u
        (i32.and
         (i32.add
          (i32.sub
           (get_local $2)
           (get_local $1)
          )
          (i32.const 65535)
         )
         (i32.xor
          (i32.const 65535)
          (i32.const -1)
         )
        )
        (i32.const 16)
       )
      )
      (set_local $5
       (select
        (tee_local $5
         (get_local $3)
        )
        (tee_local $6
         (get_local $4)
        )
        (i32.gt_s
         (get_local $5)
         (get_local $6)
        )
       )
      )
      (if
       (i32.lt_s
        (grow_memory
         (get_local $5)
        )
        (i32.const 0)
       )
       (if
        (i32.lt_s
         (grow_memory
          (get_local $4)
         )
         (i32.const 0)
        )
        (unreachable)
       )
      )
     )
    )
    (set_global $~lib/allocator/arena/offset
     (get_local $2)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/memory/memory.allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/string/allocate (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (i32.gt_s
       (get_local $0)
       (i32.const 0)
      )
     )
     (i32.le_s
      (get_local $0)
      (get_global $~lib/internal/string/MAX_LENGTH)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (call $~lib/memory/memory.allocate
    (i32.add
     (get_global $~lib/internal/string/HEADER_SIZE)
     (i32.shl
      (get_local $0)
      (i32.const 1)
     )
    )
   )
  )
  (i32.store
   (get_local $2)
   (get_local $0)
  )
  (get_local $2)
 )
 (func $~lib/string/String.fromCharCode (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 48)
   )
  )
  (set_local $1
   (call $~lib/internal/string/allocate
    (i32.const 1)
   )
  )
  (i32.store16 offset=4
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/internal/string/compareUnsafe (; 6 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $5
   (i32.const 0)
  )
  (set_local $6
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (set_local $7
   (i32.add
    (get_local $2)
    (i32.shl
     (get_local $3)
     (i32.const 1)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $4)
      (i32.eqz
       (tee_local $5
        (i32.sub
         (i32.load16_u offset=4
          (get_local $6)
         )
         (i32.load16_u offset=4
          (get_local $7)
         )
        )
       )
      )
      (get_local $4)
     )
     (block
      (block
       (set_local $4
        (i32.sub
         (get_local $4)
         (i32.const 1)
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (set_local $7
        (i32.add
         (get_local $7)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (get_local $5)
 )
 (func $~lib/string/String.__eq (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $2
     (i32.eq
      (get_local $0)
      (i32.const 0)
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_local $3)
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $3)
   )
  )
 )
 (func $~lib/string/String.fromCodePoint (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (i32.const 1114111)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 48)
   )
  )
  (set_local $1
   (i32.gt_s
    (get_local $0)
    (i32.const 65535)
   )
  )
  (set_local $2
   (call $~lib/internal/string/allocate
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (i32.store16 offset=4
    (get_local $2)
    (get_local $0)
   )
   (block
    (set_local $0
     (i32.sub
      (get_local $0)
      (i32.const 65536)
     )
    )
    (set_local $3
     (i32.add
      (i32.shr_u
       (get_local $0)
       (i32.const 10)
      )
      (i32.const 55296)
     )
    )
    (set_local $4
     (i32.add
      (i32.and
       (get_local $0)
       (i32.const 1023)
      )
      (i32.const 56320)
     )
    )
    (i32.store offset=4
     (get_local $2)
     (i32.or
      (i32.shl
       (get_local $3)
       (i32.const 16)
      )
      (get_local $4)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $~lib/string/String#startsWith (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 72)
   )
  )
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $8
   (block $~lib/internal/string/clamp<isize>|inlined.0 (result i32)
    (set_local $5
     (i32.const 0)
    )
    (select
     (tee_local $6
      (select
       (tee_local $6
        (get_local $3)
       )
       (tee_local $7
        (get_local $5)
       )
       (i32.gt_s
        (get_local $6)
        (get_local $7)
       )
      )
     )
     (tee_local $7
      (get_local $4)
     )
     (i32.lt_s
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (set_local $9
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.gt_s
    (i32.add
     (get_local $9)
     (get_local $8)
    )
    (get_local $4)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (get_local $8)
    (get_local $1)
    (i32.const 0)
    (get_local $9)
   )
  )
 )
 (func $~lib/string/String#endsWith (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $7
   (block $~lib/internal/string/clamp<isize>|inlined.1 (result i32)
    (set_local $3
     (i32.const 0)
    )
    (set_local $4
     (i32.load
      (get_local $0)
     )
    )
    (select
     (tee_local $5
      (select
       (tee_local $5
        (get_local $2)
       )
       (tee_local $6
        (get_local $3)
       )
       (i32.gt_s
        (get_local $5)
        (get_local $6)
       )
      )
     )
     (tee_local $6
      (get_local $4)
     )
     (i32.lt_s
      (get_local $5)
      (get_local $6)
     )
    )
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (set_local $9
   (i32.sub
    (get_local $7)
    (get_local $8)
   )
  )
  (if
   (i32.lt_s
    (get_local $9)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (get_local $9)
    (get_local $1)
    (i32.const 0)
    (get_local $8)
   )
  )
 )
 (func $~lib/string/String#endsWith|trampoline (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (get_global $~lib/internal/string/MAX_LENGTH)
   )
  )
  (call $~lib/string/String#endsWith
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#indexOf (; 12 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 72)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $4)
   )
   (return
    (i32.const -1)
   )
  )
  (set_local $8
   (block $~lib/internal/string/clamp<isize>|inlined.2 (result i32)
    (set_local $5
     (i32.const 0)
    )
    (select
     (tee_local $6
      (select
       (tee_local $6
        (get_local $2)
       )
       (tee_local $7
        (get_local $5)
       )
       (i32.gt_s
        (get_local $6)
        (get_local $7)
       )
      )
     )
     (tee_local $7
      (get_local $4)
     )
     (i32.lt_s
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (set_local $4
   (i32.sub
    (get_local $4)
    (get_local $3)
   )
  )
  (block $break|0
   (set_local $5
    (get_local $8)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_s
       (get_local $5)
       (get_local $4)
      )
     )
    )
    (if
     (i32.eqz
      (call $~lib/internal/string/compareUnsafe
       (get_local $0)
       (get_local $5)
       (get_local $1)
       (i32.const 0)
       (get_local $3)
      )
     )
     (return
      (get_local $5)
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const -1)
 )
 (func $~lib/string/String#includes (; 13 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ne
   (call $~lib/string/String#indexOf
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const -1)
  )
 )
 (func $~lib/memory/memcpy (; 14 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
    (i32.const 0)
   )
   (block
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 16)
       )
       (block
        (block
         (i32.store
          (get_local $0)
          (i32.load
           (get_local $1)
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 4)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 12)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 12)
           )
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 16)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $0)
       (i32.load16_u
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    (return)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        (i32.and
         (get_local $0)
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      (block
       (set_local $3
        (i32.load
         (get_local $1)
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 3)
        )
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.ge_u
           (get_local $2)
           (i32.const 17)
          )
          (block
           (block
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.store
             (get_local $0)
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 4)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 8)
             )
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 12)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $1
             (i32.add
              (get_local $1)
              (i32.const 16)
             )
            )
            (set_local $0
             (i32.add
              (get_local $0)
              (i32.const 16)
             )
            )
            (set_local $2
             (i32.sub
              (get_local $2)
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       (br $break|2)
      )
     )
     (block
      (set_local $3
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 2)
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 18)
         )
         (block
          (block
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.store
            (get_local $0)
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 4)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 12)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 16)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 16)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      (br $break|2)
     )
    )
    (block
     (set_local $3
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (block $break|5
      (loop $continue|5
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 19)
        )
        (block
         (block
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.store
           (get_local $0)
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 4)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 8)
           )
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 12)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $1
           (i32.add
            (get_local $1)
            (i32.const 16)
           )
          )
          (set_local $0
           (i32.add
            (get_local $0)
            (i32.const 16)
           )
          )
          (set_local $2
           (i32.sub
            (get_local $2)
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     (br $break|2)
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 8)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 4)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 2)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (i32.store8
    (block (result i32)
     (set_local $5
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    (i32.load8_u
     (block (result i32)
      (set_local $5
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/memory/memmove (; 15 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
    (get_local $3)
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/memory/memcpy
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (return)
   )
  )
  (if
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|0
       (loop $continue|0
        (if
         (i32.and
          (get_local $0)
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
           (i32.store8
            (block (result i32)
             (set_local $3
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            (i32.load8_u
             (block (result i32)
              (set_local $3
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $3)
                (i32.const 1)
               )
              )
              (get_local $3)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      (block $break|1
       (loop $continue|1
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (i64.store
            (get_local $0)
            (i64.load
             (get_local $1)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    (block $break|2
     (loop $continue|2
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (block (result i32)
           (set_local $3
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          (i32.load8_u
           (block (result i32)
            (set_local $3
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $3)
              (i32.const 1)
             )
            )
            (get_local $3)
           )
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|3
       (loop $continue|3
        (if
         (i32.and
          (i32.add
           (get_local $0)
           (get_local $2)
          )
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (i32.store8
            (i32.add
             (get_local $0)
             (tee_local $2
              (i32.sub
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            (i32.load8_u
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (i64.store
            (i32.add
             (get_local $0)
             (get_local $2)
            )
            (i64.load
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    (block $break|5
     (loop $continue|5
      (if
       (get_local $2)
       (block
        (i32.store8
         (i32.add
          (get_local $0)
          (tee_local $2
           (i32.sub
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         (i32.load8_u
          (i32.add
           (get_local $1)
           (get_local $2)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/memory/memory.copy (; 16 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/memory/memmove
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/internal/string/repeatUnsafe (; 17 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (set_local $4
   (i32.load
    (get_local $2)
   )
  )
  (block $break|0
   (block $case5|0
    (block $case4|0
     (block $case3|0
      (block $case2|0
       (block $case1|0
        (block $case0|0
         (set_local $5
          (get_local $4)
         )
         (br_if $case0|0
          (i32.eq
           (get_local $5)
           (i32.const 0)
          )
         )
         (br_if $case1|0
          (i32.eq
           (get_local $5)
           (i32.const 1)
          )
         )
         (br_if $case2|0
          (i32.eq
           (get_local $5)
           (i32.const 2)
          )
         )
         (br_if $case3|0
          (i32.eq
           (get_local $5)
           (i32.const 3)
          )
         )
         (br_if $case4|0
          (i32.eq
           (get_local $5)
           (i32.const 4)
          )
         )
         (br $case5|0)
        )
        (br $break|0)
       )
       (block
        (set_local $5
         (i32.load16_u offset=4
          (get_local $2)
         )
        )
        (set_local $6
         (i32.add
          (get_local $0)
          (i32.shl
           (get_local $1)
           (i32.const 1)
          )
         )
        )
        (block $break|1
         (set_local $7
          (i32.const 0)
         )
         (loop $repeat|1
          (br_if $break|1
           (i32.eqz
            (i32.lt_s
             (get_local $7)
             (get_local $3)
            )
           )
          )
          (i32.store16 offset=4
           (i32.add
            (get_local $6)
            (i32.shl
             (get_local $7)
             (i32.const 1)
            )
           )
           (get_local $5)
          )
          (set_local $7
           (i32.add
            (get_local $7)
            (i32.const 1)
           )
          )
          (br $repeat|1)
         )
        )
        (br $break|0)
       )
      )
      (block
       (set_local $6
        (i32.load offset=4
         (get_local $2)
        )
       )
       (set_local $5
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $1)
          (i32.const 1)
         )
        )
       )
       (block $break|2
        (set_local $7
         (i32.const 0)
        )
        (loop $repeat|2
         (br_if $break|2
          (i32.eqz
           (i32.lt_s
            (get_local $7)
            (get_local $3)
           )
          )
         )
         (i32.store offset=4
          (i32.add
           (get_local $5)
           (i32.shl
            (get_local $7)
            (i32.const 2)
           )
          )
          (get_local $6)
         )
         (set_local $7
          (i32.add
           (get_local $7)
           (i32.const 1)
          )
         )
         (br $repeat|2)
        )
       )
       (br $break|0)
      )
     )
     (block
      (set_local $5
       (i32.load offset=4
        (get_local $2)
       )
      )
      (set_local $6
       (i32.load16_u offset=8
        (get_local $2)
       )
      )
      (set_local $7
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (block $break|3
       (set_local $8
        (i32.const 0)
       )
       (loop $repeat|3
        (br_if $break|3
         (i32.eqz
          (i32.lt_s
           (get_local $8)
           (get_local $3)
          )
         )
        )
        (block
         (i32.store offset=4
          (i32.add
           (get_local $7)
           (i32.shl
            (get_local $8)
            (i32.const 2)
           )
          )
          (get_local $5)
         )
         (i32.store16 offset=8
          (i32.add
           (get_local $7)
           (i32.shl
            (get_local $8)
            (i32.const 1)
           )
          )
          (get_local $6)
         )
        )
        (set_local $8
         (i32.add
          (get_local $8)
          (i32.const 1)
         )
        )
        (br $repeat|3)
       )
      )
      (br $break|0)
     )
    )
    (block
     (set_local $9
      (i64.load offset=4
       (get_local $2)
      )
     )
     (set_local $7
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $1)
        (i32.const 1)
       )
      )
     )
     (block $break|4
      (set_local $6
       (i32.const 0)
      )
      (loop $repeat|4
       (br_if $break|4
        (i32.eqz
         (i32.lt_s
          (get_local $6)
          (get_local $3)
         )
        )
       )
       (i64.store offset=4
        (i32.add
         (get_local $7)
         (i32.shl
          (get_local $6)
          (i32.const 3)
         )
        )
        (get_local $9)
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (br $repeat|4)
      )
     )
     (br $break|0)
    )
   )
   (block
    (set_local $7
     (i32.shl
      (get_local $4)
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.add
       (get_local $0)
       (get_global $~lib/internal/string/HEADER_SIZE)
      )
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $2)
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
    )
    (block $break|5
     (block
      (set_local $8
       (i32.const 0)
      )
      (set_local $10
       (i32.mul
        (get_local $7)
        (get_local $3)
       )
      )
     )
     (loop $repeat|5
      (br_if $break|5
       (i32.eqz
        (i32.lt_s
         (get_local $8)
         (get_local $10)
        )
       )
      )
      (call $~lib/memory/memory.copy
       (i32.add
        (get_local $6)
        (get_local $8)
       )
       (get_local $5)
       (get_local $7)
      )
      (set_local $8
       (i32.add
        (get_local $8)
        (get_local $7)
       )
      )
      (br $repeat|5)
     )
    )
    (br $break|0)
   )
  )
 )
 (func $~lib/string/String#padStart (; 18 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $2)
   )
  )
  (if
   (if (result i32)
    (tee_local $5
     (i32.lt_s
      (get_local $1)
      (get_local $3)
     )
    )
    (get_local $5)
    (i32.eqz
     (get_local $4)
    )
   )
   (return
    (get_local $0)
   )
  )
  (set_local $6
   (i32.sub
    (get_local $1)
    (get_local $3)
   )
  )
  (set_local $7
   (call $~lib/internal/string/allocate
    (get_local $1)
   )
  )
  (if
   (i32.gt_s
    (get_local $6)
    (get_local $4)
   )
   (block
    (set_local $5
     (i32.div_s
      (i32.sub
       (get_local $6)
       (i32.const 1)
      )
      (get_local $4)
     )
    )
    (set_local $8
     (i32.mul
      (get_local $5)
      (get_local $4)
     )
    )
    (set_local $9
     (i32.sub
      (get_local $6)
      (get_local $8)
     )
    )
    (call $~lib/internal/string/repeatUnsafe
     (get_local $7)
     (i32.const 0)
     (get_local $2)
     (get_local $5)
    )
    (if
     (get_local $9)
     (block $~lib/internal/string/copyUnsafe|inlined.0
      (set_local $10
       (i32.const 0)
      )
      (call $~lib/memory/memory.copy
       (i32.add
        (i32.add
         (get_local $7)
         (i32.shl
          (get_local $8)
          (i32.const 1)
         )
        )
        (get_global $~lib/internal/string/HEADER_SIZE)
       )
       (i32.add
        (i32.add
         (get_local $2)
         (i32.shl
          (get_local $10)
          (i32.const 1)
         )
        )
        (get_global $~lib/internal/string/HEADER_SIZE)
       )
       (i32.shl
        (get_local $9)
        (i32.const 1)
       )
      )
     )
    )
   )
   (block $~lib/internal/string/copyUnsafe|inlined.1
    (set_local $9
     (i32.const 0)
    )
    (set_local $8
     (i32.const 0)
    )
    (call $~lib/memory/memory.copy
     (i32.add
      (i32.add
       (get_local $7)
       (i32.shl
        (get_local $9)
        (i32.const 1)
       )
      )
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
     (i32.add
      (i32.add
       (get_local $2)
       (i32.shl
        (get_local $8)
        (i32.const 1)
       )
      )
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
     (i32.shl
      (get_local $6)
      (i32.const 1)
     )
    )
   )
  )
  (if
   (get_local $3)
   (block $~lib/internal/string/copyUnsafe|inlined.2
    (set_local $8
     (i32.const 0)
    )
    (call $~lib/memory/memory.copy
     (i32.add
      (i32.add
       (get_local $7)
       (i32.shl
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
     (i32.add
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $8)
        (i32.const 1)
       )
      )
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
   )
  )
  (get_local $7)
 )
 (func $~lib/string/String#padStart|trampoline (; 19 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 112)
   )
  )
  (call $~lib/string/String#padStart
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#padEnd (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $2)
   )
  )
  (if
   (if (result i32)
    (tee_local $5
     (i32.lt_s
      (get_local $1)
      (get_local $3)
     )
    )
    (get_local $5)
    (i32.eqz
     (get_local $4)
    )
   )
   (return
    (get_local $0)
   )
  )
  (set_local $6
   (i32.sub
    (get_local $1)
    (get_local $3)
   )
  )
  (set_local $7
   (call $~lib/internal/string/allocate
    (get_local $1)
   )
  )
  (if
   (get_local $3)
   (block $~lib/internal/string/copyUnsafe|inlined.3
    (set_local $5
     (i32.const 0)
    )
    (set_local $8
     (i32.const 0)
    )
    (call $~lib/memory/memory.copy
     (i32.add
      (i32.add
       (get_local $7)
       (i32.shl
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
     (i32.add
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $8)
        (i32.const 1)
       )
      )
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
   )
  )
  (if
   (i32.gt_s
    (get_local $6)
    (get_local $4)
   )
   (block
    (set_local $8
     (i32.div_s
      (i32.sub
       (get_local $6)
       (i32.const 1)
      )
      (get_local $4)
     )
    )
    (set_local $5
     (i32.mul
      (get_local $8)
      (get_local $4)
     )
    )
    (set_local $9
     (i32.sub
      (get_local $6)
      (get_local $5)
     )
    )
    (call $~lib/internal/string/repeatUnsafe
     (get_local $7)
     (get_local $3)
     (get_local $2)
     (get_local $8)
    )
    (if
     (get_local $9)
     (block $~lib/internal/string/copyUnsafe|inlined.4
      (set_local $10
       (i32.add
        (get_local $5)
        (get_local $3)
       )
      )
      (set_local $11
       (i32.const 0)
      )
      (call $~lib/memory/memory.copy
       (i32.add
        (i32.add
         (get_local $7)
         (i32.shl
          (get_local $10)
          (i32.const 1)
         )
        )
        (get_global $~lib/internal/string/HEADER_SIZE)
       )
       (i32.add
        (i32.add
         (get_local $2)
         (i32.shl
          (get_local $11)
          (i32.const 1)
         )
        )
        (get_global $~lib/internal/string/HEADER_SIZE)
       )
       (i32.shl
        (get_local $9)
        (i32.const 1)
       )
      )
     )
    )
   )
   (block $~lib/internal/string/copyUnsafe|inlined.5
    (set_local $9
     (i32.const 0)
    )
    (call $~lib/memory/memory.copy
     (i32.add
      (i32.add
       (get_local $7)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
     (i32.add
      (i32.add
       (get_local $2)
       (i32.shl
        (get_local $9)
        (i32.const 1)
       )
      )
      (get_global $~lib/internal/string/HEADER_SIZE)
     )
     (i32.shl
      (get_local $6)
      (i32.const 1)
     )
    )
   )
  )
  (get_local $7)
 )
 (func $~lib/string/String#padEnd|trampoline (; 21 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 112)
   )
  )
  (call $~lib/string/String#padEnd
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#lastIndexOf (; 22 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 72)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $4)
   )
   (return
    (get_local $3)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const -1)
   )
  )
  (set_local $9
   (block $~lib/internal/string/clamp<isize>|inlined.3 (result i32)
    (set_local $5
     (i32.const 0)
    )
    (set_local $6
     (i32.sub
      (get_local $3)
      (get_local $4)
     )
    )
    (select
     (tee_local $7
      (select
       (tee_local $7
        (get_local $2)
       )
       (tee_local $8
        (get_local $5)
       )
       (i32.gt_s
        (get_local $7)
        (get_local $8)
       )
      )
     )
     (tee_local $8
      (get_local $6)
     )
     (i32.lt_s
      (get_local $7)
      (get_local $8)
     )
    )
   )
  )
  (block $break|0
   (set_local $6
    (get_local $9)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.ge_s
       (get_local $6)
       (i32.const 0)
      )
     )
    )
    (if
     (i32.eqz
      (call $~lib/internal/string/compareUnsafe
       (get_local $0)
       (get_local $6)
       (get_local $1)
       (i32.const 0)
       (get_local $4)
      )
     )
     (return
      (get_local $6)
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const -1)
 )
 (func $~lib/string/String#lastIndexOf|trampoline (; 23 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (get_global $~lib/builtins/i32.MAX_VALUE)
   )
  )
  (call $~lib/string/String#lastIndexOf
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $std/string/getString (; 24 ;) (type $i) (result i32)
  (get_global $std/string/str)
 )
 (func $~lib/internal/string/parse<f64> (; 25 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $3
   (get_local $0)
  )
  (set_local $4
   (i32.load16_u offset=4
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
   (block
    (if
     (i32.eqz
      (tee_local $2
       (i32.sub
        (get_local $2)
        (i32.const 1)
       )
      )
     )
     (return
      (f64.const nan:0x8000000000000)
     )
    )
    (set_local $4
     (i32.load16_u offset=4
      (tee_local $3
       (i32.add
        (get_local $3)
        (i32.const 2)
       )
      )
     )
    )
    (set_local $5
     (f64.const -1)
    )
   )
   (if
    (i32.eq
     (get_local $4)
     (get_global $~lib/internal/string/CharCode.PLUS)
    )
    (block
     (if
      (i32.eqz
       (tee_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (return
       (f64.const nan:0x8000000000000)
      )
     )
     (set_local $4
      (i32.load16_u offset=4
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $5
      (f64.const 1)
     )
    )
    (set_local $5
     (f64.const 1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (if
    (if (result i32)
     (tee_local $6
      (i32.eq
       (get_local $4)
       (get_global $~lib/internal/string/CharCode._0)
      )
     )
     (i32.gt_s
      (get_local $2)
      (i32.const 2)
     )
     (get_local $6)
    )
    (block $break|0
     (block $case6|0
      (block $case5|0
       (block $case4|0
        (block $case3|0
         (block $case2|0
          (block $case1|0
           (block $case0|0
            (set_local $6
             (i32.load16_u offset=4
              (i32.add
               (get_local $3)
               (i32.const 2)
              )
             )
            )
            (br_if $case0|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.B)
             )
            )
            (br_if $case1|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.b)
             )
            )
            (br_if $case2|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.O)
             )
            )
            (br_if $case3|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.o)
             )
            )
            (br_if $case4|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.X)
             )
            )
            (br_if $case5|0
             (i32.eq
              (get_local $6)
              (get_global $~lib/internal/string/CharCode.x)
             )
            )
            (br $case6|0)
           )
          )
          (block
           (set_local $3
            (i32.add
             (get_local $3)
             (i32.const 4)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 2)
            )
           )
           (set_local $1
            (i32.const 2)
           )
           (br $break|0)
          )
         )
        )
        (block
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 4)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 2)
          )
         )
         (set_local $1
          (i32.const 8)
         )
         (br $break|0)
        )
       )
      )
      (block
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 4)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 2)
        )
       )
       (set_local $1
        (i32.const 16)
       )
       (br $break|0)
      )
     )
     (set_local $1
      (i32.const 10)
     )
    )
    (set_local $1
     (i32.const 10)
    )
   )
   (if
    (if (result i32)
     (tee_local $6
      (i32.lt_s
       (get_local $1)
       (i32.const 2)
      )
     )
     (get_local $6)
     (i32.gt_s
      (get_local $1)
      (i32.const 36)
     )
    )
    (return
     (f64.const nan:0x8000000000000)
    )
   )
  )
  (set_local $7
   (f64.const 0)
  )
  (block $break|1
   (loop $continue|1
    (if
     (block (result i32)
      (set_local $6
       (get_local $2)
      )
      (set_local $2
       (i32.sub
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (block
      (block
       (set_local $4
        (i32.load16_u offset=4
         (get_local $3)
        )
       )
       (if
        (if (result i32)
         (tee_local $6
          (i32.ge_s
           (get_local $4)
           (get_global $~lib/internal/string/CharCode._0)
          )
         )
         (i32.le_s
          (get_local $4)
          (get_global $~lib/internal/string/CharCode._9)
         )
         (get_local $6)
        )
        (set_local $4
         (i32.sub
          (get_local $4)
          (get_global $~lib/internal/string/CharCode._0)
         )
        )
        (if
         (if (result i32)
          (tee_local $6
           (i32.ge_s
            (get_local $4)
            (get_global $~lib/internal/string/CharCode.A)
           )
          )
          (i32.le_s
           (get_local $4)
           (get_global $~lib/internal/string/CharCode.Z)
          )
          (get_local $6)
         )
         (set_local $4
          (i32.sub
           (get_local $4)
           (i32.sub
            (get_global $~lib/internal/string/CharCode.A)
            (i32.const 10)
           )
          )
         )
         (if
          (if (result i32)
           (tee_local $6
            (i32.ge_s
             (get_local $4)
             (get_global $~lib/internal/string/CharCode.a)
            )
           )
           (i32.le_s
            (get_local $4)
            (get_global $~lib/internal/string/CharCode.z)
           )
           (get_local $6)
          )
          (set_local $4
           (i32.sub
            (get_local $4)
            (i32.sub
             (get_global $~lib/internal/string/CharCode.a)
             (i32.const 10)
            )
           )
          )
          (br $break|1)
         )
        )
       )
       (if
        (i32.ge_s
         (get_local $4)
         (get_local $1)
        )
        (br $break|1)
       )
       (set_local $7
        (f64.add
         (f64.mul
          (get_local $7)
          (f64.convert_s/i32
           (get_local $1)
          )
         )
         (f64.convert_s/i32
          (get_local $4)
         )
        )
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  (f64.mul
   (get_local $5)
   (get_local $7)
  )
 )
 (func $~lib/string/parseInt (; 26 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (call $~lib/internal/string/parse<f64>
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/string/parseFloat (; 27 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $2
   (get_local $0)
  )
  (set_local $3
   (i32.load16_u offset=4
    (get_local $2)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
   (block
    (if
     (i32.eqz
      (tee_local $1
       (i32.sub
        (get_local $1)
        (i32.const 1)
       )
      )
     )
     (return
      (f64.const nan:0x8000000000000)
     )
    )
    (set_local $3
     (i32.load16_u offset=4
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 2)
       )
      )
     )
    )
    (set_local $4
     (f64.const -1)
    )
   )
   (if
    (i32.eq
     (get_local $3)
     (get_global $~lib/internal/string/CharCode.PLUS)
    )
    (block
     (if
      (i32.eqz
       (tee_local $1
        (i32.sub
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (return
       (f64.const nan:0x8000000000000)
      )
     )
     (set_local $3
      (i32.load16_u offset=4
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $4
      (f64.const 1)
     )
    )
    (set_local $4
     (f64.const 1)
    )
   )
  )
  (set_local $5
   (f64.const 0)
  )
  (block $break|0
   (loop $continue|0
    (if
     (block (result i32)
      (set_local $6
       (get_local $1)
      )
      (set_local $1
       (i32.sub
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (block
      (block
       (set_local $3
        (i32.load16_u offset=4
         (get_local $2)
        )
       )
       (if
        (i32.eq
         (get_local $3)
         (get_global $~lib/internal/string/CharCode.DOT)
        )
        (block
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 2)
          )
         )
         (set_local $7
          (f64.const 0.1)
         )
         (block $break|1
          (loop $continue|1
           (if
            (block (result i32)
             (set_local $6
              (get_local $1)
             )
             (set_local $1
              (i32.sub
               (get_local $6)
               (i32.const 1)
              )
             )
             (get_local $6)
            )
            (block
             (block
              (set_local $3
               (i32.load16_u offset=4
                (get_local $2)
               )
              )
              (if
               (if (result i32)
                (tee_local $6
                 (i32.eq
                  (get_local $3)
                  (get_global $~lib/internal/string/CharCode.E)
                 )
                )
                (get_local $6)
                (i32.eq
                 (get_local $3)
                 (get_global $~lib/internal/string/CharCode.e)
                )
               )
               (if
                (i32.eqz
                 (i32.const 0)
                )
                (block
                 (call $~lib/env/abort)
                 (unreachable)
                )
               )
              )
              (set_local $3
               (i32.sub
                (get_local $3)
                (get_global $~lib/internal/string/CharCode._0)
               )
              )
              (if
               (i32.gt_u
                (get_local $3)
                (i32.const 9)
               )
               (br $break|1)
              )
              (set_local $5
               (f64.add
                (get_local $5)
                (f64.mul
                 (f64.convert_s/i32
                  (get_local $3)
                 )
                 (get_local $7)
                )
               )
              )
              (set_local $7
               (f64.mul
                (get_local $7)
                (f64.const 0.1)
               )
              )
              (set_local $2
               (i32.add
                (get_local $2)
                (i32.const 2)
               )
              )
             )
             (br $continue|1)
            )
           )
          )
         )
         (br $break|0)
        )
       )
       (set_local $3
        (i32.sub
         (get_local $3)
         (get_global $~lib/internal/string/CharCode._0)
        )
       )
       (if
        (i32.ge_u
         (get_local $3)
         (i32.const 10)
        )
        (br $break|0)
       )
       (set_local $5
        (f64.add
         (f64.mul
          (get_local $5)
          (f64.const 10)
         )
         (f64.convert_s/i32
          (get_local $3)
         )
        )
       )
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 2)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (f64.mul
   (get_local $4)
   (get_local $5)
  )
 )
 (func $~lib/string/String#concat (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 72)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (set_local $4
   (i32.add
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (i32.const 0)
   )
   (return
    (get_global $~lib/internal/string/EMPTY)
   )
  )
  (set_local $5
   (call $~lib/internal/string/allocate
    (get_local $4)
   )
  )
  (block $~lib/internal/string/copyUnsafe|inlined.6
   (set_local $6
    (i32.const 0)
   )
   (set_local $7
    (i32.const 0)
   )
   (call $~lib/memory/memory.copy
    (i32.add
     (i32.add
      (get_local $5)
      (i32.shl
       (get_local $6)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
    (i32.add
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $7)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $~lib/internal/string/copyUnsafe|inlined.7
   (set_local $7
    (i32.const 0)
   )
   (call $~lib/memory/memory.copy
    (i32.add
     (i32.add
      (get_local $5)
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
    (i32.add
     (i32.add
      (get_local $1)
      (i32.shl
       (get_local $7)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
    (i32.shl
     (get_local $3)
     (i32.const 1)
    )
   )
  )
  (get_local $5)
 )
 (func $~lib/string/String.__concat (; 29 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 72)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/string/String.__ne (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $~lib/string/String.__eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/string/String.__gt (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (if (result i32)
    (tee_local $2
     (if (result i32)
      (tee_local $2
       (i32.eq
        (get_local $0)
        (get_local $1)
       )
      )
      (get_local $2)
      (i32.eq
       (get_local $0)
       (i32.const 0)
      )
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $4)
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $6
   (select
    (tee_local $2
     (get_local $3)
    )
    (tee_local $5
     (get_local $4)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $5)
    )
   )
  )
  (i32.gt_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $6)
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__gte (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $2
     (i32.eq
      (get_local $0)
      (i32.const 0)
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.eqz
     (get_local $4)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $4)
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $6
   (select
    (tee_local $2
     (get_local $3)
    )
    (tee_local $5
     (get_local $4)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $5)
    )
   )
  )
  (i32.ge_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $6)
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__lt (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (if (result i32)
    (tee_local $2
     (if (result i32)
      (tee_local $2
       (i32.eq
        (get_local $0)
        (get_local $1)
       )
      )
      (get_local $2)
      (i32.eq
       (get_local $0)
       (i32.const 0)
      )
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $4)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $6
   (select
    (tee_local $2
     (get_local $3)
    )
    (tee_local $5
     (get_local $4)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $5)
    )
   )
  )
  (i32.lt_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $6)
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__lte (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $2
     (i32.eq
      (get_local $0)
      (i32.const 0)
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $4)
   )
   (return
    (i32.eqz
     (get_local $3)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $6
   (select
    (tee_local $2
     (get_local $3)
    )
    (tee_local $5
     (get_local $4)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $5)
    )
   )
  )
  (i32.le_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $6)
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String#repeat (; 35 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.lt_s
      (get_local $1)
      (i32.const 0)
     )
    )
    (get_local $3)
    (i32.gt_s
     (i32.mul
      (get_local $2)
      (get_local $1)
     )
     (i32.shl
      (i32.const 1)
      (i32.const 28)
     )
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.eq
      (get_local $1)
      (i32.const 0)
     )
    )
    (get_local $3)
    (i32.eqz
     (get_local $2)
    )
   )
   (return
    (get_global $~lib/internal/string/EMPTY)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $4
   (call $~lib/internal/string/allocate
    (i32.mul
     (get_local $2)
     (get_local $1)
    )
   )
  )
  (call $~lib/internal/string/repeatUnsafe
   (get_local $4)
   (i32.const 0)
   (get_local $0)
   (get_local $1)
  )
  (get_local $4)
 )
 (func $~lib/internal/itoa/decimalCountU32 (; 36 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (i32.sub
    (i32.const 32)
    (i32.clz
     (get_local $0)
    )
   )
  )
  (set_local $2
   (i32.shr_u
    (i32.mul
     (get_local $1)
     (i32.const 1233)
    )
    (i32.const 12)
   )
  )
  (set_local $3
   (i32.load
    (block $~lib/internal/itoa/POWERS10|inlined.0 (result i32)
     (i32.const 576)
    )
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<u32_u32>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $3)
      (i32.shl
       (get_local $2)
       (i32.const 2)
      )
     )
    )
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (i32.lt_u
     (get_local $0)
     (get_local $4)
    )
   )
  )
  (i32.add
   (get_local $2)
   (i32.const 1)
  )
 )
 (func $~lib/internal/itoa/utoa32_lut (; 37 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (set_local $3
   (i32.load
    (block $~lib/internal/itoa/DIGITS|inlined.0 (result i32)
     (i32.const 648)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 10000)
     )
     (block
      (block
       (set_local $4
        (i32.div_u
         (get_local $1)
         (i32.const 10000)
        )
       )
       (set_local $5
        (i32.rem_u
         (get_local $1)
         (i32.const 10000)
        )
       )
       (set_local $1
        (get_local $4)
       )
       (set_local $6
        (i32.div_u
         (get_local $5)
         (i32.const 100)
        )
       )
       (set_local $7
        (i32.rem_u
         (get_local $5)
         (i32.const 100)
        )
       )
       (set_local $8
        (block $~lib/internal/arraybuffer/loadUnsafe<u32_u64>|inlined.0 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $6)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $9
        (block $~lib/internal/arraybuffer/loadUnsafe<u32_u64>|inlined.1 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $7)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 4)
        )
       )
       (i64.store offset=4
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $2)
          (i32.const 1)
         )
        )
        (i64.or
         (get_local $8)
         (i64.shl
          (get_local $9)
          (i64.const 32)
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 100)
   )
   (block
    (set_local $7
     (i32.div_u
      (get_local $1)
      (i32.const 100)
     )
    )
    (set_local $6
     (i32.rem_u
      (get_local $1)
      (i32.const 100)
     )
    )
    (set_local $1
     (get_local $7)
    )
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 2)
     )
    )
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<u32_u32>|inlined.1 (result i32)
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $6)
         (i32.const 2)
        )
       )
      )
     )
    )
    (i32.store offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 10)
   )
   (block
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 2)
     )
    )
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<u32_u32>|inlined.2 (result i32)
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $1)
         (i32.const 2)
        )
       )
      )
     )
    )
    (i32.store offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
   )
   (block
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (set_local $5
     (i32.add
      (get_global $~lib/internal/string/CharCode._0)
      (get_local $1)
     )
    )
    (i32.store16 offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
   )
  )
 )
 (func $~lib/internal/itoa/itoa32 (; 38 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 312)
   )
  )
  (set_local $1
   (i32.lt_s
    (get_local $0)
    (i32.const 0)
   )
  )
  (if
   (get_local $1)
   (set_local $0
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
   )
  )
  (set_local $2
   (i32.add
    (call $~lib/internal/itoa/decimalCountU32
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/internal/string/allocate
    (get_local $2)
   )
  )
  (block $~lib/internal/itoa/utoa32_core|inlined.0
   (call $~lib/internal/itoa/utoa32_lut
    (get_local $3)
    (get_local $0)
    (get_local $2)
   )
  )
  (if
   (get_local $1)
   (i32.store16 offset=4
    (get_local $3)
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
  )
  (get_local $3)
 )
 (func $~lib/internal/itoa/utoa32 (; 39 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 312)
   )
  )
  (set_local $1
   (call $~lib/internal/itoa/decimalCountU32
    (get_local $0)
   )
  )
  (set_local $2
   (call $~lib/internal/string/allocate
    (get_local $1)
   )
  )
  (block $~lib/internal/itoa/utoa32_core|inlined.1
   (call $~lib/internal/itoa/utoa32_lut
    (get_local $2)
    (get_local $0)
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/itoa/decimalCountU64 (; 40 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (set_local $1
   (i32.sub
    (i32.const 64)
    (i32.wrap/i64
     (i64.clz
      (get_local $0)
     )
    )
   )
  )
  (set_local $2
   (i32.shr_u
    (i32.mul
     (get_local $1)
     (i32.const 1233)
    )
    (i32.const 12)
   )
  )
  (set_local $3
   (i32.load
    (block $~lib/internal/itoa/POWERS10|inlined.1 (result i32)
     (i32.const 1424)
    )
   )
  )
  (set_local $5
   (block $~lib/internal/arraybuffer/loadUnsafe<u32_u64>|inlined.2 (result i64)
    (set_local $4
     (i32.sub
      (get_local $2)
      (i32.const 10)
     )
    )
    (i64.load32_u offset=8
     (i32.add
      (get_local $3)
      (i32.shl
       (get_local $4)
       (i32.const 2)
      )
     )
    )
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (i64.lt_u
     (get_local $0)
     (i64.mul
      (i64.const 10000000000)
      (get_local $5)
     )
    )
   )
  )
  (i32.add
   (get_local $2)
   (i32.const 1)
  )
 )
 (func $~lib/internal/itoa/utoa64_lut (; 41 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (set_local $3
   (i32.load
    (block $~lib/internal/itoa/DIGITS|inlined.1 (result i32)
     (i32.const 1496)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i64.ge_u
      (get_local $1)
      (i64.const 100000000)
     )
     (block
      (block
       (set_local $4
        (i64.div_u
         (get_local $1)
         (i64.const 100000000)
        )
       )
       (set_local $5
        (i32.wrap/i64
         (i64.sub
          (get_local $1)
          (i64.mul
           (get_local $4)
           (i64.const 100000000)
          )
         )
        )
       )
       (set_local $1
        (get_local $4)
       )
       (set_local $6
        (i32.div_u
         (get_local $5)
         (i32.const 10000)
        )
       )
       (set_local $7
        (i32.rem_u
         (get_local $5)
         (i32.const 10000)
        )
       )
       (set_local $8
        (i32.div_u
         (get_local $6)
         (i32.const 100)
        )
       )
       (set_local $9
        (i32.rem_u
         (get_local $6)
         (i32.const 100)
        )
       )
       (set_local $10
        (i32.div_u
         (get_local $7)
         (i32.const 100)
        )
       )
       (set_local $11
        (i32.rem_u
         (get_local $7)
         (i32.const 100)
        )
       )
       (set_local $12
        (block $~lib/internal/arraybuffer/loadUnsafe<u32_u64>|inlined.3 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $10)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $13
        (block $~lib/internal/arraybuffer/loadUnsafe<u32_u64>|inlined.4 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $11)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 4)
        )
       )
       (i64.store offset=4
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $2)
          (i32.const 1)
         )
        )
        (i64.or
         (get_local $12)
         (i64.shl
          (get_local $13)
          (i64.const 32)
         )
        )
       )
       (set_local $12
        (block $~lib/internal/arraybuffer/loadUnsafe<u32_u64>|inlined.5 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $8)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $13
        (block $~lib/internal/arraybuffer/loadUnsafe<u32_u64>|inlined.6 (result i64)
         (i64.load32_u offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $9)
            (i32.const 2)
           )
          )
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 4)
        )
       )
       (i64.store offset=4
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $2)
          (i32.const 1)
         )
        )
        (i64.or
         (get_local $12)
         (i64.shl
          (get_local $13)
          (i64.const 32)
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (call $~lib/internal/itoa/utoa32_lut
   (get_local $0)
   (i32.wrap/i64
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $~lib/internal/itoa/utoa64 (; 42 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i64.eqz
    (get_local $0)
   )
   (return
    (i32.const 312)
   )
  )
  (if
   (i64.le_u
    (get_local $0)
    (i64.extend_u/i32
     (get_global $~lib/builtins/u32.MAX_VALUE)
    )
   )
   (block
    (set_local $2
     (i32.wrap/i64
      (get_local $0)
     )
    )
    (set_local $3
     (call $~lib/internal/itoa/decimalCountU32
      (get_local $2)
     )
    )
    (set_local $1
     (call $~lib/internal/string/allocate
      (get_local $3)
     )
    )
    (block $~lib/internal/itoa/utoa32_core|inlined.2
     (call $~lib/internal/itoa/utoa32_lut
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (block
    (set_local $3
     (call $~lib/internal/itoa/decimalCountU64
      (get_local $0)
     )
    )
    (set_local $1
     (call $~lib/internal/string/allocate
      (get_local $3)
     )
    )
    (block $~lib/internal/itoa/utoa64_core|inlined.0
     (call $~lib/internal/itoa/utoa64_lut
      (get_local $1)
      (get_local $0)
      (get_local $3)
     )
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/internal/itoa/itoa64 (; 43 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i64.eqz
    (get_local $0)
   )
   (return
    (i32.const 312)
   )
  )
  (set_local $1
   (i64.lt_s
    (get_local $0)
    (i64.const 0)
   )
  )
  (if
   (get_local $1)
   (set_local $0
    (i64.sub
     (i64.const 0)
     (get_local $0)
    )
   )
  )
  (if
   (i64.le_u
    (get_local $0)
    (i64.extend_u/i32
     (get_global $~lib/builtins/u32.MAX_VALUE)
    )
   )
   (block
    (set_local $3
     (i32.wrap/i64
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (call $~lib/internal/itoa/decimalCountU32
       (get_local $3)
      )
      (get_local $1)
     )
    )
    (set_local $2
     (call $~lib/internal/string/allocate
      (get_local $4)
     )
    )
    (block $~lib/internal/itoa/utoa32_core|inlined.3
     (call $~lib/internal/itoa/utoa32_lut
      (get_local $2)
      (get_local $3)
      (get_local $4)
     )
    )
   )
   (block
    (set_local $4
     (i32.add
      (call $~lib/internal/itoa/decimalCountU64
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (set_local $2
     (call $~lib/internal/string/allocate
      (get_local $4)
     )
    )
    (block $~lib/internal/itoa/utoa64_core|inlined.1
     (call $~lib/internal/itoa/utoa64_lut
      (get_local $2)
      (get_local $0)
      (get_local $4)
     )
    )
   )
  )
  (if
   (get_local $1)
   (i32.store16 offset=4
    (get_local $2)
    (get_global $~lib/internal/string/CharCode.MINUS)
   )
  )
  (get_local $2)
 )
 (func $start (; 44 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/string/str)
     (i32.const 12)
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
     (i32.load
      (get_global $std/string/str)
     )
     (i32.const 16)
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
     (call $~lib/string/String#charCodeAt
      (get_global $std/string/str)
      (i32.const 0)
     )
     (i32.const 104)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCharCode
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCharCode
      (i32.const 54)
     )
     (i32.const 56)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCharCode
      (i32.add
       (i32.const 65536)
       (i32.const 54)
      )
     )
     (i32.const 56)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCodePoint
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCodePoint
      (i32.const 54)
     )
     (i32.const 56)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.fromCodePoint
     (i32.const 119558)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String#startsWith
     (get_global $std/string/str)
     (i32.const 64)
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
    (block (result i32)
     (set_global $~argc
      (i32.const 1)
     )
     (call $~lib/string/String#endsWith|trampoline
      (get_global $std/string/str)
      (i32.const 84)
      (i32.const 0)
     )
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String#includes
     (get_global $std/string/str)
     (i32.const 100)
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
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padStart|trampoline
       (get_global $std/string/str)
       (i32.const 0)
       (i32.const 0)
      )
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padStart|trampoline
       (get_global $std/string/str)
       (i32.const 15)
       (i32.const 0)
      )
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padStart|trampoline
       (i32.const 8)
       (i32.const 3)
       (i32.const 0)
      )
     )
     (i32.const 120)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 8)
      (i32.const 10)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 132)
      (i32.const 100)
      (i32.const 8)
     )
     (i32.const 132)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padStart|trampoline
       (i32.const 140)
       (i32.const 5)
       (i32.const 0)
      )
     )
     (i32.const 152)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 140)
      (i32.const 6)
      (i32.const 168)
     )
     (i32.const 180)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 140)
      (i32.const 8)
      (i32.const 168)
     )
     (i32.const 196)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padEnd|trampoline
       (get_global $std/string/str)
       (i32.const 0)
       (i32.const 0)
      )
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padEnd|trampoline
       (get_global $std/string/str)
       (i32.const 15)
       (i32.const 0)
      )
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padEnd|trampoline
       (i32.const 8)
       (i32.const 3)
       (i32.const 0)
      )
     )
     (i32.const 120)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 8)
      (i32.const 10)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 132)
      (i32.const 100)
      (i32.const 8)
     )
     (i32.const 132)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#padEnd|trampoline
       (i32.const 140)
       (i32.const 5)
       (i32.const 0)
      )
     )
     (i32.const 216)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 140)
      (i32.const 6)
      (i32.const 140)
     )
     (i32.const 232)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 140)
      (i32.const 8)
      (i32.const 140)
     )
     (i32.const 248)
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
     (call $~lib/string/String#indexOf
      (i32.const 8)
      (i32.const 8)
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
     (call $~lib/string/String#indexOf
      (i32.const 8)
      (i32.const 64)
      (i32.const 0)
     )
     (i32.const -1)
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
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 8)
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
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 268)
      (i32.const 0)
     )
     (i32.const 2)
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
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 276)
      (i32.const 0)
     )
     (i32.const -1)
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
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 268)
      (i32.const 2)
     )
     (i32.const 2)
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
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 268)
      (i32.const 3)
     )
     (i32.const -1)
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
     (call $~lib/string/String#indexOf
      (get_global $std/string/str)
      (i32.const 284)
      (i32.const -1)
     )
     (i32.const 2)
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
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (i32.const 8)
       (i32.const 8)
       (i32.const 0)
      )
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
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (i32.const 8)
       (i32.const 64)
       (i32.const 0)
      )
     )
     (i32.const -1)
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
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (get_global $std/string/str)
       (i32.const 8)
       (i32.const 0)
      )
     )
     (i32.load
      (get_global $std/string/str)
     )
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
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (get_global $std/string/str)
       (i32.const 268)
       (i32.const 0)
      )
     )
     (i32.const 2)
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
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (get_global $std/string/str)
       (i32.const 276)
       (i32.const 0)
      )
     )
     (i32.const -1)
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
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $~lib/string/String#lastIndexOf|trampoline
       (get_global $std/string/str)
       (i32.const 296)
       (i32.const 0)
      )
     )
     (i32.const 15)
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
     (call $~lib/string/String#lastIndexOf
      (get_global $std/string/str)
      (i32.const 268)
      (i32.const 2)
     )
     (i32.const 2)
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
     (call $~lib/string/String#lastIndexOf
      (get_global $std/string/str)
      (i32.const 268)
      (i32.const 3)
     )
     (i32.const 2)
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
     (call $~lib/string/String#lastIndexOf
      (get_global $std/string/str)
      (i32.const 284)
      (i32.const -1)
     )
     (i32.const -1)
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
     (call $~lib/string/String#lastIndexOf
      (get_global $std/string/str)
      (i32.const 304)
      (i32.const 0)
     )
     (i32.const -1)
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
     (call $~lib/string/String#lastIndexOf
      (get_global $std/string/str)
      (i32.const 64)
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
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 312)
      (i32.const 0)
     )
     (f64.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 320)
      (i32.const 0)
     )
     (f64.const 1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 328)
      (i32.const 0)
     )
     (f64.const 5)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 344)
      (i32.const 0)
     )
     (f64.const 455)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 360)
      (i32.const 0)
     )
     (f64.const 3855)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 376)
      (i32.const 0)
     )
     (f64.const 3855)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 392)
      (i32.const 0)
     )
     (f64.const 11)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseInt
      (i32.const 404)
      (i32.const 0)
     )
     (f64.const 1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 312)
     )
     (f64.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 320)
     )
     (f64.const 1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 416)
     )
     (f64.const 0.1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 428)
     )
     (f64.const 0.25)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 440)
     )
     (f64.const 0.1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_global $std/string/c
   (call $~lib/string/String.__concat
    (i32.const 132)
    (i32.const 460)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (get_global $std/string/c)
     (i32.const 468)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (get_global $std/string/c)
     (i32.const 132)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (i32.const 8)
     (get_global $std/string/nullStr)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 460)
     (i32.const 132)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 476)
     (i32.const 132)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 476)
     (i32.const 484)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 476)
     (i32.const 468)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 476)
      (i32.const 468)
     )
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 460)
      (get_global $std/string/nullStr)
     )
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (get_global $std/string/nullStr)
      (i32.const 460)
     )
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 140)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lt
     (i32.const 8)
     (i32.const 140)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 140)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lte
     (i32.const 8)
     (i32.const 140)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 140)
      (i32.const 8)
     )
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__gt
      (i32.const 8)
      (i32.const 140)
     )
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 8)
      (i32.const 8)
     )
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__gt
      (i32.const 8)
      (i32.const 8)
     )
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lte
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_global $std/string/a
   (call $~lib/string/String.fromCodePoint
    (i32.const 65377)
   )
  )
  (set_global $std/string/b
   (call $~lib/string/String.__concat
    (call $~lib/string/String.fromCodePoint
     (i32.const 55296)
    )
    (call $~lib/string/String.fromCodePoint
     (i32.const 56322)
    )
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (get_global $std/string/a)
     (get_global $std/string/b)
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
     (i32.load
      (i32.const 168)
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 8)
      (i32.const 100)
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 132)
      (i32.const 0)
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 132)
      (i32.const 1)
     )
     (i32.const 132)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 132)
      (i32.const 2)
     )
     (i32.const 484)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 132)
      (i32.const 3)
     )
     (i32.const 492)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 468)
      (i32.const 4)
     )
     (i32.const 504)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 132)
      (i32.const 5)
     )
     (i32.const 524)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 132)
      (i32.const 6)
     )
     (i32.const 540)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 132)
      (i32.const 7)
     )
     (i32.const 556)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 0)
     )
     (i32.const 312)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1)
     )
     (i32.const 320)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 8)
     )
     (i32.const 1168)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 123)
     )
     (i32.const 168)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const -1000)
     )
     (i32.const 1176)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1234)
     )
     (i32.const 1192)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 12345)
     )
     (i32.const 1204)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 123456)
     )
     (i32.const 1220)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1111111)
     )
     (i32.const 1236)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1234567)
     )
     (i32.const 1256)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 2147483646)
     )
     (i32.const 1276)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 2147483647)
     )
     (i32.const 1300)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const -2147483648)
     )
     (i32.const 1324)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const -1)
     )
     (i32.const 1352)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const 0)
     )
     (i32.const 312)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const 1000)
     )
     (i32.const 1360)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const 2147483647)
     )
     (i32.const 1300)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const -2147483648)
     )
     (i32.const 1372)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (get_global $~lib/builtins/u32.MAX_VALUE)
     )
     (i32.const 1396)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 0)
     )
     (i32.const 312)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 1234)
     )
     (i32.const 1192)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 99999999)
     )
     (i32.const 2016)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 100000000)
     )
     (i32.const 2036)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 4294967295)
     )
     (i32.const 1396)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 68719476735)
     )
     (i32.const 2060)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 868719476735)
     )
     (i32.const 2088)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 999868719476735)
     )
     (i32.const 2116)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 9999868719476735)
     )
     (i32.const 2152)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 19999868719476735)
     )
     (i32.const 2188)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (get_global $~lib/builtins/u64.MAX_VALUE)
     )
     (i32.const 2228)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const 0)
     )
     (i32.const 312)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -1234)
     )
     (i32.const 2272)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const 4294967295)
     )
     (i32.const 1396)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -4294967295)
     )
     (i32.const 2288)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const 68719476735)
     )
     (i32.const 2060)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -68719476735)
     )
     (i32.const 2316)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -868719476735)
     )
     (i32.const 2344)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -999868719476735)
     )
     (i32.const 2376)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -19999868719476735)
     )
     (i32.const 2412)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (get_global $~lib/builtins/i64.MAX_VALUE)
     )
     (i32.const 2452)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (get_global $~lib/builtins/i64.MIN_VALUE)
     )
     (i32.const 2496)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
 )
)
