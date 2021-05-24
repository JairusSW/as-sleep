(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_f64 (func (result f64)))
 (import "Date" "now" (func $~lib/bindings/Date/now (result f64)))
 (import "index" "_log" (func $~lib/as-console/index/_log (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 236))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16620))
 (global $~lib/memory/__heap_base i32 (i32.const 16620))
 (memory $0 1)
 (data (i32.const 12) "L\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00<\00\00\00S\00t\00a\00r\00t\00i\00n\00g\00 \00s\00l\00e\00e\00p\00 \00f\00o\00r\00 \00o\00n\00e\00 \00s\00e\00c\00o\00n\00d\00.\00")
 (data (i32.const 92) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00S\00l\00e\00p\00t\00 \00f\00o\00r\00 \00o\00n\00e\00 \00s\00e\00c\00o\00n\00d\00.\00\00\00")
 (data (i32.const 156) "\1c\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 188) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00w\00a\00s\00 \00t\00h\00i\00s\00 \00s\00y\00n\00c\00?\00")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $assembly/index/test~anonymous|0)
 (export "sleep" (func $assembly/index/sleep))
 (export "test" (func $assembly/index/test))
 (export "memory" (memory $0))
 (export "sleepCallback" (func $export:assembly/index/sleepCallback))
 (func $assembly/index/sleep (param $0 i64)
  (local $1 i64)
  (local $2 i32)
  call $~lib/bindings/Date/now
  i64.trunc_f64_s
  local.get $0
  i64.add
  local.set $1
  loop $while-continue|0
   local.get $1
   call $~lib/bindings/Date/now
   i64.trunc_f64_s
   i64.gt_s
   local.set $2
   local.get $2
   if
    br $while-continue|0
   end
  end
 )
 (func $assembly/index/sleepCallback (param $0 i32) (param $1 i64)
  (local $2 i64)
  (local $3 i32)
  call $~lib/bindings/Date/now
  i64.trunc_f64_s
  local.get $1
  i64.add
  local.set $2
  loop $while-continue|0
   local.get $2
   call $~lib/bindings/Date/now
   i64.trunc_f64_s
   i64.gt_s
   local.set $3
   local.get $3
   if
    br $while-continue|0
   end
  end
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load
  call_indirect $0 (type $none_=>_none)
 )
 (func $~lib/as-console/index/console.log<~lib/string/String> (param $0 i32)
  i32.const 1
  drop
  local.get $0
  call $~lib/as-console/index/_log
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 16640
   i32.const 16688
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $assembly/index/test~anonymous|0
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 112
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/as-console/index/console.log<~lib/string/String>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/test
  (local $0 i64)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 32
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/as-console/index/console.log<~lib/string/String>
  call $~lib/bindings/Date/now
  i64.trunc_f64_s
  local.set $0
  i32.const 176
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i64.const 1000
  call $assembly/index/sleepCallback
  i32.const 208
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/as-console/index/console.log<~lib/string/String>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/index/sleepCallback (param $0 i32) (param $1 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $assembly/index/sleepCallback
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
