(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i32_i64_i32_=>_none (func (param i32 i32 i64 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_i32_i32_i64_i64_i64_i64_i64_i64_i64_=>_i32 (func (param i32 i32 i32 i64 i64 i64 i64 i64 i64 i64) (result i32)))
 (type $i32_i32_i64_i64_i64_i64_i64_=>_i32 (func (param i32 i32 i64 i64 i64 i64 i64) (result i32)))
 (type $i32_i64_i32_i32_i32_i32_i64_i64_i32_i64_=>_i32 (func (param i32 i64 i32 i32 i32 i32 i64 i64 i32 i64) (result i32)))
 (type $i32_i64_i32_i64_i32_i64_i64_=>_i32 (func (param i32 i64 i32 i64 i32 i64 i64) (result i32)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i32_i64_i64_=>_none (func (param i32 i64 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "db_next_i64" (func $~lib/as-chain/env/db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_previous_i64" (func $~lib/as-chain/env/db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_upperbound_i64" (func $~lib/as-chain/env/db_upperbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_end_i64" (func $~lib/as-chain/env/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "is_account" (func $~lib/as-chain/env/is_account (param i64) (result i32)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (import "env" "prints_l" (func $~lib/as-chain/env/prints_l (param i32 i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~lib/proton-tsc/rng/rng.inline/RNG_CONTRACT (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $assembly/index/XPR_SYMBOL (mut i32) (i32.const 0))
 (global $assembly/index/TOKEN_CONTRACT (mut i32) (i32.const 0))
 (global $assembly/index/ConfigDB i32 (i32.const 9))
 (global $assembly/index/Config i32 (i32.const 10))
 (global $assembly/index/GameDB i32 (i32.const 26))
 (global $assembly/index/Game i32 (i32.const 27))
 (global $assembly/index/SpinResultDB i32 (i32.const 31))
 (global $assembly/index/SpinResult i32 (i32.const 32))
 (global $assembly/index/PlayerStatsDB i32 (i32.const 36))
 (global $assembly/index/PlayerStats i32 (i32.const 37))
 (global $assembly/index/XprSlots i32 (i32.const 41))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) "<")
 (data (i32.const 1084) " \00\00\00.12345abcdefghijklmnopqrstuvwxyz")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\04\00\00\00\10\00\00\00@\04\00\00@\04\00\00 \00\00\00 ")
 (data (i32.const 1180) "\dc")
 (data (i32.const 1192) "\01\00\00\00\cc\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00i\00f\00 \00y\00o\00u\00 \00w\00i\00s\00h\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 1404) "\dc")
 (data (i32.const 1416) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1628) "\dc")
 (data (i32.const 1640) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00r\00e\00m\00o\00v\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1852) "\8c")
 (data (i32.const 1864) "\01\00\00\00t\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00n\00e\00x\00t\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 1996) "\8c")
 (data (i32.const 2008) "\01\00\00\00|\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00p\00r\00e\00v\00i\00o\00u\00s\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 2140) "|")
 (data (i32.const 2152) "\01\00\00\00f\00\00\00n\00e\00x\00t\00 \00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00i\00s\00 \00a\00t\00 \00a\00u\00t\00o\00i\00n\00c\00r\00e\00m\00e\00n\00t\00 \00l\00i\00m\00i\00t")
 (data (i32.const 2268) "<")
 (data (i32.const 2280) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 2332) "<")
 (data (i32.const 2344) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2396) "\1c")
 (data (i32.const 2408) "\01\00\00\00\06\00\00\00X\00P\00R")
 (data (i32.const 2428) "<")
 (data (i32.const 2440) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 2492) "L")
 (data (i32.const 2504) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 2572) "\\")
 (data (i32.const 2584) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2668) "<")
 (data (i32.const 2680) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 2732) "l")
 (data (i32.const 2744) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 2844) "L")
 (data (i32.const 2856) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2924) "L")
 (data (i32.const 2936) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3004) "<")
 (data (i32.const 3016) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 3068) "L")
 (data (i32.const 3080) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 3148) "<")
 (data (i32.const 3160) "\01\00\00\00,\00\00\00g\00e\00t\00I\00d\00x\00D\00B\00:\00 \00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x")
 (data (i32.const 3212) "\\")
 (data (i32.const 3224) "\01\00\00\00J\00\00\00i\00d\00x\00U\00p\00d\00a\00t\00e\00:\00 \00v\00a\00l\00u\00e\00 \00b\00y\00 \00p\00r\00i\00m\00a\00r\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 3308) "\1c")
 (data (i32.const 3340) "\1c")
 (data (i32.const 3372) "\1c")
 (data (i32.const 3404) "\1c")
 (data (i32.const 3436) "\1c")
 (data (i32.const 3468) "L")
 (data (i32.const 3480) "\01\00\00\008\00\00\00C\00o\00n\00t\00r\00a\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d")
 (data (i32.const 3548) "\1c")
 (data (i32.const 3560) "\01")
 (data (i32.const 3580) "\1c")
 (data (i32.const 3612) "\\")
 (data (i32.const 3624) "\01\00\00\00@\00\00\00N\00e\00w\00 \00o\00w\00n\00e\00r\00 \00a\00c\00c\00o\00u\00n\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 3708) "<")
 (data (i32.const 3720) "\01\00\00\00\"\00\00\00O\00n\00l\00y\00 \00X\00P\00R\00 \00a\00c\00c\00e\00p\00t\00e\00d")
 (data (i32.const 3772) "\1c")
 (data (i32.const 3784) "\01\00\00\00\08\00\00\00s\00p\00i\00n")
 (data (i32.const 3804) "<")
 (data (i32.const 3816) "\01\00\00\00$\00\00\00C\00o\00n\00t\00r\00a\00c\00t\00 \00i\00s\00 \00p\00a\00u\00s\00e\00d")
 (data (i32.const 3868) "L")
 (data (i32.const 3880) "\01\00\00\002\00\00\00M\00i\00n\00i\00m\00u\00m\00 \00b\00e\00t\00 \00i\00s\00 \001\00.\000\000\000\000\00 \00X\00P\00R")
 (data (i32.const 3948) "L")
 (data (i32.const 3960) "\01\00\00\00:\00\00\00M\00a\00x\00i\00m\00u\00m\00 \00b\00e\00t\00 \00i\00s\00 \001\00,\000\000\000\00.\000\000\000\000\00 \00X\00P\00R")
 (data (i32.const 4028) "\\")
 (data (i32.const 4040) "\01\00\00\00J\00\00\00Y\00o\00u\00 \00h\00a\00v\00e\00 \00a\00 \00p\00e\00n\00d\00i\00n\00g\00 \00s\00p\00i\00n\00.\00 \00P\00l\00e\00a\00s\00e\00 \00w\00a\00i\00t\00.")
 (data (i32.const 4124) "\8c")
 (data (i32.const 4136) "\01\00\00\00t\00\00\00C\00o\00n\00t\00r\00a\00c\00t\00 \00h\00a\00s\00 \00i\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00f\00u\00n\00d\00s\00.\00 \00P\00l\00e\00a\00s\00e\00 \00t\00r\00y\00 \00a\00 \00s\00m\00a\00l\00l\00e\00r\00 \00b\00e\00t\00.")
 (data (i32.const 4268) ",")
 (data (i32.const 4280) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00:\00 ")
 (data (i32.const 4316) "\1c")
 (data (i32.const 4328) "9\00\00\00\0c\00\00\00\c0\10\00\00\00\00\00\00\f0\0d")
 (data (i32.const 4348) ",")
 (data (i32.const 4360) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00 ")
 (data (i32.const 4396) "\1c")
 (data (i32.const 4408) "9\00\00\00\0c\00\00\00\10\11\00\00\00\00\00\00\f0\0d")
 (data (i32.const 4428) ",")
 (data (i32.const 4440) "\01\00\00\00\16\00\00\00r\00e\00q\00u\00e\00s\00t\00r\00a\00n\00d")
 (data (i32.const 4476) "\1c")
 (data (i32.const 4488) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 4508) ",")
 (data (i32.const 4520) "\01\00\00\00\0e\00\00\00d\00e\00p\00o\00s\00i\00t")
 (data (i32.const 4556) "<")
 (data (i32.const 4568) "\01\00\00\00,\00\00\00D\00e\00p\00o\00s\00i\00t\00 \00r\00e\00c\00e\00i\00v\00e\00d\00 \00f\00r\00o\00m\00 ")
 (data (i32.const 4620) "\1c")
 (data (i32.const 4632) "\01\00\00\00\04\00\00\00:\00 ")
 (data (i32.const 4652) ",")
 (data (i32.const 4664) "9\00\00\00\14\00\00\00\e0\11\00\00\00\00\00\00 \12\00\00\00\00\00\00\f0\0d")
 (data (i32.const 4700) "\1c")
 (data (i32.const 4712) "\01\00\00\00\02\00\00\000")
 (data (i32.const 4732) "\\")
 (data (i32.const 4744) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4828) "\1c")
 (data (i32.const 4840) "\01\00\00\00\02\00\00\00.")
 (data (i32.const 4860) "\1c")
 (data (i32.const 4872) "\01\00\00\00\02\00\00\00 ")
 (data (i32.const 4892) ",")
 (data (i32.const 4904) "\01\00\00\00\0e\00\00\00j\00a\00c\00k\00p\00o\00t")
 (data (i32.const 4940) "<")
 (data (i32.const 4952) "\01\00\00\00*\00\00\00J\00a\00c\00k\00p\00o\00t\00 \00d\00e\00p\00o\00s\00i\00t\00 \00f\00r\00o\00m\00 ")
 (data (i32.const 5004) ",")
 (data (i32.const 5016) "9\00\00\00\14\00\00\00`\13\00\00\00\00\00\00 \12\00\00\00\00\00\00\f0\0d")
 (data (i32.const 5052) "|")
 (data (i32.const 5064) "\01\00\00\00b\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00m\00e\00m\00o\00.\00 \00U\00s\00e\00 \00\'\00s\00p\00i\00n\00\'\00,\00 \00\'\00d\00e\00p\00o\00s\00i\00t\00\'\00,\00 \00o\00r\00 \00\'\00j\00a\00c\00k\00p\00o\00t\00\'")
 (data (i32.const 5180) ",")
 (data (i32.const 5192) "\01\00\00\00\1c\00\00\00G\00a\00m\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 5228) "L")
 (data (i32.const 5240) "\01\00\00\004\00\00\00G\00a\00m\00e\00 \00n\00o\00t\00 \00i\00n\00 \00s\00p\00i\00n\00n\00i\00n\00g\00 \00s\00t\00a\00t\00e")
 (data (i32.const 5308) "<")
 (data (i32.const 5320) "\01\00\00\00\1e\00\00\00J\00A\00C\00K\00P\00O\00T\00 \00W\00I\00N\00N\00E\00R\00!")
 (data (i32.const 5372) ",")
 (data (i32.const 5384) "\01\00\00\00\14\00\00\00S\00l\00o\00t\00 \00w\00i\00n\00:\00 ")
 (data (i32.const 5420) "\1c")
 (data (i32.const 5432) "\01\00\00\00\02\00\00\00-")
 (data (i32.const 5452) ",")
 (data (i32.const 5464) "9\00\00\00\1c\00\00\00\10\15\00\00\00\00\00\00@\15\00\00\00\00\00\00@\15\00\00\00\00\00\00\f0\0d")
 (data (i32.const 5500) ",")
 (data (i32.const 5512) "\01\00\00\00\10\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 5548) ",")
 (data (i32.const 5560) "\01\00\00\00\10\00\00\00O\00n\00l\00y\00 \00X\00P\00R")
 (data (i32.const 5596) "L")
 (data (i32.const 5608) "\01\00\00\004\00\00\00I\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00h\00o\00u\00s\00e\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 5676) "L")
 (data (i32.const 5688) "\01\00\00\00:\00\00\00I\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 5756) "<")
 (data (i32.const 5768) "\01\00\00\00 \00\00\00H\00o\00u\00s\00e\00 \00w\00i\00t\00h\00d\00r\00a\00w\00a\00l")
 (data (i32.const 5820) "L")
 (data (i32.const 5832) "\01\00\00\006\00\00\00G\00a\00m\00e\00 \00t\00o\00o\00 \00r\00e\00c\00e\00n\00t\00 \00t\00o\00 \00c\00l\00e\00a\00n\00 \00u\00p")
 (data (i32.const 5900) "\\")
 (data (i32.const 5912) "\01\00\00\00>\00\00\00I\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00b\00a\00l\00a\00n\00c\00e\00 \00f\00o\00r\00 \00r\00e\00f\00u\00n\00d")
 (data (i32.const 5996) "<")
 (data (i32.const 6008) "\01\00\00\00*\00\00\00R\00e\00f\00u\00n\00d\00 \00f\00o\00r\00 \00s\00t\00u\00c\00k\00 \00g\00a\00m\00e")
 (data (i32.const 6060) "l")
 (data (i32.const 6072) "\01\00\00\00T\00\00\00C\00a\00n\00 \00o\00n\00l\00y\00 \00c\00l\00e\00a\00n\00 \00u\00p\00 \00t\00o\00 \001\000\000\00 \00r\00e\00s\00u\00l\00t\00s\00 \00a\00t\00 \00a\00 \00t\00i\00m\00e")
 (data (i32.const 6172) "l")
 (data (i32.const 6184) "\01\00\00\00P\00\00\00C\00a\00n\00 \00o\00n\00l\00y\00 \00c\00l\00e\00a\00n\00 \00u\00p\00 \00t\00o\00 \001\000\000\00 \00s\00t\00a\00t\00s\00 \00a\00t\00 \00a\00 \00t\00i\00m\00e")
 (data (i32.const 6284) "L")
 (data (i32.const 6296) "\01\00\00\006\00\00\00m\00i\00n\00S\00p\00i\00n\00s\00 \00m\00u\00s\00t\00 \00b\00e\00 \00a\00t\00 \00l\00e\00a\00s\00t\00 \001")
 (data (i32.const 6364) "L")
 (data (i32.const 6376) "\01\00\00\008\00\00\00T\00o\00t\00a\00l\00 \00p\00l\00a\00y\00e\00r\00 \00s\00t\00a\00t\00s\00 \00e\00n\00t\00r\00i\00e\00s\00:\00 ")
 (data (i32.const 6444) "\1c")
 (data (i32.const 6456) "9\00\00\00\0c\00\00\00\f0\18\00\00\00\00\00\00\f0\0d")
 (data (i32.const 6476) "<")
 (data (i32.const 6488) "\01\00\00\00&\00\00\00b\00a\00d\00 \00c\00h\00e\00c\00k\00s\00u\00m\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 6540) "<")
 (data (i32.const 6552) "\01\00\00\00\"\00\00\00b\00a\00d\00 \00a\00s\00s\00i\00g\00n\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 6604) "\1c")
 (data (i32.const 6636) "L")
 (data (i32.const 6648) "\01\00\00\008\00\00\00C\00o\00u\00l\00d\00 \00n\00o\00t\00 \00f\00i\00n\00d\00 \00i\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 6716) "\1c")
 (data (i32.const 6728) "9\00\00\00\0c\00\00\00\00\1a\00\00\00\00\00\00\f0\0d")
 (data (i32.const 6748) ",")
 (data (i32.const 6760) "\01\00\00\00\1a\00\00\00I\00t\00e\00m\00 \00w\00i\00t\00h\00 \00i\00d\00 ")
 (data (i32.const 6796) ",")
 (data (i32.const 6808) "\01\00\00\00\0e\00\00\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 6844) "\1c")
 (data (i32.const 6856) "9\00\00\00\0c\00\00\00p\1a\00\00\00\00\00\00\a0\1a")
 (data (i32.const 6876) "\1c")
 (data (i32.const 6908) "\1c")
 (data (i32.const 6920) "9\00\00\00\0c\00\00\00\00\1a\00\00\00\00\00\00\f0\0d")
 (data (i32.const 6940) "\1c")
 (data (i32.const 6952) "9\00\00\00\0c\00\00\00p\1a\00\00\00\00\00\00\a0\1a")
 (data (i32.const 6972) "\1c")
 (data (i32.const 7004) "\1c")
 (data (i32.const 7016) "9\00\00\00\0c\00\00\00\00\1a\00\00\00\00\00\00\f0\0d")
 (data (i32.const 7036) "\1c")
 (data (i32.const 7048) "9\00\00\00\0c\00\00\00p\1a\00\00\00\00\00\00\a0\1a")
 (data (i32.const 7068) "\1c")
 (data (i32.const 7100) "\1c")
 (data (i32.const 7112) "9\00\00\00\0c\00\00\00\00\1a\00\00\00\00\00\00\f0\0d")
 (data (i32.const 7132) "\1c")
 (data (i32.const 7144) "9\00\00\00\0c\00\00\00p\1a\00\00\00\00\00\00\a0\1a")
 (data (i32.const 7164) ",")
 (data (i32.const 7176) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 7212) ",")
 (data (i32.const 7224) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0)
 (export "ConfigDB" (global $assembly/index/ConfigDB))
 (export "ConfigDB#get:db" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:db))
 (export "ConfigDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "ConfigDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:idxdbs))
 (export "ConfigDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "ConfigDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:nextPrimaryKey))
 (export "ConfigDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope))
 (export "ConfigDB#constructor" (func $assembly/index/ConfigDB#constructor@varargs))
 (export "ConfigDB#set" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#set))
 (export "ConfigDB#store" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#store))
 (export "ConfigDB#update" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#update))
 (export "ConfigDB#remove" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#remove))
 (export "ConfigDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#removeEx))
 (export "ConfigDB#get" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get))
 (export "ConfigDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#getByKey))
 (export "ConfigDB#next" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#next))
 (export "ConfigDB#previous" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#previous))
 (export "ConfigDB#find" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#find))
 (export "ConfigDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#requireFind@varargs))
 (export "ConfigDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#requireNotFind@varargs))
 (export "ConfigDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#lowerBound))
 (export "ConfigDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#upperBound))
 (export "ConfigDB#begin" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#begin))
 (export "ConfigDB#end" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#end))
 (export "ConfigDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#getIdxDB))
 (export "ConfigDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#idxUpdate))
 (export "ConfigDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#availablePrimaryKey))
 (export "Config" (global $assembly/index/Config))
 (export "Config#pack" (func $assembly/index/Config#pack))
 (export "Config#unpack" (func $assembly/index/Config#unpack))
 (export "Config#getSize" (func $assembly/index/Config#getSize))
 (export "Config#getPrimaryValue" (func $assembly/index/Config#getPrimaryValue))
 (export "Config#getSecondaryValue" (func $assembly/index/Config#getSecondaryValue))
 (export "Config#setSecondaryValue" (func $assembly/index/Config#setSecondaryValue))
 (export "Config#get:owner" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:db))
 (export "Config#set:owner" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "Config#get:paused" (func $assembly/index/Config#get:paused))
 (export "Config#set:paused" (func $assembly/index/Config#set:paused))
 (export "Config#get:totalSpins" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:nextPrimaryKey))
 (export "Config#set:totalSpins" (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope))
 (export "Config#get:totalWagered" (func $assembly/index/Config#get:totalWagered))
 (export "Config#set:totalWagered" (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table))
 (export "Config#get:totalPaidOut" (func $assembly/index/Config#get:totalPaidOut))
 (export "Config#set:totalPaidOut" (func $assembly/index/Config#set:totalPaidOut))
 (export "Config#get:jackpotPool" (func $assembly/index/Config#get:jackpotPool))
 (export "Config#set:jackpotPool" (func $assembly/index/Config#set:jackpotPool))
 (export "Config#get:houseBalance" (func $assembly/index/Config#get:houseBalance))
 (export "Config#set:houseBalance" (func $assembly/index/Config#set:houseBalance))
 (export "Config#get:nextGameId" (func $assembly/index/Config#get:nextGameId))
 (export "Config#set:nextGameId" (func $assembly/index/Config#set:nextGameId))
 (export "Config#get:nextResultId" (func $assembly/index/Config#get:nextResultId))
 (export "Config#set:nextResultId" (func $assembly/index/Config#set:nextResultId))
 (export "Config#constructor" (func $assembly/index/Config#constructor@varargs))
 (export "Config#getTableName" (func $assembly/index/Config#getTableName))
 (export "Config#getTableIndexes" (func $assembly/index/Config#getTableIndexes))
 (export "Config.get:tableName" (func $assembly/index/Config.get:tableName))
 (export "Config.tableIndexes" (func $assembly/index/Config.tableIndexes))
 (export "Config.new" (func $assembly/index/Config.new@varargs))
 (export "GameDB" (global $assembly/index/GameDB))
 (export "GameDB#get:db" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:db))
 (export "GameDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "GameDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:idxdbs))
 (export "GameDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "GameDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:nextPrimaryKey))
 (export "GameDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope))
 (export "GameDB#constructor" (func $assembly/index/GameDB#constructor@varargs))
 (export "GameDB#set" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#set))
 (export "GameDB#store" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#store))
 (export "GameDB#update" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#update))
 (export "GameDB#remove" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#remove))
 (export "GameDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#removeEx))
 (export "GameDB#get" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#get))
 (export "GameDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#getByKey))
 (export "GameDB#next" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#next))
 (export "GameDB#previous" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#previous))
 (export "GameDB#find" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#find))
 (export "GameDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#requireFind@varargs))
 (export "GameDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#requireNotFind@varargs))
 (export "GameDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#lowerBound))
 (export "GameDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#upperBound))
 (export "GameDB#begin" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#begin))
 (export "GameDB#end" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#end))
 (export "GameDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#getIdxDB))
 (export "GameDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#idxUpdate))
 (export "GameDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#availablePrimaryKey))
 (export "Game" (global $assembly/index/Game))
 (export "Game#pack" (func $assembly/index/Game#pack))
 (export "Game#unpack" (func $assembly/index/Game#unpack))
 (export "Game#getSize" (func $assembly/index/Game#getSize))
 (export "Game#getPrimaryValue" (func $assembly/index/Game#get:primary))
 (export "Game#getSecondaryValue" (func $assembly/index/Config#getSecondaryValue))
 (export "Game#setSecondaryValue" (func $assembly/index/Config#setSecondaryValue))
 (export "Game#get:id" (func $assembly/index/Game#get:primary))
 (export "Game#set:id" (func $~lib/as-chain/name/Name#set:N))
 (export "Game#get:player" (func $assembly/index/Game#get:player))
 (export "Game#set:player" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "Game#get:betAmount" (func $assembly/index/Config#get:totalWagered))
 (export "Game#set:betAmount" (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table))
 (export "Game#get:status" (func $assembly/index/Game#get:status))
 (export "Game#set:status" (func $assembly/index/Game#set:status))
 (export "Game#get:signingValue" (func $assembly/index/Config#get:jackpotPool))
 (export "Game#set:signingValue" (func $assembly/index/Config#set:jackpotPool))
 (export "Game#get:createdAt" (func $assembly/index/Config#get:houseBalance))
 (export "Game#set:createdAt" (func $assembly/index/Config#set:houseBalance))
 (export "Game#constructor" (func $assembly/index/Game#constructor@varargs))
 (export "Game#get:primary" (func $assembly/index/Game#get:primary))
 (export "Game#getTableName" (func $assembly/index/Game#getTableName))
 (export "Game#getTableIndexes" (func $assembly/index/Game#getTableIndexes))
 (export "Game.get:tableName" (func $assembly/index/Game.get:tableName))
 (export "Game.tableIndexes" (func $assembly/index/Game.tableIndexes))
 (export "Game.new" (func $assembly/index/Game.new@varargs))
 (export "SpinResultDB" (global $assembly/index/SpinResultDB))
 (export "SpinResultDB#get:db" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:db))
 (export "SpinResultDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "SpinResultDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:idxdbs))
 (export "SpinResultDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "SpinResultDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:nextPrimaryKey))
 (export "SpinResultDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope))
 (export "SpinResultDB#constructor" (func $assembly/index/SpinResultDB#constructor@varargs))
 (export "SpinResultDB#set" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#set))
 (export "SpinResultDB#store" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#store))
 (export "SpinResultDB#update" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#update))
 (export "SpinResultDB#remove" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#remove))
 (export "SpinResultDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#removeEx))
 (export "SpinResultDB#get" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#get))
 (export "SpinResultDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#getByKey))
 (export "SpinResultDB#next" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#next))
 (export "SpinResultDB#previous" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#previous))
 (export "SpinResultDB#find" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#find))
 (export "SpinResultDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#requireFind@varargs))
 (export "SpinResultDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#requireNotFind@varargs))
 (export "SpinResultDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#lowerBound))
 (export "SpinResultDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#upperBound))
 (export "SpinResultDB#begin" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#begin))
 (export "SpinResultDB#end" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#end))
 (export "SpinResultDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#getIdxDB))
 (export "SpinResultDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#idxUpdate))
 (export "SpinResultDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#availablePrimaryKey))
 (export "SpinResult" (global $assembly/index/SpinResult))
 (export "SpinResult#pack" (func $assembly/index/SpinResult#pack))
 (export "SpinResult#unpack" (func $assembly/index/SpinResult#unpack))
 (export "SpinResult#getSize" (func $assembly/index/SpinResult#getSize))
 (export "SpinResult#getPrimaryValue" (func $assembly/index/Game#get:primary))
 (export "SpinResult#getSecondaryValue" (func $assembly/index/Config#getSecondaryValue))
 (export "SpinResult#setSecondaryValue" (func $assembly/index/Config#setSecondaryValue))
 (export "SpinResult#get:id" (func $assembly/index/Game#get:primary))
 (export "SpinResult#set:id" (func $~lib/as-chain/name/Name#set:N))
 (export "SpinResult#get:player" (func $assembly/index/Game#get:player))
 (export "SpinResult#set:player" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "SpinResult#get:reel1" (func $assembly/index/SpinResult#get:reel1))
 (export "SpinResult#set:reel1" (func $assembly/index/SpinResult#set:reel1))
 (export "SpinResult#get:reel2" (func $assembly/index/SpinResult#get:reel2))
 (export "SpinResult#set:reel2" (func $assembly/index/SpinResult#set:reel2))
 (export "SpinResult#get:reel3" (func $assembly/index/SpinResult#get:reel3))
 (export "SpinResult#set:reel3" (func $assembly/index/SpinResult#set:reel3))
 (export "SpinResult#get:betAmount" (func $assembly/index/Config#get:totalWagered))
 (export "SpinResult#set:betAmount" (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table))
 (export "SpinResult#get:payout" (func $assembly/index/Config#get:totalPaidOut))
 (export "SpinResult#set:payout" (func $assembly/index/Config#set:totalPaidOut))
 (export "SpinResult#get:jackpotWon" (func $assembly/index/SpinResult#get:jackpotWon))
 (export "SpinResult#set:jackpotWon" (func $assembly/index/SpinResult#set:jackpotWon))
 (export "SpinResult#get:timestamp" (func $assembly/index/Config#get:houseBalance))
 (export "SpinResult#set:timestamp" (func $assembly/index/Config#set:houseBalance))
 (export "SpinResult#constructor" (func $assembly/index/SpinResult#constructor@varargs))
 (export "SpinResult#get:primary" (func $assembly/index/Game#get:primary))
 (export "SpinResult#getTableName" (func $assembly/index/SpinResult#getTableName))
 (export "SpinResult#getTableIndexes" (func $assembly/index/SpinResult#getTableIndexes))
 (export "SpinResult.get:tableName" (func $assembly/index/SpinResult.get:tableName))
 (export "SpinResult.tableIndexes" (func $assembly/index/SpinResult.tableIndexes))
 (export "SpinResult.new" (func $assembly/index/SpinResult.new@varargs))
 (export "PlayerStatsDB" (global $assembly/index/PlayerStatsDB))
 (export "PlayerStatsDB#get:db" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:db))
 (export "PlayerStatsDB#set:db" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "PlayerStatsDB#get:idxdbs" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:idxdbs))
 (export "PlayerStatsDB#set:idxdbs" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "PlayerStatsDB#get:nextPrimaryKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:nextPrimaryKey))
 (export "PlayerStatsDB#set:nextPrimaryKey" (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope))
 (export "PlayerStatsDB#constructor" (func $assembly/index/PlayerStatsDB#constructor@varargs))
 (export "PlayerStatsDB#set" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#set))
 (export "PlayerStatsDB#store" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#store))
 (export "PlayerStatsDB#update" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#update))
 (export "PlayerStatsDB#remove" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#remove))
 (export "PlayerStatsDB#removeEx" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#removeEx))
 (export "PlayerStatsDB#get" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#get))
 (export "PlayerStatsDB#getByKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#getByKey))
 (export "PlayerStatsDB#next" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#next))
 (export "PlayerStatsDB#previous" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#previous))
 (export "PlayerStatsDB#find" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#find))
 (export "PlayerStatsDB#requireFind" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireFind@varargs))
 (export "PlayerStatsDB#requireNotFind" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireNotFind@varargs))
 (export "PlayerStatsDB#lowerBound" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#lowerBound))
 (export "PlayerStatsDB#upperBound" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#upperBound))
 (export "PlayerStatsDB#begin" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#begin))
 (export "PlayerStatsDB#end" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#end))
 (export "PlayerStatsDB#getIdxDB" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#getIdxDB))
 (export "PlayerStatsDB#idxUpdate" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#idxUpdate))
 (export "PlayerStatsDB#availablePrimaryKey" (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#availablePrimaryKey))
 (export "PlayerStats" (global $assembly/index/PlayerStats))
 (export "PlayerStats#pack" (func $assembly/index/PlayerStats#pack))
 (export "PlayerStats#unpack" (func $assembly/index/PlayerStats#unpack))
 (export "PlayerStats#getSize" (func $assembly/index/PlayerStats#getSize))
 (export "PlayerStats#getPrimaryValue" (func $assembly/index/PlayerStats#getPrimaryValue))
 (export "PlayerStats#getSecondaryValue" (func $assembly/index/Config#getSecondaryValue))
 (export "PlayerStats#setSecondaryValue" (func $assembly/index/Config#setSecondaryValue))
 (export "PlayerStats#get:account" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:db))
 (export "PlayerStats#set:account" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "PlayerStats#get:totalSpins" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:nextPrimaryKey))
 (export "PlayerStats#set:totalSpins" (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope))
 (export "PlayerStats#get:totalWagered" (func $assembly/index/Config#get:totalWagered))
 (export "PlayerStats#set:totalWagered" (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table))
 (export "PlayerStats#get:totalWon" (func $assembly/index/Config#get:totalPaidOut))
 (export "PlayerStats#set:totalWon" (func $assembly/index/Config#set:totalPaidOut))
 (export "PlayerStats#get:biggestWin" (func $assembly/index/Config#get:jackpotPool))
 (export "PlayerStats#set:biggestWin" (func $assembly/index/Config#set:jackpotPool))
 (export "PlayerStats#get:jackpotsWon" (func $assembly/index/Config#get:houseBalance))
 (export "PlayerStats#set:jackpotsWon" (func $assembly/index/Config#set:houseBalance))
 (export "PlayerStats#constructor" (func $assembly/index/PlayerStats#constructor@varargs))
 (export "PlayerStats#get:primary" (func $assembly/index/PlayerStats#get:primary))
 (export "PlayerStats#getTableName" (func $assembly/index/PlayerStats#getTableName))
 (export "PlayerStats#getTableIndexes" (func $assembly/index/PlayerStats#getTableIndexes))
 (export "PlayerStats.get:tableName" (func $assembly/index/PlayerStats.get:tableName))
 (export "PlayerStats.tableIndexes" (func $assembly/index/PlayerStats.tableIndexes))
 (export "PlayerStats.new" (func $assembly/index/PlayerStats.new@varargs))
 (export "XprSlots" (global $assembly/index/XprSlots))
 (export "XprSlots#get:receiver" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:db))
 (export "XprSlots#set:receiver" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "XprSlots#get:firstReceiver" (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:idxdbs))
 (export "XprSlots#set:firstReceiver" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "XprSlots#get:action" (func $assembly/index/Game#get:player))
 (export "XprSlots#set:action" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "XprSlots#constructor" (func $assembly/index/XprSlots#constructor))
 (export "XprSlots#get:configSingleton" (func $assembly/index/XprSlots#get:configSingleton))
 (export "XprSlots#set:configSingleton" (func $~lib/rt/common/OBJECT#set:rtId))
 (export "XprSlots#get:gamesTable" (func $assembly/index/XprSlots#get:gamesTable))
 (export "XprSlots#set:gamesTable" (func $~lib/rt/common/OBJECT#set:rtSize))
 (export "XprSlots#get:resultsTable" (func $assembly/index/XprSlots#get:resultsTable))
 (export "XprSlots#set:resultsTable" (func $assembly/index/XprSlots#set:resultsTable))
 (export "XprSlots#get:playerStatsTable" (func $assembly/index/XprSlots#get:playerStatsTable))
 (export "XprSlots#set:playerStatsTable" (func $assembly/index/XprSlots#set:playerStatsTable))
 (export "XprSlots#init" (func $assembly/index/XprSlots#init))
 (export "XprSlots#migrate" (func $assembly/index/XprSlots#migrate))
 (export "XprSlots#setOwner" (func $assembly/index/XprSlots#setOwner))
 (export "XprSlots#setPaused" (func $assembly/index/XprSlots#setPaused))
 (export "XprSlots#onTransfer" (func $assembly/index/XprSlots#onTransfer))
 (export "XprSlots#receiveRand" (func $assembly/index/XprSlots#receiveRand))
 (export "XprSlots#withdraw" (func $assembly/index/XprSlots#withdraw))
 (export "XprSlots#cleanup" (func $assembly/index/XprSlots#cleanup))
 (export "XprSlots#cleanResults" (func $assembly/index/XprSlots#cleanResults))
 (export "XprSlots#removeStats" (func $assembly/index/XprSlots#removeStats))
 (export "XprSlots#cleanStats" (func $assembly/index/XprSlots#cleanStats))
 (export "XprSlots#statsTotal" (func $assembly/index/XprSlots#statsTotal))
 (export "apply" (func $assembly/index/apply))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (start $~start)
 (func $start:~lib/as-chain/name~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 122)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 97)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 91)
    )
   )
  )
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 53)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 49)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 48)
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (local.get $0)
     (i32.const 65535)
    )
    (i32.const 46)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 65535)
 )
 (func $~lib/as-chain/name/Name#set:N (param $0 i32) (param $1 i64)
  (i64.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $1
     (i32.and
      (i32.add
       (i32.shl
        (local.tee $2
         (memory.size)
        )
        (i32.const 16)
       )
       (i32.const 15)
      )
      (i32.const -16)
     )
    )
   )
   (if
    (i32.lt_s
     (memory.grow
      (select
       (local.get $2)
       (local.tee $1
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (local.get $0)
            (local.get $1)
           )
           (i32.const 65535)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (i32.lt_s
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (memory.grow
       (local.get $1)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (global.set $~lib/rt/stub/offset
   (local.get $0)
  )
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  (i32.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (local.set $1
   (global.get $~lib/rt/stub/offset)
  )
  (call $~lib/rt/stub/maybeGrowMemory
   (i32.add
    (local.tee $2
     (i32.add
      (global.get $~lib/rt/stub/offset)
      (i32.const 4)
     )
    )
    (local.tee $0
     (i32.sub
      (i32.and
       (i32.add
        (local.get $0)
        (i32.const 19)
       )
       (i32.const -16)
      )
      (i32.const 4)
     )
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  (i32.store offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  (i32.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.tee $2
    (i32.sub
     (local.tee $3
      (call $~lib/rt/stub/__alloc
       (i32.add
        (local.get $0)
        (i32.const 16)
       )
      )
     )
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $2)
   (local.get $0)
  )
  (i32.add
   (local.get $3)
   (i32.const 16)
  )
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  (i32.shr_u
   (i32.load offset=16
    (i32.sub
     (local.get $0)
     (i32.const 20)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.load offset=16
     (i32.sub
      (local.get $0)
      (i32.const 20)
     )
    )
   )
  )
  (local.set $2
   (i32.ne
    (local.get $1)
    (i32.const 0)
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block $while-break|0
     (local.set $2
      (if (result i32)
       (i32.lt_u
        (local.tee $3
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (br_if $while-break|0
         (i32.and
          (local.get $1)
          (i32.eqz
           (local.get $3)
          )
         )
        )
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $3)
         (i32.const 2048)
        )
        (i32.add
         (local.get $2)
         (i32.const 2)
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $3)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (i32.load16_u offset=2
              (local.get $0)
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.add
          (local.get $2)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (local.set $1
   (local.get $2)
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block
     (local.set $1
      (if (result i32)
       (i32.lt_u
        (local.tee $2
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (i32.store8
         (local.get $1)
         (local.get $2)
        )
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $2)
         (i32.const 2048)
        )
        (block (result i32)
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 6)
            )
            (i32.const 192)
           )
           (i32.shl
            (i32.or
             (i32.and
              (local.get $2)
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 2)
         )
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $2)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (local.tee $5
              (i32.load16_u offset=2
               (local.get $0)
              )
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (i32.store
             (local.get $1)
             (i32.or
              (i32.or
               (i32.or
                (i32.shl
                 (i32.or
                  (i32.and
                   (local.tee $2
                    (i32.or
                     (i32.add
                      (i32.shl
                       (i32.and
                        (local.get $2)
                        (i32.const 1023)
                       )
                       (i32.const 10)
                      )
                      (i32.const 65536)
                     )
                     (i32.and
                      (local.get $5)
                      (i32.const 1023)
                     )
                    )
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 24)
                )
                (i32.shl
                 (i32.or
                  (i32.and
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 6)
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 16)
                )
               )
               (i32.shl
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 12)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
                (i32.const 8)
               )
              )
              (i32.or
               (i32.shr_u
                (local.get $2)
                (i32.const 18)
               )
               (i32.const 240)
              )
             )
            )
            (local.set $1
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 12)
            )
            (i32.const 224)
           )
           (i32.shl
            (i32.or
             (i32.and
              (i32.shr_u
               (local.get $2)
               (i32.const 6)
              )
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.store8 offset=2
          (local.get $1)
          (i32.or
           (i32.and
            (local.get $2)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (if
   (local.get $3)
   (i32.store8
    (local.get $1)
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/rt/stub/__new
    (call $~lib/string/String.UTF8.byteLength
     (local.get $0)
     (local.get $1)
    )
    (i32.const 0)
   )
  )
  (call $~lib/string/String.UTF8.encodeUnsafe
   (local.get $0)
   (call $~lib/string/String#get:length
    (local.get $0)
   )
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $0 i32) (result i32)
  (i32.load offset=16
   (i32.sub
    (local.get $0)
    (i32.const 20)
   )
  )
 )
 (func $~lib/dataview/DataView#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $2
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.get $0)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.or
    (i32.lt_u
     (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
      (local.get $0)
     )
     (local.get $2)
    )
    (i32.gt_u
     (local.get $2)
     (i32.const 1073741820)
    )
   )
   (unreachable)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (local.get $0)
   )
   (block
    (local.set $0
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 1)
     )
    )
    (global.set $~argumentsLength
     (i32.const 1)
    )
    (call $~lib/as-chain/env/eosio_assert
     (i32.const 0)
     (i32.load offset=4
      (call $~lib/dataview/DataView#constructor@varargs
       (local.get $0)
      )
     )
    )
   )
  )
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.le_u
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (local.get $1)
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/as-chain/asset/Symbol#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 7)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 7)
   )
   (i32.const 2288)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (call $~lib/string/String#get:length
      (local.get $0)
     )
     (local.get $3)
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i64.le_u
        (local.tee $4
         (i64.extend_i32_s
          (call $~lib/string/String#charCodeAt
           (local.get $0)
           (i32.sub
            (i32.sub
             (call $~lib/string/String#get:length
              (local.get $0)
             )
             (i32.const 1)
            )
            (local.get $3)
           )
          )
         )
        )
        (i64.const 90)
       )
       (i32.const 0)
       (i64.ge_u
        (local.get $4)
        (i64.const 65)
       )
      )
      (i32.const 2352)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.or
       (local.get $4)
       (i64.load
        (local.get $2)
       )
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.shl
       (i64.load
        (local.get $2)
       )
       (i64.const 8)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.or
    (i64.load
     (local.get $2)
    )
    (i64.extend_i32_u
     (i32.and
      (local.get $1)
      (i32.const 255)
     )
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 13)
      )
     )
    )
    (local.get $0)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $0)
   (i64.const -1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (block (result i32)
    (local.set $5
     (i64.load
      (local.get $1)
     )
    )
    (local.set $6
     (i64.load
      (local.get $2)
     )
    )
    (local.set $7
     (i64.load
      (local.get $3)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.const 24)
       (i32.const 14)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
     (local.get $1)
     (local.get $7)
    )
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $4)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:db (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:idxdbs (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get:nextPrimaryKey (param $0 i32) (result i64)
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $assembly/index/Config#getPrimaryValue (param $0 i32) (result i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 4982871454518345728)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 17)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/index/Config>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/index/Config>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load offset=4
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  (loop $while-continue|0
   (if
    (local.get $1)
    (block
     (local.set $0
      (i32.add
       (local.tee $2
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $2)
      (i32.const 0)
     )
     (local.set $1
      (i32.sub
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (select
       (local.get $0)
       (i32.const 8)
       (i32.gt_u
        (local.get $0)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/index/Config#set:paused (param $0 i32) (param $1 i32)
  (i32.store8 offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/Config#set:totalPaidOut (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/Config#set:jackpotPool (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/Config#set:houseBalance (param $0 i32) (param $1 i64)
  (i64.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/Config#set:nextGameId (param $0 i32) (param $1 i64)
  (i64.store offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/Config#set:nextResultId (param $0 i32) (param $1 i64)
  (i64.store offset=56
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/Config#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (param $7 i64) (param $8 i64) (param $9 i64) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 64)
       (i32.const 10)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $assembly/index/Config#set:paused
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $0)
   (local.get $4)
  )
  (call $assembly/index/Config#set:totalPaidOut
   (local.get $0)
   (local.get $5)
  )
  (call $assembly/index/Config#set:jackpotPool
   (local.get $0)
   (local.get $6)
  )
  (call $assembly/index/Config#set:houseBalance
   (local.get $0)
   (local.get $7)
  )
  (call $assembly/index/Config#set:nextGameId
   (local.get $0)
   (local.get $8)
  )
  (call $assembly/index/Config#set:nextResultId
   (local.get $0)
   (local.get $9)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 18)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (local.get $1)
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $~lib/util/memory/memmove|inlined.0
   (local.set $4
    (local.get $2)
   )
   (br_if $~lib/util/memory/memmove|inlined.0
    (i32.eq
     (local.get $0)
     (local.get $1)
    )
   )
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $1)
    )
    (loop $while-continue|0
     (if
      (local.get $4)
      (block
       (local.set $0
        (i32.add
         (local.tee $2
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (local.get $2)
        (i32.load8_u
         (local.get $3)
        )
       )
       (local.set $4
        (i32.sub
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (loop $while-continue|1
     (if
      (local.get $4)
      (block
       (i32.store8
        (i32.add
         (local.tee $4
          (i32.sub
           (local.get $4)
           (i32.const 1)
          )
         )
         (local.get $0)
        )
        (i32.load8_u
         (i32.add
          (local.get $1)
          (local.get $4)
         )
        )
       )
       (br $while-continue|1)
      )
     )
    )
   )
  )
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (local.tee $4
    (i32.shl
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $4)
    (i32.const 0)
   )
  )
  (if
   (local.get $3)
   (call $~lib/memory/memory.copy
    (local.get $1)
    (local.get $3)
    (local.get $5)
   )
  )
  (local.set $3
   (local.get $1)
  )
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (local.get $2)
    )
   )
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $1)
   (local.get $3)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $4)
  )
  (i32.store offset=12
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<u8>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (local.tee $2
       (select
        (local.tee $2
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $2)
            (i32.const 0)
           )
           (select
            (local.tee $2
             (i32.add
              (local.get $2)
              (local.get $3)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $2)
             (i32.const 0)
            )
           )
           (select
            (local.get $2)
            (local.get $3)
            (i32.lt_s
             (local.get $2)
             (local.get $3)
            )
           )
          )
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
      )
      (i32.const 0)
      (i32.const 4)
      (i32.const 0)
     )
    )
   )
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/serializer/Decoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2592)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpack (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (call $~lib/as-chain/serializer/Packer#unpack@virtual
    (local.get $1)
    (call $~lib/array/Array<u8>#slice
     (i32.load
      (local.get $0)
     )
     (i32.load offset=4
      (local.get $0)
     )
     (i32.load offset=12
      (i32.load
       (local.get $0)
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<bool> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load8_u
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u64> (param $0 i32) (result i64)
  (local $1 i64)
  (local.set $1
   (i64.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (local.get $1)
 )
 (func $assembly/index/Config#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/index/Config#set:paused
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:totalPaidOut
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:jackpotPool
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:houseBalance
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:nextGameId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:nextResultId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $assembly/index/Config#unpack
    (local.tee $0
     (call $assembly/index/Config#constructor
      (i32.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i32.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 1)
      (i64.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 20)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (call $~lib/array/Array<u8>#constructor
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $assembly/index/Config#getSize (param $0 i32) (result i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (i32.const 65)
 )
 (func $~lib/as-chain/serializer/Encoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2944)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#pack (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $2
     (call $~lib/as-chain/serializer/Packer#pack@virtual
      (local.get $1)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2864)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $2)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (local.get $2)
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<bool> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (i32.store8
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u64> (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (i64.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#getBytes (param $0 i32) (result i32)
  (call $~lib/array/Array<u8>#slice
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $assembly/index/Config#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $assembly/index/Config#getSize
      (local.get $0)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=56
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $assembly/index/Config#pack
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $2)
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $3)
  )
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load
      (i32.add
       (i32.load offset=4
        (local.get $0)
       )
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
    )
   )
   (unreachable)
  )
  (local.get $0)
 )
 (func $assembly/index/Config#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3024)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 24)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/memory/memory.fill
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 64)
     (i32.const 0)
    )
   )
   (i32.const 64)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 64)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 23)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.get $1)
   )
   (i32.const 2448)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (call $assembly/index/Config#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
       (local.get $1)
      )
      (i32.const 2512)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
      (local.get $1)
      (call $assembly/index/Config#getPrimaryValue
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2752)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#update
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (i64.load
    (local.get $3)
   )
   (local.get $2)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
      )
     )
     (local.set $5
      (call $assembly/index/Config#getSecondaryValue
       (local.get $2)
       (local.get $4)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $5)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $5)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/index/Config#getSecondaryValue
        (local.get $2)
        (local.get $4)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (call $assembly/index/Config#getPrimaryValue
    (local.get $1)
   )
  )
  (local.set $6
   (i64.load
    (local.get $2)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $7
     (call $assembly/index/Config#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#constructor
    (local.get $3)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $3)
     )
     (i64.load offset=16
      (local.get $3)
     )
     (local.get $6)
     (local.get $4)
     (i32.load offset=4
      (local.get $7)
     )
     (local.get $8)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $0)
       )
       (local.get $5)
      )
      (call $assembly/index/Config#getPrimaryValue
       (local.get $1)
      )
      (call $assembly/index/Config#getSecondaryValue
       (local.get $1)
       (local.get $5)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (call $assembly/index/Config#getPrimaryValue
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#find
      (local.get $0)
      (call $assembly/index/Config#getPrimaryValue
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#get
     (i32.load
      (local.get $0)
     )
     (local.get $1)
    )
   )
   (return
    (local.get $0)
   )
  )
  (call $assembly/index/Config#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (i32.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 1)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/env/db_remove_i64
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3088)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#remove
   (i32.load
    (local.get $0)
   )
   (local.get $3)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $3
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $0)
           )
           (local.get $2)
          )
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $2)
       )
       (i32.load
        (local.get $3)
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#removeEx
   (local.get $0)
   (call $assembly/index/Config#getPrimaryValue
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_next_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#previous (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_previous_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_lowerbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_upperbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#getIdxDB (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_s
    (local.get $1)
    (i32.load offset=12
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 3168)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $assembly/index/Config#setSecondaryValue (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3024)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3232)
  )
  (call $assembly/index/Config#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (i64.load
    (local.get $3)
   )
   (local.get $5)
  )
  (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
   (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=16
     (local.get $1)
    )
   )
   (local.get $1)
   (local.get $2)
   (i64.load
    (local.get $3)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (if
     (i64.ge_u
      (local.tee $1
       (call $assembly/index/Config#getPrimaryValue
        (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#end
           (local.get $0)
          )
         )
        )
       )
      )
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
      (local.get $0)
      (i64.const -2)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
      (local.get $0)
      (i64.add
       (local.get $1)
       (i64.const 1)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $assembly/index/Config.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 4982871454518345728)
  )
  (local.get $0)
 )
 (func $assembly/index/Config.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $assembly/index/Config.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 16)
   (i32.const 3328)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 3)
      )
     )
    )
    (unreachable)
   )
   (local.set $3
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 16)
     (i32.const 3360)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $assembly/index/Config#get:paused (param $0 i32) (result i32)
  (i32.load8_u offset=4
   (local.get $0)
  )
 )
 (func $assembly/index/Config#get:totalWagered (param $0 i32) (result i64)
  (i64.load offset=16
   (local.get $0)
  )
 )
 (func $assembly/index/Config#get:totalPaidOut (param $0 i32) (result i64)
  (i64.load offset=24
   (local.get $0)
  )
 )
 (func $assembly/index/Config#get:jackpotPool (param $0 i32) (result i64)
  (i64.load offset=32
   (local.get $0)
  )
 )
 (func $assembly/index/Config#get:houseBalance (param $0 i32) (result i64)
  (i64.load offset=40
   (local.get $0)
  )
 )
 (func $assembly/index/Config#get:nextGameId (param $0 i32) (result i64)
  (i64.load offset=48
   (local.get $0)
  )
 )
 (func $assembly/index/Config#get:nextResultId (param $0 i32) (result i64)
  (i64.load offset=56
   (local.get $0)
  )
 )
 (func $assembly/index/Config#getTableName (param $0 i32) (result i32)
  (call $assembly/index/Config.get:tableName)
 )
 (func $assembly/index/Config#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $assembly/index/Config.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 28)
      )
     )
    )
    (local.get $0)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $0)
   (i64.const -1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (block (result i32)
    (local.set $5
     (i64.load
      (local.get $1)
     )
    )
    (local.set $6
     (i64.load
      (local.get $2)
     )
    )
    (local.set $7
     (i64.load
      (local.get $3)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.const 24)
       (i32.const 29)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
     (local.get $1)
     (local.get $7)
    )
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $4)
  )
  (local.get $0)
 )
 (func $assembly/index/GameDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#constructor
   (if (result i32)
    (local.get $0)
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 26)
    )
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $assembly/index/Game#get:primary (param $0 i32) (result i64)
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 30)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/index/Game>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/index/Game>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/index/Game#set:status (param $0 i32) (param $1 i32)
  (i32.store8 offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/Game#constructor (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i64) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 48)
       (i32.const 27)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $0)
   (local.get $3)
  )
  (call $assembly/index/Game#set:status
   (local.get $0)
   (local.get $4)
  )
  (call $assembly/index/Config#set:jackpotPool
   (local.get $0)
   (local.get $5)
  )
  (call $assembly/index/Config#set:houseBalance
   (local.get $0)
   (local.get $6)
  )
  (local.get $0)
 )
 (func $assembly/index/Game#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/Game#set:status
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:jackpotPool
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:houseBalance
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/Game>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $assembly/index/Game#unpack
    (local.tee $0
     (call $assembly/index/Game#constructor
      (i32.const 0)
      (i64.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i64.const 0)
      (i32.const 0)
      (i64.const 0)
      (i64.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Game>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $assembly/index/Game#getSize (param $0 i32) (result i32)
  (drop
   (i32.load offset=8
    (local.get $0)
   )
  )
  (i32.const 41)
 )
 (func $assembly/index/Game#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $assembly/index/Game#getSize
      (local.get $0)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/Game>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $assembly/index/Game#pack
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $2)
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $3)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.get $1)
   )
   (i32.const 2448)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
       (local.get $1)
      )
      (i32.const 2512)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
      (local.get $1)
      (i64.load
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2752)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Game>#update
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (i64.load
    (local.get $3)
   )
   (local.get $2)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
      )
     )
     (local.set $5
      (call $assembly/index/Config#getSecondaryValue
       (local.get $2)
       (local.get $4)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $5)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $5)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/index/Config#getSecondaryValue
        (local.get $2)
        (local.get $4)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (i64.load
    (local.get $1)
   )
  )
  (local.set $6
   (i64.load
    (local.get $2)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $7
     (call $assembly/index/Game#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#constructor
    (local.get $3)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $3)
     )
     (i64.load offset=16
      (local.get $3)
     )
     (local.get $6)
     (local.get $4)
     (i32.load offset=4
      (local.get $7)
     )
     (local.get $8)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $0)
       )
       (local.get $5)
      )
      (i64.load
       (local.get $1)
      )
      (call $assembly/index/Config#getSecondaryValue
       (local.get $1)
       (local.get $5)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#find
      (local.get $0)
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/Game>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Game>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Game>#get
     (i32.load
      (local.get $0)
     )
     (local.get $1)
    )
   )
   (return
    (local.get $0)
   )
  )
  (call $assembly/index/Game#constructor
   (i32.const 0)
   (i64.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (i64.const 0)
   (i32.const 0)
   (i64.const 0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3088)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#remove
   (i32.load
    (local.get $0)
   )
   (local.get $3)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $3
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $0)
           )
           (local.get $2)
          )
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $2)
       )
       (i32.load
        (local.get $3)
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#removeEx
   (local.get $0)
   (i64.load
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Game>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_next_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#previous (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_previous_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_lowerbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_upperbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3232)
  )
  (call $assembly/index/Config#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Game>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (i64.load
    (local.get $3)
   )
   (local.get $5)
  )
  (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
   (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=16
     (local.get $1)
    )
   )
   (local.get $1)
   (local.get $2)
   (i64.load
    (local.get $3)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#end
           (local.get $0)
          )
         )
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $1)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
       (local.get $0)
       (i64.add
        (local.get $2)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $assembly/index/Game.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 7035937633859534848)
  )
  (local.get $0)
 )
 (func $assembly/index/Game.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $assembly/index/Game.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 16)
   (i32.const 3392)
  )
 )
 (func $assembly/index/Game#get:player (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $assembly/index/Game#get:status (param $0 i32) (result i32)
  (i32.load8_u offset=24
   (local.get $0)
  )
 )
 (func $assembly/index/Game#getTableName (param $0 i32) (result i32)
  (call $assembly/index/Game.get:tableName)
 )
 (func $assembly/index/Game#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $assembly/index/Game.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 33)
      )
     )
    )
    (local.get $0)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $0)
   (i64.const -1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (block (result i32)
    (local.set $5
     (i64.load
      (local.get $1)
     )
    )
    (local.set $6
     (i64.load
      (local.get $2)
     )
    )
    (local.set $7
     (i64.load
      (local.get $3)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.const 24)
       (i32.const 34)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
     (local.get $1)
     (local.get $7)
    )
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $4)
  )
  (local.get $0)
 )
 (func $assembly/index/SpinResultDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#constructor
   (if (result i32)
    (local.get $0)
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 31)
    )
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 35)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/index/SpinResult>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/index/SpinResult>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/index/SpinResult#set:reel1 (param $0 i32) (param $1 i32)
  (i32.store8 offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/SpinResult#set:reel2 (param $0 i32) (param $1 i32)
  (i32.store8 offset=13
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/SpinResult#set:reel3 (param $0 i32) (param $1 i32)
  (i32.store8 offset=14
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/SpinResult#set:jackpotWon (param $0 i32) (param $1 i32)
  (i32.store8 offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/SpinResult#constructor (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i64) (param $7 i64) (param $8 i32) (param $9 i64) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 48)
       (i32.const 32)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/index/SpinResult#set:reel1
   (local.get $0)
   (local.get $3)
  )
  (call $assembly/index/SpinResult#set:reel2
   (local.get $0)
   (local.get $4)
  )
  (call $assembly/index/SpinResult#set:reel3
   (local.get $0)
   (local.get $5)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $0)
   (local.get $6)
  )
  (call $assembly/index/Config#set:totalPaidOut
   (local.get $0)
   (local.get $7)
  )
  (call $assembly/index/SpinResult#set:jackpotWon
   (local.get $0)
   (local.get $8)
  )
  (call $assembly/index/Config#set:houseBalance
   (local.get $0)
   (local.get $9)
  )
  (local.get $0)
 )
 (func $assembly/index/SpinResult#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/index/SpinResult#set:reel1
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/index/SpinResult#set:reel2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/index/SpinResult#set:reel3
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:totalPaidOut
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/SpinResult#set:jackpotWon
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:houseBalance
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/SpinResult>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $assembly/index/SpinResult#unpack
    (local.tee $0
     (call $assembly/index/SpinResult#constructor
      (i32.const 0)
      (i64.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i32.const 0)
      (i32.const 0)
      (i32.const 0)
      (i64.const 0)
      (i64.const 0)
      (i32.const 0)
      (i64.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/SpinResult>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $assembly/index/SpinResult#getSize (param $0 i32) (result i32)
  (drop
   (i32.load offset=8
    (local.get $0)
   )
  )
  (i32.const 44)
 )
 (func $assembly/index/SpinResult#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $assembly/index/SpinResult#getSize
      (local.get $0)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=13
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=14
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/SpinResult>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $assembly/index/SpinResult#pack
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $2)
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $3)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.get $1)
   )
   (i32.const 2448)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
       (local.get $1)
      )
      (i32.const 2512)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
      (local.get $1)
      (i64.load
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2752)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/SpinResult>#update
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (i64.load
    (local.get $3)
   )
   (local.get $2)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
      )
     )
     (local.set $5
      (call $assembly/index/Config#getSecondaryValue
       (local.get $2)
       (local.get $4)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $5)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $5)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/index/Config#getSecondaryValue
        (local.get $2)
        (local.get $4)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (i64.load
    (local.get $1)
   )
  )
  (local.set $6
   (i64.load
    (local.get $2)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $7
     (call $assembly/index/SpinResult#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#constructor
    (local.get $3)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $3)
     )
     (i64.load offset=16
      (local.get $3)
     )
     (local.get $6)
     (local.get $4)
     (i32.load offset=4
      (local.get $7)
     )
     (local.get $8)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $0)
       )
       (local.get $5)
      )
      (i64.load
       (local.get $1)
      )
      (call $assembly/index/Config#getSecondaryValue
       (local.get $1)
       (local.get $5)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#find
      (local.get $0)
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/SpinResult>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/SpinResult>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/SpinResult>#get
     (i32.load
      (local.get $0)
     )
     (local.get $1)
    )
   )
   (return
    (local.get $0)
   )
  )
  (call $assembly/index/SpinResult#constructor
   (i32.const 0)
   (i64.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (i32.const 0)
   (i32.const 0)
   (i32.const 0)
   (i64.const 0)
   (i64.const 0)
   (i32.const 0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3088)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#remove
   (i32.load
    (local.get $0)
   )
   (local.get $3)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $3
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $0)
           )
           (local.get $2)
          )
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $2)
       )
       (i32.load
        (local.get $3)
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#removeEx
   (local.get $0)
   (i64.load
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/SpinResult>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_next_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#previous (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_previous_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_lowerbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_upperbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3232)
  )
  (call $assembly/index/Config#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/SpinResult>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (i64.load
    (local.get $3)
   )
   (local.get $5)
  )
  (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
   (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=16
     (local.get $1)
    )
   )
   (local.get $1)
   (local.get $2)
   (i64.load
    (local.get $3)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#end
           (local.get $0)
          )
         )
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $1)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
       (local.get $0)
       (i64.add
        (local.get $2)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $assembly/index/SpinResult.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -4225155269332668416)
  )
  (local.get $0)
 )
 (func $assembly/index/SpinResult.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $assembly/index/SpinResult.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 16)
   (i32.const 3424)
  )
 )
 (func $assembly/index/SpinResult#get:reel1 (param $0 i32) (result i32)
  (i32.load8_u offset=12
   (local.get $0)
  )
 )
 (func $assembly/index/SpinResult#get:reel2 (param $0 i32) (result i32)
  (i32.load8_u offset=13
   (local.get $0)
  )
 )
 (func $assembly/index/SpinResult#get:reel3 (param $0 i32) (result i32)
  (i32.load8_u offset=14
   (local.get $0)
  )
 )
 (func $assembly/index/SpinResult#get:jackpotWon (param $0 i32) (result i32)
  (i32.load8_u offset=32
   (local.get $0)
  )
 )
 (func $assembly/index/SpinResult#getTableName (param $0 i32) (result i32)
  (call $assembly/index/SpinResult.get:tableName)
 )
 (func $assembly/index/SpinResult#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $assembly/index/SpinResult.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 38)
      )
     )
    )
    (local.get $0)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $0)
   (i64.const -1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (block (result i32)
    (local.set $5
     (i64.load
      (local.get $1)
     )
    )
    (local.set $6
     (i64.load
      (local.get $2)
     )
    )
    (local.set $7
     (i64.load
      (local.get $3)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.const 24)
       (i32.const 39)
      )
     )
     (local.get $5)
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
     (local.get $1)
     (local.get $6)
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
     (local.get $1)
     (local.get $7)
    )
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $4)
  )
  (local.get $0)
 )
 (func $assembly/index/PlayerStatsDB#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#constructor
   (if (result i32)
    (local.get $0)
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 36)
    )
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $assembly/index/PlayerStats#get:primary (param $0 i32) (result i64)
  (i64.load
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/index/PlayerStats#getPrimaryValue (param $0 i32) (result i64)
  (call $assembly/index/PlayerStats#get:primary
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/index/PlayerStats>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/index/PlayerStats>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/index/PlayerStats#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 48)
       (i32.const 37)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $0)
   (local.get $3)
  )
  (call $assembly/index/Config#set:totalPaidOut
   (local.get $0)
   (local.get $4)
  )
  (call $assembly/index/Config#set:jackpotPool
   (local.get $0)
   (local.get $5)
  )
  (call $assembly/index/Config#set:houseBalance
   (local.get $0)
   (local.get $6)
  )
  (local.get $0)
 )
 (func $assembly/index/PlayerStats#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:totalPaidOut
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:jackpotPool
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/index/Config#set:houseBalance
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/PlayerStats>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $assembly/index/PlayerStats#unpack
    (local.tee $0
     (call $assembly/index/PlayerStats#constructor
      (i32.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/PlayerStats>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $assembly/index/PlayerStats#getSize (param $0 i32) (result i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (i32.const 48)
 )
 (func $assembly/index/PlayerStats#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $assembly/index/PlayerStats#getSize
      (local.get $0)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/PlayerStats>#update (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.tee $0
     (call $assembly/index/PlayerStats#pack
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $2)
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $3)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.get $1)
   )
   (i32.const 2448)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (call $assembly/index/PlayerStats#get:primary
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
       (local.get $1)
      )
      (i32.const 2512)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
      (local.get $1)
      (call $assembly/index/PlayerStats#get:primary
       (local.get $5)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2752)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/PlayerStats>#update
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (i64.load
    (local.get $3)
   )
   (local.get $2)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
      )
     )
     (local.set $5
      (call $assembly/index/Config#getSecondaryValue
       (local.get $2)
       (local.get $4)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $5)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $5)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/index/Config#getSecondaryValue
        (local.get $2)
        (local.get $4)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#store (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (call $assembly/index/PlayerStats#get:primary
    (local.get $1)
   )
  )
  (local.set $6
   (i64.load
    (local.get $2)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $7
     (call $assembly/index/PlayerStats#pack
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#constructor
    (local.get $3)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $3)
     )
     (i64.load offset=16
      (local.get $3)
     )
     (local.get $6)
     (local.get $4)
     (i32.load offset=4
      (local.get $7)
     )
     (local.get $8)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $0)
       )
       (local.get $5)
      )
      (call $assembly/index/PlayerStats#get:primary
       (local.get $1)
      )
      (call $assembly/index/Config#getSecondaryValue
       (local.get $1)
       (local.get $5)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (call $assembly/index/PlayerStats#get:primary
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#find
      (local.get $0)
      (call $assembly/index/PlayerStats#get:primary
       (local.get $1)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#update
    (local.get $0)
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (local.set $3
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#store
     (local.get $0)
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/index/PlayerStats>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/PlayerStats>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/PlayerStats>#get
     (i32.load
      (local.get $0)
     )
     (local.get $1)
    )
   )
   (return
    (local.get $0)
   )
  )
  (call $assembly/index/PlayerStats#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#removeEx (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (i32.const 3088)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#remove
   (i32.load
    (local.get $0)
   )
   (local.get $3)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $3
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $0)
           )
           (local.get $2)
          )
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $2)
       )
       (i32.load
        (local.get $3)
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#removeEx
   (local.get $0)
   (call $assembly/index/PlayerStats#get:primary
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#get
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#getByKey (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.tee $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/PlayerStats>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_next_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#previous (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_previous_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireNotFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_lowerbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#upperBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_upperbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#idxUpdate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#find
      (local.get $0)
      (i64.load offset=8
       (local.get $1)
      )
     )
    )
   )
   (i32.const 3232)
  )
  (call $assembly/index/Config#setSecondaryValue
   (local.tee $5
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#get
     (local.get $0)
     (local.get $4)
    )
   )
   (i32.load offset=16
    (local.get $1)
   )
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/PlayerStats>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (i64.load
    (local.get $3)
   )
   (local.get $5)
  )
  (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
   (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=16
     (local.get $1)
    )
   )
   (local.get $1)
   (local.get $2)
   (i64.load
    (local.get $3)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#begin
       (local.get $0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#end
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (local.tee $1
       (call $assembly/index/PlayerStats#get:primary
        (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#get
         (local.get $0)
         (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#previous
          (local.get $0)
          (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#end
           (local.get $0)
          )
         )
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $1)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
       (local.get $0)
       (i64.add
        (local.get $2)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $assembly/index/PlayerStats.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -6030912129371574272)
  )
  (local.get $0)
 )
 (func $assembly/index/PlayerStats.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (drop
   (i64.load
    (call $assembly/index/PlayerStats.get:tableName)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 16)
   (i32.const 3456)
  )
 )
 (func $assembly/index/PlayerStats#getTableName (param $0 i32) (result i32)
  (call $assembly/index/PlayerStats.get:tableName)
 )
 (func $assembly/index/PlayerStats#getTableIndexes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $assembly/index/PlayerStats.tableIndexes
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/index/XprSlots#set:resultsTable (param $0 i32) (param $1 i32)
  (i32.store offset=20
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/XprSlots#set:playerStatsTable (param $0 i32) (param $1 i32)
  (i32.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/XprSlots#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (block (result i32)
       (if
        (i32.eqz
         (local.get $0)
        )
        (local.set $0
         (call $~lib/rt/stub/__new
          (i32.const 28)
          (i32.const 41)
         )
        )
       )
       (local.get $0)
      )
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 42)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (local.set $1
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 43)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (i32.const 0)
  )
  (drop
   (call $assembly/index/Config#constructor
    (i32.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 1)
    (i64.const 0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (i64.load
    (local.tee $3
     (call $assembly/index/Config.get:tableName)
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#constructor@varargs
    (local.get $1)
    (local.get $1)
    (local.get $3)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $4)
  )
  (local.set $1
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 44)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $4)
   (i64.const -1)
  )
  (local.set $3
   (call $assembly/index/Game#constructor
    (i32.const 0)
    (i64.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i64.const 0)
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#constructor
    (i32.const 0)
    (local.get $1)
    (local.get $1)
    (call $assembly/index/Game.get:tableName)
    (call $assembly/index/Game#getTableIndexes
     (local.get $3)
     (local.get $1)
     (local.get $1)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $4)
  )
  (local.set $1
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 45)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $4)
   (i64.const -1)
  )
  (local.set $3
   (call $assembly/index/SpinResult#constructor
    (i32.const 0)
    (i64.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (i32.const 0)
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#constructor
    (i32.const 0)
    (local.get $1)
    (local.get $1)
    (call $assembly/index/SpinResult.get:tableName)
    (call $assembly/index/SpinResult#getTableIndexes
     (local.get $3)
     (local.get $1)
     (local.get $1)
    )
   )
  )
  (call $assembly/index/XprSlots#set:resultsTable
   (local.get $0)
   (local.get $4)
  )
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $1
   (local.get $0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 46)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $4)
   (i64.const -1)
  )
  (local.set $3
   (call $assembly/index/PlayerStats#constructor
    (i32.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#constructor
    (i32.const 0)
    (local.tee $0
     (local.get $2)
    )
    (local.get $0)
    (call $assembly/index/PlayerStats.get:tableName)
    (call $assembly/index/PlayerStats#getTableIndexes
     (local.get $3)
     (local.get $0)
     (local.get $0)
    )
   )
  )
  (call $assembly/index/XprSlots#set:playerStatsTable
   (local.get $1)
   (local.get $4)
  )
  (local.get $1)
 )
 (func $assembly/index/XprSlots#get:configSingleton (param $0 i32) (result i32)
  (i32.load offset=12
   (local.get $0)
  )
 )
 (func $assembly/index/XprSlots#get:gamesTable (param $0 i32) (result i32)
  (i32.load offset=16
   (local.get $0)
  )
 )
 (func $assembly/index/XprSlots#get:resultsTable (param $0 i32) (result i32)
  (i32.load offset=20
   (local.get $0)
  )
 )
 (func $assembly/index/XprSlots#get:playerStatsTable (param $0 i32) (result i32)
  (i32.load offset=24
   (local.get $0)
  )
 )
 (func $~lib/as-chain/action/requireAuth (param $0 i32)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#find
      (i32.load offset=8
       (local.get $0)
      )
      (i64.load
       (local.get $0)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#update
    (i32.load offset=8
     (local.get $0)
    )
    (local.get $3)
    (local.get $1)
    (local.get $2)
   )
   (drop
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#store
     (i32.load offset=8
      (local.get $0)
     )
     (local.get $1)
     (local.get $2)
    )
   )
  )
 )
 (func $assembly/index/XprSlots#init (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (block $__inlined_func$~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#getOrNull (result i32)
     (if
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#find
         (i32.load offset=8
          (local.tee $2
           (i32.load offset=12
            (local.get $0)
           )
          )
         )
         (i64.load
          (local.get $2)
         )
        )
       )
      )
      (br $__inlined_func$~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#getOrNull
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#getValue
        (local.get $2)
       )
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 3488)
  )
  (local.set $1
   (call $assembly/index/Config#constructor
    (i32.const 0)
    (local.get $1)
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 1)
    (i64.const 0)
   )
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#set
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/asset/Asset#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 48)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/asset/Asset#constructor@varargs (result i32)
  (local $0 i32)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $0
    (call $~lib/as-chain/asset/Symbol#constructor
     (i32.const 3568)
     (i32.const 0)
    )
   )
  )
  (call $~lib/as-chain/asset/Asset#constructor
   (i64.const 0)
   (local.get $0)
  )
 )
 (func $assembly/index/TokenAccount#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $0
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 47)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/index/TokenAccount.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 3607749779137757184)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/asset/Symbol#code (param $0 i32) (result i64)
  (i64.shr_u
   (i64.load
    (local.get $0)
   )
   (i64.const 8)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/TokenAccount>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 52)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $assembly/index/TokenAccount#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/index/XprSlots#getAvailableBalance (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local.set $2
   (global.get $assembly/index/TOKEN_CONTRACT)
  )
  (local.set $5
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 49)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $1)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/index/TokenAccount#constructor@varargs)
  )
  (local.set $6
   (call $assembly/index/TokenAccount.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/index/TokenAccount.get:tableName)
   )
  )
  (local.set $7
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 16)
    (i32.const 3600)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 50)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $0)
   (i64.const -1)
  )
  (local.set $3
   (i64.load
    (local.get $2)
   )
  )
  (local.set $4
   (i64.load
    (local.get $5)
   )
  )
  (local.set $8
   (i64.load
    (local.get $6)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 51)
    )
   )
   (local.get $3)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $2)
   (local.get $4)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $2)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (local.set $4
   (local.tee $3
    (call $~lib/as-chain/asset/Symbol#code
     (global.get $assembly/index/XPR_SYMBOL)
    )
   )
  )
  (local.set $1
   (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/index/TokenAccount>#find (result i32)
    (if
     (i32.ge_s
      (local.tee $1
       (call $~lib/as-chain/env/db_find_i64
        (i64.load
         (local.tee $0
          (i32.load
           (local.tee $2
            (i32.load
             (local.get $1)
            )
           )
          )
         )
        )
        (i64.load offset=8
         (local.get $0)
        )
        (i64.load offset=16
         (local.get $0)
        )
        (local.get $3)
       )
      )
      (i32.const 0)
     )
     (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/index/TokenAccount>#find
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/TokenAccount>#constructor
       (local.get $0)
       (local.get $1)
       (local.get $4)
       (i32.const 1)
      )
     )
    )
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/TokenAccount>#constructor
     (local.get $0)
     (local.get $1)
     (i64.const 0)
     (i32.const 0)
    )
   )
  )
  (local.set $0
   (i32.const 0)
  )
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.get $1)
   )
   (block
    (drop
     (i32.load
      (local.get $2)
     )
    )
    (if
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
      (local.get $1)
     )
     (if
      (local.tee $1
       (call $~lib/as-chain/env/db_get_i64
        (local.tee $2
         (i32.load offset=4
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
      )
      (block
       (drop
        (call $~lib/as-chain/env/db_get_i64
         (local.get $2)
         (i32.load offset=4
          (local.tee $2
           (call $~lib/array/Array<u8>#constructor
            (local.get $1)
           )
          )
         )
         (local.get $1)
        )
       )
       (global.set $~argumentsLength
        (i32.const 0)
       )
       (drop
        (call $assembly/index/TokenAccount#unpack
         (local.tee $0
          (call $assembly/index/TokenAccount#constructor@varargs)
         )
         (local.get $2)
        )
       )
      )
     )
    )
   )
  )
  (if
   (i32.eqz
    (local.get $0)
   )
   (return
    (i64.const 0)
   )
  )
  (i64.load
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/index/XprSlots#migrate (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (drop
   (call $assembly/index/XprSlots#getAvailableBalance
    (local.get $0)
   )
  )
  (local.set $1
   (call $assembly/index/Config#constructor
    (i32.const 0)
    (local.get $1)
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 1)
    (i64.const 0)
   )
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#set
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get (param $0 i32) (result i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#find
      (i32.load offset=8
       (local.get $0)
      )
      (i64.load
       (local.get $0)
      )
     )
    )
   )
   (block
    (if
     (i32.eqz
      (local.tee $0
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#getValue
        (local.get $0)
       )
      )
     )
     (unreachable)
    )
    (return
     (local.get $0)
    )
   )
  )
  (call $assembly/index/Config#constructor
   (i32.const 0)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (i32.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 1)
   (i64.const 0)
  )
 )
 (func $assembly/index/XprSlots#setOwner (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.tee $2
     (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/env/is_account
    (i64.load
     (local.get $1)
    )
   )
   (i32.const 3632)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#set
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/index/XprSlots#setPaused (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.tee $2
     (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
   )
  )
  (call $assembly/index/Config#set:paused
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#set
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eq
    (local.get $0)
    (local.get $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (select
    (i32.eqz
     (local.get $1)
    )
    (i32.const 1)
    (local.get $0)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (local.tee $2
     (call $~lib/string/String#get:length
      (local.get $0)
     )
    )
    (call $~lib/string/String#get:length
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (block $__inlined_func$~lib/util/string/compareImpl (result i32)
    (local.set $3
     (local.get $0)
    )
    (local.set $0
     (local.get $2)
    )
    (loop $while-continue|0
     (local.set $0
      (i32.sub
       (local.tee $2
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (if
      (local.get $2)
      (block
       (if
        (i32.ne
         (local.tee $2
          (i32.load16_u
           (local.get $3)
          )
         )
         (local.tee $4
          (i32.load16_u
           (local.get $1)
          )
         )
        )
        (br $__inlined_func$~lib/util/string/compareImpl
         (i32.sub
          (local.get $2)
          (local.get $4)
         )
        )
       )
       (local.set $3
        (i32.add
         (local.get $3)
         (i32.const 2)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 2)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/time/Microseconds#constructor (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 54)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/system/currentTimeSec (result i32)
  (local $0 i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/env/current_time)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 53)
    )
   )
   (call $~lib/as-chain/time/Microseconds#constructor
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/time/Microseconds#constructor
    (local.get $1)
   )
  )
  (i32.wrap_i64
   (i64.div_s
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
    (i64.const 1000000)
   )
  )
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $__inlined_func$~lib/string/String#concat
   (if
    (i32.eqz
     (local.tee $2
      (i32.add
       (local.tee $3
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.tee $4
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (block
     (local.set $2
      (i32.const 3568)
     )
     (br $__inlined_func$~lib/string/String#concat)
    )
   )
   (call $~lib/memory/memory.copy
    (local.tee $2
     (call $~lib/rt/stub/__new
      (local.get $2)
      (i32.const 1)
     )
    )
    (local.get $0)
    (local.get $3)
   )
   (call $~lib/memory/memory.copy
    (i32.add
     (local.get $2)
     (local.get $3)
    )
    (local.get $1)
    (local.get $4)
   )
  )
  (local.get $2)
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String> (result i32)
   (drop
    (br_if $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (i32.const 3568)
     (i32.lt_s
      (local.tee $3
       (i32.sub
        (i32.shr_u
         (i32.load offset=16
          (i32.sub
           (local.tee $1
            (local.get $0)
           )
           (i32.const 20)
          )
         )
         (i32.const 2)
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
    )
   )
   (if
    (i32.eqz
     (local.get $3)
    )
    (br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (if (result i32)
      (local.tee $0
       (i32.load
        (local.get $1)
       )
      )
      (local.get $0)
      (i32.const 3568)
     )
    )
   )
   (local.set $0
    (i32.const 3568)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 3568)
    )
   )
   (loop $for-loop|0
    (if
     (i32.lt_s
      (local.get $2)
      (local.get $3)
     )
     (block
      (if
       (local.tee $5
        (i32.load
         (i32.add
          (local.get $1)
          (i32.shl
           (local.get $2)
           (i32.const 2)
          )
         )
        )
       )
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (local.get $5)
        )
       )
      )
      (if
       (local.get $4)
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (i32.const 3568)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (if (result i32)
    (local.tee $1
     (i32.load
      (i32.add
       (local.get $1)
       (i32.shl
        (local.get $3)
        (i32.const 2)
       )
      )
     )
    )
    (call $~lib/string/String.__concat
     (local.get $0)
     (local.get $1)
    )
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/name/S2N (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local.set $2
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 13)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 4336)
   (i32.const 1)
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 4336)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i64.const 0)
     )
     (if
      (select
       (i32.le_s
        (local.get $1)
        (i32.const 12)
       )
       (i32.const 0)
       (i32.gt_s
        (call $~lib/string/String#get:length
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (block
       (local.set $2
        (call $~lib/string/String#charCodeAt
         (local.get $0)
         (local.get $1)
        )
       )
       (global.set $~argumentsLength
        (i32.const 1)
       )
       (if
        (i64.eq
         (local.tee $3
          (i64.extend_i32_u
           (i32.and
            (call_indirect (type $i32_=>_i32)
             (local.get $2)
             (i32.load
              (i32.const 1056)
             )
            )
            (i32.const 65535)
           )
          )
         )
         (i64.const 65535)
        )
        (block
         (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          (i32.const 4416)
          (i32.const 1)
          (local.get $0)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 4416)
          )
         )
         (return
          (i64.const 0)
         )
        )
       )
      )
     )
     (local.set $4
      (i64.or
       (local.get $4)
       (select
        (i64.shl
         (i64.and
          (local.get $3)
          (i64.const 31)
         )
         (i64.sub
          (i64.const 64)
          (i64.mul
           (i64.extend_i32_s
            (local.tee $2
             (i32.add
              (local.get $1)
              (i32.const 1)
             )
            )
           )
           (i64.const 5)
          )
         )
        )
        (i64.and
         (local.get $3)
         (i64.const 15)
        )
        (i32.lt_s
         (local.get $1)
         (i32.const 12)
        )
       )
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $4)
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 58)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $0)
     (i64.const 0)
    )
   )
   (local.set $2
    (call $~lib/as-chain/name/S2N
     (i32.const 4496)
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $1
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 5)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $1)
    (local.get $2)
   )
  )
  (call $~lib/as-chain/action/PermissionLevel#constructor
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/array/Array<~lib/as-chain/action/PermissionLevel>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/action/Action#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 61)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/proton-tsc/rng/rng.inline/RequestRandom#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=16
        (local.get $0)
       )
      )
      (i32.const 24)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/varint/calcPackedVarUint32Length (param $0 i32) (result i32)
  (local $1 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.tee $0
     (i32.shr_u
      (local.get $0)
      (i32.const 7)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Encoder#packName (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $0)
   (i64.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packLength (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (loop $while-continue|0
   (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
    (local.get $0)
    (select
     (i32.or
      (local.tee $2
       (i32.and
        (local.get $1)
        (i32.const 127)
       )
      )
      (i32.const 128)
     )
     (local.get $2)
     (local.tee $1
      (i32.shr_u
       (local.get $1)
       (i32.const 7)
      )
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/action/Action#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (i32.add
        (i32.add
         (call $~lib/as-chain/varint/calcPackedVarUint32Length
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
         )
         (i32.shl
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
          (i32.const 4)
         )
        )
        (i32.const 16)
       )
       (call $~lib/as-chain/varint/calcPackedVarUint32Length
        (i32.load offset=12
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
      )
      (i32.load offset=12
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=8
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (local.tee $0
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $1)
   (local.tee $0
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
    )
    (local.get $2)
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/Action#send (param $0 i32)
  (local $1 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $0
     (call $~lib/as-chain/action/Action#pack
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/env/send_inline
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $assembly/index/XprSlots#handleSpin (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load8_u offset=4
     (local.tee $3
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.const 3824)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $2)
     )
    )
    (i64.const 10000)
   )
   (i32.const 3888)
  )
  (call $~lib/as-chain/system/check
   (i64.le_u
    (local.get $4)
    (i64.const 10000000)
   )
   (i32.const 3968)
  )
  (local.set $2
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#getValue
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#begin
     (i32.load
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
   )
  )
  (loop $while-continue|0
   (if
    (local.get $2)
    (block $while-break|0
     (if
      (if (result i32)
       (i64.eq
        (i64.load
         (i32.load offset=8
          (local.get $2)
         )
        )
        (i64.load
         (local.get $1)
        )
       )
       (i32.eq
        (i32.load8_u offset=24
         (local.get $2)
        )
        (i32.const 1)
       )
       (i32.const 0)
      )
      (block
       (local.set $8
        (i32.const 1)
       )
       (br $while-break|0)
      )
     )
     (local.set $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#requireFind
       (i32.load
        (local.tee $5
         (i32.load offset=16
          (local.get $0)
         )
        )
       )
       (i64.load
        (local.get $2)
       )
       (i32.const 1872)
      )
     )
     (local.set $2
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Game>#getValue
       (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#next
        (i32.load
         (local.get $5)
        )
        (local.get $2)
       )
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (local.get $8)
   )
   (i32.const 4048)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_u
    (call $assembly/index/XprSlots#getAvailableBalance
     (local.get $0)
    )
    (i64.div_u
     (i64.mul
      (local.get $4)
      (i64.const 50000)
     )
     (i64.const 10000)
    )
   )
   (i32.const 4144)
  )
  (local.set $7
   (i64.xor
    (i64.xor
     (local.tee $6
      (i64.load offset=48
       (local.get $3)
      )
     )
     (i64.load
      (local.get $1)
     )
    )
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
   )
  )
  (call $assembly/index/Config#set:nextGameId
   (local.get $3)
   (i64.add
    (i64.load offset=48
     (local.get $3)
    )
    (i64.const 1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $3)
   (i64.add
    (i64.load offset=8
     (local.get $3)
    )
    (i64.const 1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $3)
   (i64.add
    (local.get $4)
    (i64.load offset=16
     (local.get $3)
    )
   )
  )
  (call $assembly/index/Config#set:jackpotPool
   (local.get $3)
   (i64.add
    (i64.load offset=32
     (local.get $3)
    )
    (i64.div_u
     (i64.mul
      (local.get $4)
      (i64.const 6)
     )
     (i64.const 100)
    )
   )
  )
  (call $assembly/index/Config#set:houseBalance
   (local.get $3)
   (i64.add
    (i64.load offset=40
     (local.get $3)
    )
    (i64.div_u
     (i64.mul
      (local.get $4)
      (i64.const 5)
     )
     (i64.const 100)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#set
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
  (local.set $2
   (call $assembly/index/Game#constructor
    (i32.const 0)
    (local.get $6)
    (local.get $1)
    (local.get $4)
    (i32.const 1)
    (local.get $7)
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
   )
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#requireNotFind
    (i32.load
     (local.tee $1
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (local.tee $4
     (i64.load
      (local.get $2)
     )
    )
    (i32.const 1200)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#store
    (i32.load
     (local.get $1)
    )
    (local.get $2)
    (local.get $3)
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $1)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $1)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 56)
    )
   )
   (i32.const 0)
  )
  (local.set $4
   (call $~lib/as-chain/name/S2N
    (i32.const 4448)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (local.get $4)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $1
   (global.get $~lib/proton-tsc/rng/rng.inline/RNG_CONTRACT)
  )
  (local.set $3
   (call $~lib/as-chain/action/PermissionLevel#constructor@varargs
    (local.get $2)
   )
  )
  (local.set $5
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 59)
    )
   )
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 20)
     (i32.const 55)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $1)
   (local.get $7)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $1)
   (local.get $2)
  )
  (drop
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 60)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/action/PermissionLevel>#__uset
   (local.get $2)
   (i32.const 0)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load
     (local.get $0)
    )
    (local.get $2)
    (call $~lib/proton-tsc/rng/rng.inline/RequestRandom#pack
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i32.load8_u
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
  )
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (local.set $3
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (select
     (i32.eqz
      (i32.and
       (local.tee $0
        (i32.sub
         (local.get $0)
         (i32.const 16)
        )
       )
       (i32.const 15)
      )
     )
     (i32.const 0)
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $6
   (i32.eq
    (global.get $~lib/rt/stub/offset)
    (i32.add
     (local.get $0)
     (local.tee $4
      (i32.load
       (local.tee $5
        (i32.sub
         (local.get $0)
         (i32.const 4)
        )
       )
      )
     )
    )
   )
  )
  (local.set $2
   (i32.sub
    (i32.and
     (i32.add
      (local.get $3)
      (i32.const 19)
     )
     (i32.const -16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.gt_u
    (local.get $3)
    (local.get $4)
   )
   (if
    (local.get $6)
    (block
     (if
      (i32.gt_u
       (local.get $3)
       (i32.const 1073741820)
      )
      (unreachable)
     )
     (call $~lib/rt/stub/maybeGrowMemory
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $2
       (call $~lib/rt/stub/__alloc
        (select
         (local.get $2)
         (local.tee $3
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
         (i32.gt_u
          (local.get $2)
          (local.get $3)
         )
        )
       )
      )
      (local.get $0)
      (local.get $4)
     )
     (local.set $0
      (local.get $2)
     )
    )
   )
   (if
    (local.get $6)
    (block
     (global.set $~lib/rt/stub/offset
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (i32.sub
    (local.get $0)
    (i32.const 4)
   )
   (local.get $1)
  )
  (i32.add
   (local.get $0)
   (i32.const 16)
  )
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.shr_u
     (local.tee $3
      (i32.load offset=8
       (local.get $0)
      )
     )
     (local.get $2)
    )
   )
   (block
    (if
     (i32.gt_u
      (local.get $1)
      (i32.shr_u
       (i32.const 1073741820)
       (local.get $2)
      )
     )
     (unreachable)
    )
    (local.set $1
     (i32.shl
      (select
       (local.get $1)
       (i32.const 8)
       (i32.gt_u
        (local.get $1)
        (i32.const 8)
       )
      )
      (local.get $2)
     )
    )
    (call $~lib/memory/memory.fill
     (i32.add
      (local.tee $2
       (call $~lib/rt/stub/__renew
        (local.tee $4
         (i32.load
          (local.get $0)
         )
        )
        (local.tee $1
         (select
          (local.tee $2
           (select
            (local.tee $2
             (i32.shl
              (local.get $3)
              (i32.const 1)
             )
            )
            (i32.const 1073741820)
            (i32.lt_u
             (local.get $2)
             (i32.const 1073741820)
            )
           )
          )
          (local.get $1)
          (i32.lt_u
           (local.get $1)
           (local.get $2)
          )
         )
        )
       )
      )
      (local.get $3)
     )
     (i32.sub
      (local.get $1)
      (local.get $3)
     )
    )
    (if
     (i32.ne
      (local.get $2)
      (local.get $4)
     )
     (block
      (i32.store
       (local.get $0)
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $0)
       (local.get $2)
      )
     )
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $3
     (i32.add
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.shl
      (local.get $1)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $3)
    )
    (block $while-break|0
     (local.set $2
      (i32.load8_u
       (local.get $0)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (if
      (i32.and
       (local.get $2)
       (i32.const 128)
      )
      (block
       (br_if $while-break|0
        (i32.eq
         (local.get $0)
         (local.get $3)
        )
       )
       (local.set $4
        (i32.and
         (i32.load8_u
          (local.get $0)
         )
         (i32.const 63)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (if
        (i32.eq
         (i32.and
          (local.get $2)
          (i32.const 224)
         )
         (i32.const 192)
        )
        (i32.store16
         (local.get $1)
         (i32.or
          (local.get $4)
          (i32.shl
           (i32.and
            (local.get $2)
            (i32.const 31)
           )
           (i32.const 6)
          )
         )
        )
        (block
         (br_if $while-break|0
          (i32.eq
           (local.get $0)
           (local.get $3)
          )
         )
         (local.set $6
          (i32.and
           (i32.load8_u
            (local.get $0)
           )
           (i32.const 63)
          )
         )
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (if
          (i32.eq
           (i32.and
            (local.get $2)
            (i32.const 240)
           )
           (i32.const 224)
          )
          (local.set $2
           (i32.or
            (local.get $6)
            (i32.or
             (i32.shl
              (i32.and
               (local.get $2)
               (i32.const 15)
              )
              (i32.const 12)
             )
             (i32.shl
              (local.get $4)
              (i32.const 6)
             )
            )
           )
          )
          (block
           (br_if $while-break|0
            (i32.eq
             (local.get $0)
             (local.get $3)
            )
           )
           (local.set $2
            (i32.or
             (i32.and
              (i32.load8_u
               (local.get $0)
              )
              (i32.const 63)
             )
             (i32.or
              (i32.or
               (i32.shl
                (i32.and
                 (local.get $2)
                 (i32.const 7)
                )
                (i32.const 18)
               )
               (i32.shl
                (local.get $4)
                (i32.const 12)
               )
              )
              (i32.shl
               (local.get $6)
               (i32.const 6)
              )
             )
            )
           )
           (local.set $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $2)
           (i32.const 65536)
          )
          (i32.store16
           (local.get $1)
           (local.get $2)
          )
          (block
           (i32.store
            (local.get $1)
            (i32.or
             (i32.or
              (i32.shr_u
               (local.tee $2
                (i32.sub
                 (local.get $2)
                 (i32.const 65536)
                )
               )
               (i32.const 10)
              )
              (i32.const 55296)
             )
             (i32.shl
              (i32.or
               (i32.and
                (local.get $2)
                (i32.const 1023)
               )
               (i32.const 56320)
              )
              (i32.const 16)
             )
            )
           )
           (local.set $1
            (i32.add
             (local.get $1)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (i32.store16
       (local.get $1)
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $~lib/rt/stub/__renew
   (local.get $5)
   (i32.sub
    (local.get $1)
    (local.get $5)
   )
  )
 )
 (func $~lib/string/String.UTF8.decode (param $0 i32) (result i32)
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/name/N2S (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $2
   (call $~lib/array/Array<u8>#constructor
    (i32.const 13)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i32.sub
       (i32.const 12)
       (local.get $1)
      )
     )
     (local.set $4
      (if (result i32)
       (local.get $1)
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $0)
          (i64.const 31)
         )
        )
       )
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $0)
          (i64.const 15)
         )
        )
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $3)
       (i32.load offset=12
        (local.get $2)
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $3)
         (i32.const 0)
        )
        (unreachable)
       )
       (call $~lib/array/ensureCapacity
        (local.get $2)
        (local.tee $5
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
        (i32.const 0)
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $2)
        (local.get $5)
       )
      )
     )
     (i32.store8
      (i32.add
       (local.get $3)
       (i32.load offset=4
        (local.get $2)
       )
      )
      (local.get $4)
     )
     (local.set $0
      (select
       (i64.shr_u
        (local.get $0)
        (i64.const 5)
       )
       (i64.shr_u
        (local.get $0)
        (i64.const 4)
       )
       (local.get $1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $1
   (i32.sub
    (i32.load offset=12
     (local.get $2)
    )
    (i32.const 1)
   )
  )
  (loop $for-loop|1
   (if
    (i32.ge_s
     (local.get $1)
     (i32.const 0)
    )
    (if
     (i32.eq
      (call $~lib/array/Array<u8>#__get
       (local.get $2)
       (local.get $1)
      )
      (i32.const 46)
     )
     (block
      (local.set $1
       (i32.sub
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (call $~lib/array/Array<u8>#slice
     (local.get $2)
     (i32.const 0)
     (i32.add
      (local.get $1)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/name/Name#toString (param $0 i32) (result i32)
  (call $~lib/as-chain/name/N2S
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  (select
   (select
    (i32.add
     (i32.ge_u
      (local.get $0)
      (i32.const 10)
     )
     (i32.const 1)
    )
    (i32.add
     (i32.add
      (i32.ge_u
       (local.get $0)
       (i32.const 10000)
      )
      (i32.const 3)
     )
     (i32.ge_u
      (local.get $0)
      (i32.const 1000)
     )
    )
    (i32.lt_u
     (local.get $0)
     (i32.const 100)
    )
   )
   (select
    (i32.add
     (i32.ge_u
      (local.get $0)
      (i32.const 1000000)
     )
     (i32.const 6)
    )
    (i32.add
     (i32.add
      (i32.ge_u
       (local.get $0)
       (i32.const 1000000000)
      )
      (i32.const 8)
     )
     (i32.ge_u
      (local.get $0)
      (i32.const 100000000)
     )
    )
    (i32.lt_u
     (local.get $0)
     (i32.const 10000000)
    )
   )
   (i32.lt_u
    (local.get $0)
    (i32.const 100000)
   )
  )
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (loop $do-continue|0
   (i32.store16
    (i32.add
     (local.get $0)
     (i32.shl
      (local.tee $2
       (i32.sub
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.add
     (i32.rem_u
      (local.get $1)
      (i32.const 10)
     )
     (i32.const 48)
    )
   )
   (br_if $do-continue|0
    (local.tee $1
     (i32.div_u
      (local.get $1)
      (i32.const 10)
     )
    )
   )
  )
 )
 (func $~lib/util/number/decimalCount64High (param $0 i64) (result i32)
  (select
   (select
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const 100000000000)
      )
      (i32.const 10)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000)
     )
    )
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const 100000000000000)
      )
      (i32.const 13)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000000)
     )
    )
    (i64.lt_u
     (local.get $0)
     (i64.const 1000000000000)
    )
   )
   (select
    (i32.add
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000000000)
     )
     (i32.const 16)
    )
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const -8446744073709551616)
      )
      (i32.const 18)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 1000000000000000000)
     )
    )
    (i64.lt_u
     (local.get $0)
     (i64.const 100000000000000000)
    )
   )
   (i64.lt_u
    (local.get $0)
    (i64.const 1000000000000000)
   )
  )
 )
 (func $~lib/util/number/utoa_dec_simple<u64> (param $0 i32) (param $1 i64) (param $2 i32)
  (loop $do-continue|0
   (i32.store16
    (i32.add
     (local.get $0)
     (i32.shl
      (local.tee $2
       (i32.sub
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.add
     (i32.wrap_i64
      (i64.rem_u
       (local.get $1)
       (i64.const 10)
      )
     )
     (i32.const 48)
    )
   )
   (br_if $do-continue|0
    (i64.ne
     (local.tee $1
      (i64.div_u
       (local.get $1)
       (i64.const 10)
      )
     )
     (i64.const 0)
    )
   )
  )
 )
 (func $~lib/string/String#padStart (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local.set $4
   (i32.shl
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 1)
   )
  )
  (if
   (select
    (i32.const 1)
    (i32.eqz
     (local.tee $3
      (i32.shl
       (call $~lib/string/String#get:length
        (i32.const 4720)
       )
       (i32.const 1)
      )
     )
    )
    (i32.gt_u
     (local.get $4)
     (local.tee $2
      (i32.shl
       (local.get $1)
       (i32.const 1)
      )
     )
    )
   )
   (return
    (local.get $0)
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $2)
    (i32.const 1)
   )
  )
  (if
   (i32.gt_u
    (local.tee $2
     (i32.sub
      (local.get $2)
      (local.get $4)
     )
    )
    (local.get $3)
   )
   (block
    (local.set $7
     (i32.mul
      (local.tee $5
       (i32.div_u
        (i32.sub
         (local.get $2)
         (i32.const 2)
        )
        (local.get $3)
       )
      )
      (local.get $3)
     )
    )
    (local.set $5
     (i32.mul
      (local.get $3)
      (local.get $5)
     )
    )
    (loop $while-continue|0
     (if
      (i32.gt_u
       (local.get $5)
       (local.get $6)
      )
      (block
       (call $~lib/memory/memory.copy
        (i32.add
         (local.get $1)
         (local.get $6)
        )
        (i32.const 4720)
        (local.get $3)
       )
       (local.set $6
        (i32.add
         (local.get $3)
         (local.get $6)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (call $~lib/memory/memory.copy
     (i32.add
      (local.get $1)
      (local.get $7)
     )
     (i32.const 4720)
     (i32.sub
      (local.get $2)
      (local.get $7)
     )
    )
   )
   (call $~lib/memory/memory.copy
    (local.get $1)
    (i32.const 4720)
    (local.get $2)
   )
  )
  (call $~lib/memory/memory.copy
   (i32.add
    (local.get $1)
    (local.get $2)
   )
   (local.get $0)
   (local.get $4)
  )
  (local.get $1)
 )
 (func $~lib/string/String#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/string/String#get:length
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (if
   (i32.le_s
    (local.tee $2
     (i32.sub
      (if (result i32)
       (i32.lt_s
        (local.get $2)
        (i32.const 0)
       )
       (select
        (local.tee $2
         (i32.add
          (local.get $2)
          (local.get $3)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
       (select
        (local.get $2)
        (local.get $3)
        (i32.lt_s
         (local.get $2)
         (local.get $3)
        )
       )
      )
      (local.get $1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 3568)
   )
  )
  (call $~lib/memory/memory.copy
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (local.get $2)
       (i32.const 1)
      )
     )
     (i32.const 1)
    )
   )
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 62)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 2)
      )
     )
    )
    (local.get $1)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $2
    (call $~lib/rt/stub/__new
     (local.get $0)
     (i32.const 0)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/asset/Symbol#getSymbolString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $2
   (call $~lib/typedarray/Uint8Array#constructor
    (i32.const 7)
   )
  )
  (local.set $3
   (i64.load
    (local.get $0)
   )
  )
  (loop $for-loop|0
   (if
    (i32.eqz
     (i64.eqz
      (local.tee $3
       (i64.shr_u
        (local.get $3)
        (i64.const 8)
       )
      )
     )
    )
    (block
     (local.set $0
      (i32.wrap_i64
       (i64.and
        (local.get $3)
        (i64.const 255)
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $1)
       (i32.load offset=8
        (local.get $2)
       )
      )
      (unreachable)
     )
     (i32.store8
      (i32.add
       (local.get $1)
       (i32.load offset=4
        (local.get $2)
       )
      )
      (local.get $0)
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $4
   (select
    (i32.const 0)
    (local.tee $0
     (i32.load offset=8
      (local.get $2)
     )
    )
    (i32.gt_s
     (local.get $0)
     (i32.const 0)
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $1
     (call $~lib/typedarray/Uint8Array#constructor
      (local.tee $0
       (select
        (local.tee $0
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $1)
            (i32.const 0)
           )
           (select
            (local.tee $0
             (i32.add
              (local.get $0)
              (local.get $1)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $0)
             (i32.const 0)
            )
           )
           (select
            (local.get $1)
            (local.get $0)
            (i32.gt_s
             (local.get $0)
             (local.get $1)
            )
           )
          )
          (local.get $4)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $0)
         (i32.const 0)
        )
       )
      )
     )
    )
   )
   (i32.add
    (local.get $4)
    (i32.load offset=4
     (local.get $2)
    )
   )
   (local.get $0)
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/asset/Asset#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $3
   (i32.wrap_i64
    (i64.and
     (i64.load
      (i32.load offset=8
       (local.get $0)
      )
     )
     (i64.const 255)
    )
   )
  )
  (block $__inlined_func$~lib/util/number/itoa64
   (if
    (i64.eqz
     (local.tee $2
      (i64.load
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (i32.const 4720)
     )
     (br $__inlined_func$~lib/util/number/itoa64)
    )
   )
   (if
    (i64.le_u
     (local.tee $2
      (select
       (i64.sub
        (i64.const 0)
        (local.get $2)
       )
       (local.get $2)
       (local.tee $4
        (i32.wrap_i64
         (i64.shr_u
          (local.get $2)
          (i64.const 63)
         )
        )
       )
      )
     )
     (i64.const 4294967295)
    )
    (call $~lib/util/number/utoa_dec_simple<u32>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $5
         (i32.add
          (call $~lib/util/number/decimalCount32
           (local.tee $6
            (i32.wrap_i64
             (local.get $2)
            )
           )
          )
          (local.get $4)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $6)
     (local.get $5)
    )
    (call $~lib/util/number/utoa_dec_simple<u64>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $5
         (i32.add
          (call $~lib/util/number/decimalCount64High
           (local.get $2)
          )
          (local.get $4)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $2)
     (local.get $5)
    )
   )
   (if
    (local.get $4)
    (i32.store16
     (local.get $1)
     (i32.const 45)
    )
   )
  )
  (local.set $1
   (call $~lib/string/String#padStart
    (local.get $1)
    (i32.and
     (i32.add
      (local.get $3)
      (i32.const 1)
     )
     (i32.const 255)
    )
   )
  )
  (call $~lib/string/String.__concat
   (call $~lib/string/String.__concat
    (if (result i32)
     (local.get $3)
     (call $~lib/string/String.__concat
      (call $~lib/string/String.__concat
       (call $~lib/string/String#slice
        (local.get $1)
        (i32.const 0)
        (i32.sub
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (local.get $3)
        )
       )
       (i32.const 4848)
      )
      (call $~lib/string/String#slice
       (local.get $1)
       (i32.sub
        (call $~lib/string/String#get:length
         (local.get $1)
        )
        (local.get $3)
       )
       (call $~lib/string/String#get:length
        (local.get $1)
       )
      )
     )
     (local.get $1)
    )
    (i32.const 4880)
   )
   (call $~lib/as-chain/asset/Symbol#getSymbolString
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/debug/print (param $0 i32)
  (local.set $0
   (call $~lib/string/String.UTF8.encode
    (local.get $0)
    (i32.const 0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/as-chain/env/prints_l
   (i32.load offset=4
    (local.tee $0
     (call $~lib/dataview/DataView#constructor@varargs
      (local.get $0)
     )
    )
   )
   (i32.load offset=8
    (local.get $0)
   )
  )
 )
 (func $assembly/index/XprSlots#onTransfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (if
   (i64.ne
    (i64.load
     (i32.load offset=4
      (local.get $0)
     )
    )
    (i64.load
     (global.get $assembly/index/TOKEN_CONTRACT)
    )
   )
   (return)
  )
  (if
   (i64.ne
    (i64.load
     (local.get $2)
    )
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
   )
   (return)
  )
  (if
   (i64.eq
    (i64.load
     (local.get $1)
    )
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
   )
   (return)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $3)
     )
    )
    (i64.load
     (global.get $assembly/index/XPR_SYMBOL)
    )
   )
   (i32.const 3728)
  )
  (if
   (call $~lib/string/String.__eq
    (local.get $4)
    (i32.const 3792)
   )
   (call $assembly/index/XprSlots#handleSpin
    (local.get $0)
    (local.get $1)
    (local.get $3)
   )
   (if
    (call $~lib/string/String.__eq
     (local.get $4)
     (i32.const 4528)
    )
    (block
     (call $assembly/index/Config#set:houseBalance
      (local.tee $2
       (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
        (i32.load offset=12
         (local.get $0)
        )
       )
      )
      (i64.add
       (i64.load offset=40
        (local.get $2)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#set
      (i32.load offset=12
       (local.get $0)
      )
      (local.get $2)
      (i32.load
       (local.get $0)
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 4672)
      (i32.const 1)
      (call $~lib/as-chain/name/Name#toString
       (local.get $1)
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 4672)
      (i32.const 3)
      (call $~lib/as-chain/asset/Asset#toString
       (local.get $3)
      )
     )
     (call $~lib/as-chain/debug/print
      (call $~lib/staticarray/StaticArray<~lib/string/String>#join
       (i32.const 4672)
      )
     )
    )
    (if
     (call $~lib/string/String.__eq
      (local.get $4)
      (i32.const 4912)
     )
     (block
      (call $assembly/index/Config#set:jackpotPool
       (local.tee $2
        (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
       (i64.add
        (i64.load offset=32
         (local.get $2)
        )
        (i64.load
         (local.get $3)
        )
       )
      )
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#set
       (i32.load offset=12
        (local.get $0)
       )
       (local.get $2)
       (i32.load
        (local.get $0)
       )
      )
      (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
       (i32.const 5024)
       (i32.const 1)
       (call $~lib/as-chain/name/Name#toString
        (local.get $1)
       )
      )
      (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
       (i32.const 5024)
       (i32.const 3)
       (call $~lib/as-chain/asset/Asset#toString
        (local.get $3)
       )
      )
      (call $~lib/as-chain/debug/print
       (call $~lib/staticarray/StaticArray<~lib/string/String>#join
        (i32.const 5024)
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i32.const 0)
      (i32.const 5072)
     )
    )
   )
  )
 )
 (func $assembly/index/XprSlots#getReelSymbol (param $0 i64) (result i32)
  (if
   (i64.lt_u
    (local.get $0)
    (i64.const 40)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i64.lt_u
    (local.get $0)
    (i64.const 70)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (i64.lt_u
    (local.get $0)
    (i64.const 95)
   )
   (return
    (i32.const 2)
   )
  )
  (if
   (i64.lt_u
    (local.get $0)
    (i64.const 115)
   )
   (return
    (i32.const 3)
   )
  )
  (i32.const 4)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#get (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#getByKey
   (i32.load
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/SpinResult>#remove (param $0 i32) (param $1 i32)
  (local $2 i64)
  (drop
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.tee $2
     (i64.load
      (local.get $1)
     )
    )
    (i32.const 1648)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#removeEx
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
  (if
   (i64.eq
    (local.get $2)
    (i64.sub
     (i64.load offset=8
      (local.get $0)
     )
     (i64.const 1)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $0)
    (i64.const -1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/Game>#remove (param $0 i32) (param $1 i32)
  (local $2 i64)
  (drop
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.tee $2
     (i64.load
      (local.get $1)
     )
    )
    (i32.const 1648)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#removeEx
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
  (if
   (i64.eq
    (local.get $2)
    (i64.sub
     (i64.load offset=8
      (local.get $0)
     )
     (i64.const 1)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $0)
    (i64.const -1)
   )
  )
 )
 (func $~lib/number/U8#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $__inlined_func$~lib/util/number/utoa32
   (if
    (i32.eqz
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 255)
      )
     )
    )
    (block
     (local.set $0
      (i32.const 4720)
     )
     (br $__inlined_func$~lib/util/number/utoa32)
    )
   )
   (call $~lib/util/number/utoa_dec_simple<u32>
    (local.tee $0
     (call $~lib/rt/stub/__new
      (i32.shl
       (local.tee $2
        (call $~lib/util/number/decimalCount32
         (local.get $1)
        )
       )
       (i32.const 1)
      )
      (i32.const 1)
     )
    )
    (local.get $1)
    (local.get $2)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/utils/Utils.calcPackedStringLength (param $0 i32) (result i32)
  (i32.add
   (call $~lib/as-chain/varint/calcPackedVarUint32Length
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.tee $0
      (call $~lib/string/String.UTF8.encode
       (local.get $0)
       (i32.const 0)
      )
     )
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $1
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $2
   (i32.add
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (local.get $2)
    (local.get $1)
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.get $1)
    )
   )
  )
  (drop
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/token/token.inline/Transfer#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=4
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.add
       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
        (i32.load offset=12
         (local.get $0)
        )
       )
       (i32.const 32)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/token/token.inline/sendTransferToken (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 66)
    )
   )
   (i32.const 0)
  )
  (local.set $7
   (call $~lib/as-chain/name/S2N
    (i32.const 5520)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (local.get $7)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $5)
   (local.get $6)
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $6
   (call $~lib/as-chain/action/PermissionLevel#constructor@varargs
    (local.get $1)
   )
  )
  (local.set $8
   (i32.load
    (local.get $5)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 67)
    )
   )
   (local.get $8)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $5)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 65)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $4)
  )
  (drop
   (i32.load offset=4
    (local.tee $1
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 60)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/action/PermissionLevel>#__uset
   (local.get $1)
   (i32.const 0)
   (i32.load offset=8
    (local.get $5)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (i32.load offset=4
     (local.get $5)
    )
    (i32.load
     (local.get $5)
    )
    (local.get $1)
    (call $~lib/proton-tsc/token/token.inline/Transfer#pack
     (local.get $0)
    )
   )
  )
 )
 (func $assembly/index/XprSlots#receiveRand (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (call $~lib/as-chain/action/requireAuth
   (global.get $~lib/proton-tsc/rng/rng.inline/RNG_CONTRACT)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $5
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#find
      (i32.load
       (local.tee $4
        (i32.load offset=16
         (local.get $0)
        )
       )
      )
      (local.get $1)
     )
    )
   )
   (i32.const 5200)
  )
  (call $~lib/as-chain/system/check
   (i32.eq
    (i32.load8_u offset=24
     (local.tee $4
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#get
       (i32.load
        (local.get $4)
       )
       (local.get $5)
      )
     )
    )
    (i32.const 1)
   )
   (i32.const 5248)
  )
  (local.set $1
   (i64.rem_u
    (i64.or
     (i64.or
      (i64.or
       (i64.extend_i32_u
        (call $~lib/array/Array<u8>#__get
         (local.tee $2
          (i32.load
           (local.get $2)
          )
         )
         (i32.const 0)
        )
       )
       (i64.shl
        (i64.extend_i32_u
         (call $~lib/array/Array<u8>#__get
          (local.get $2)
          (i32.const 1)
         )
        )
        (i64.const 8)
       )
      )
      (i64.shl
       (i64.extend_i32_u
        (call $~lib/array/Array<u8>#__get
         (local.get $2)
         (i32.const 2)
        )
       )
       (i64.const 16)
      )
     )
     (i64.shl
      (i64.extend_i32_u
       (call $~lib/array/Array<u8>#__get
        (local.get $2)
        (i32.const 3)
       )
      )
      (i64.const 24)
     )
    )
    (i64.const 125)
   )
  )
  (local.set $3
   (i64.rem_u
    (i64.or
     (i64.or
      (i64.or
       (i64.extend_i32_u
        (call $~lib/array/Array<u8>#__get
         (local.get $2)
         (i32.const 8)
        )
       )
       (i64.shl
        (i64.extend_i32_u
         (call $~lib/array/Array<u8>#__get
          (local.get $2)
          (i32.const 9)
         )
        )
        (i64.const 8)
       )
      )
      (i64.shl
       (i64.extend_i32_u
        (call $~lib/array/Array<u8>#__get
         (local.get $2)
         (i32.const 10)
        )
       )
       (i64.const 16)
      )
     )
     (i64.shl
      (i64.extend_i32_u
       (call $~lib/array/Array<u8>#__get
        (local.get $2)
        (i32.const 11)
       )
      )
      (i64.const 24)
     )
    )
    (i64.const 125)
   )
  )
  (local.set $7
   (i64.rem_u
    (i64.or
     (i64.or
      (i64.or
       (i64.extend_i32_u
        (call $~lib/array/Array<u8>#__get
         (local.get $2)
         (i32.const 16)
        )
       )
       (i64.shl
        (i64.extend_i32_u
         (call $~lib/array/Array<u8>#__get
          (local.get $2)
          (i32.const 17)
         )
        )
        (i64.const 8)
       )
      )
      (i64.shl
       (i64.extend_i32_u
        (call $~lib/array/Array<u8>#__get
         (local.get $2)
         (i32.const 18)
        )
       )
       (i64.const 16)
      )
     )
     (i64.shl
      (i64.extend_i32_u
       (call $~lib/array/Array<u8>#__get
        (local.get $2)
        (i32.const 19)
       )
      )
      (i64.const 24)
     )
    )
    (i64.const 125)
   )
  )
  (local.set $5
   (call $assembly/index/XprSlots#getReelSymbol
    (local.get $1)
   )
  )
  (local.set $8
   (call $assembly/index/XprSlots#getReelSymbol
    (local.get $3)
   )
  )
  (local.set $9
   (call $assembly/index/XprSlots#getReelSymbol
    (local.get $7)
   )
  )
  (local.set $7
   (local.tee $3
    (call $assembly/index/XprSlots#getAvailableBalance
     (local.get $0)
    )
   )
  )
  (if
   (i64.gt_u
    (local.tee $1
     (select
      (local.get $3)
      (local.tee $1
       (if (result i64)
        (select
         (i32.eq
          (local.get $8)
          (local.get $9)
         )
         (i32.const 0)
         (i32.eq
          (local.get $5)
          (local.get $8)
         )
        )
        (if (result i64)
         (i32.eq
          (local.get $5)
          (i32.const 4)
         )
         (block (result i64)
          (local.set $10
           (i32.const 1)
          )
          (if (result i64)
           (i64.gt_u
            (block (result i64)
             (if
              (i64.gt_u
               (local.tee $1
                (i64.load offset=32
                 (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
                  (i32.load offset=12
                   (local.get $0)
                  )
                 )
                )
               )
               (i64.const 10000000000)
              )
              (local.set $1
               (i64.const 10000000000)
              )
             )
             (local.get $1)
            )
            (local.get $3)
           )
           (local.get $3)
           (local.get $1)
          )
         )
         (if (result i64)
          (i32.eq
           (local.get $5)
           (i32.const 1)
          )
          (i64.div_u
           (i64.mul
            (i64.load offset=16
             (local.get $4)
            )
            (i64.const 50000)
           )
           (i64.const 10000)
          )
          (if (result i64)
           (i32.eq
            (local.get $5)
            (i32.const 3)
           )
           (i64.div_u
            (i64.mul
             (i64.load offset=16
              (local.get $4)
             )
             (i64.const 240000)
            )
            (i64.const 10000)
           )
           (if (result i64)
            (i32.eq
             (local.get $5)
             (i32.const 2)
            )
            (i64.div_u
             (i64.mul
              (i64.load offset=16
               (local.get $4)
              )
              (i64.const 120000)
             )
             (i64.const 10000)
            )
            (if (result i64)
             (local.get $5)
             (i64.const 0)
             (i64.div_u
              (i64.mul
               (i64.load offset=16
                (local.get $4)
               )
               (i64.const 30000)
              )
              (i64.const 10000)
             )
            )
           )
          )
         )
        )
        (if (result i64)
         (select
          (i32.const 1)
          (i32.eq
           (local.get $5)
           (local.get $9)
          )
          (select
           (i32.const 1)
           (i32.eq
            (local.get $8)
            (local.get $9)
           )
           (i32.eq
            (local.get $5)
            (local.get $8)
           )
          )
         )
         (i64.div_u
          (i64.mul
           (i64.load offset=16
            (local.get $4)
           )
           (i64.const 10000)
          )
          (i64.const 10000)
         )
         (i64.const 0)
        )
       )
      )
      (i64.gt_u
       (local.get $1)
       (local.get $7)
      )
     )
    )
    (i64.const 10000000000)
   )
   (local.set $1
    (i64.const 10000000000)
   )
  )
  (local.set $2
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (if
   (local.get $10)
   (if
    (i64.ge_u
     (local.get $1)
     (i64.load offset=32
      (local.get $2)
     )
    )
    (call $assembly/index/Config#set:jackpotPool
     (local.get $2)
     (i64.const 0)
    )
    (call $assembly/index/Config#set:jackpotPool
     (local.get $2)
     (i64.sub
      (i64.load offset=32
       (local.get $2)
      )
      (local.get $1)
     )
    )
   )
  )
  (call $assembly/index/Config#set:totalPaidOut
   (local.get $2)
   (i64.add
    (local.get $1)
    (i64.load offset=24
     (local.get $2)
    )
   )
  )
  (local.set $7
   (i64.load offset=56
    (local.get $2)
   )
  )
  (call $assembly/index/Config#set:nextResultId
   (local.get $2)
   (i64.add
    (i64.load offset=56
     (local.get $2)
    )
    (i64.const 1)
   )
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#set
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $2
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#get
        (i32.load offset=24
         (local.get $0)
        )
        (i64.load
         (i32.load offset=8
          (local.get $4)
         )
        )
       )
      )
     )
     (local.set $2
      (call $assembly/index/PlayerStats#constructor
       (i32.const 0)
       (i32.load offset=8
        (local.get $4)
       )
       (i64.const 0)
       (i64.const 0)
       (i64.const 0)
       (i64.const 0)
       (i64.const 0)
      )
     )
    )
    (local.get $2)
   )
   (i64.add
    (i64.load offset=8
     (local.get $2)
    )
    (i64.const 1)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:table
   (local.get $2)
   (i64.add
    (i64.load offset=16
     (local.get $2)
    )
    (i64.load offset=16
     (local.get $4)
    )
   )
  )
  (call $assembly/index/Config#set:totalPaidOut
   (local.get $2)
   (i64.add
    (local.get $1)
    (i64.load offset=24
     (local.get $2)
    )
   )
  )
  (if
   (i64.gt_u
    (local.get $1)
    (i64.load offset=32
     (local.get $2)
    )
   )
   (call $assembly/index/Config#set:jackpotPool
    (local.get $2)
    (local.get $1)
   )
  )
  (if
   (local.get $10)
   (call $assembly/index/Config#set:houseBalance
    (local.get $2)
    (i64.add
     (i64.load offset=40
      (local.get $2)
     )
     (i64.const 1)
    )
   )
  )
  (local.set $11
   (i32.load
    (local.get $0)
   )
  )
  (if
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#get
    (local.tee $6
     (i32.load offset=24
      (local.get $0)
     )
    )
    (call $assembly/index/PlayerStats#get:primary
     (local.get $2)
    )
   )
   (block
    (local.set $3
     (call $assembly/index/PlayerStats#get:primary
      (local.get $2)
     )
    )
    (local.set $12
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireFind
      (i32.load
       (local.get $6)
      )
      (local.get $3)
      (i32.const 1424)
     )
    )
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#update
     (i32.load
      (local.get $6)
     )
     (local.get $12)
     (local.get $2)
     (local.get $11)
    )
   )
   (block
    (local.set $3
     (call $assembly/index/PlayerStats#get:primary
      (local.get $2)
     )
    )
    (drop
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireNotFind
      (i32.load
       (local.get $6)
      )
      (local.get $3)
      (i32.const 1200)
     )
    )
    (drop
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#store
      (i32.load
       (local.get $6)
      )
      (local.get $2)
      (local.get $11)
     )
    )
    (if
     (i64.ge_u
      (local.get $3)
      (i64.load offset=8
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
      (local.get $6)
      (select
       (i64.const -2)
       (i64.add
        (local.get $3)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $3)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
  (local.set $6
   (call $assembly/index/SpinResult#constructor
    (i32.const 0)
    (local.get $7)
    (i32.load offset=8
     (local.get $4)
    )
    (local.get $5)
    (local.get $8)
    (local.get $9)
    (i64.load offset=16
     (local.get $4)
    )
    (local.get $1)
    (local.get $10)
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
   )
  )
  (local.set $11
   (i32.load
    (local.get $0)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#requireNotFind
    (i32.load
     (local.tee $2
      (i32.load offset=20
       (local.get $0)
      )
     )
    )
    (local.tee $3
     (i64.load
      (local.get $6)
     )
    )
    (i32.const 1200)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#store
    (i32.load
     (local.get $2)
    )
    (local.get $6)
    (local.get $11)
   )
  )
  (if
   (i64.ge_u
    (local.get $3)
    (i64.load offset=8
     (local.get $2)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $2)
    (select
     (i64.const -2)
     (i64.add
      (local.get $3)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $3)
      (i64.const -2)
     )
    )
   )
  )
  (local.set $3
   (i64.const 0)
  )
  (if
   (i64.gt_u
    (i64.load offset=56
     (local.tee $2
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
    (i64.const 1000)
   )
   (if
    (i64.gt_u
     (local.tee $7
      (i64.sub
       (i64.load offset=56
        (local.get $2)
       )
       (i64.const 1000)
      )
     )
     (i64.const 5)
    )
    (loop $for-loop|0
     (if
      (i64.lt_u
       (local.get $3)
       (i64.const 5)
      )
      (block
       (if
        (local.tee $2
         (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#getByKey
          (i32.load
           (i32.load offset=20
            (local.get $0)
           )
          )
          (i64.sub
           (i64.sub
            (local.get $7)
            (local.get $3)
           )
           (i64.const 1)
          )
         )
        )
        (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/SpinResult>#remove
         (i32.load offset=20
          (local.get $0)
         )
         (local.get $2)
        )
       )
       (local.set $3
        (i64.add
         (local.get $3)
         (i64.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/Game>#remove
   (i32.load offset=16
    (local.get $0)
   )
   (local.get $4)
  )
  (if
   (i64.ne
    (local.get $1)
    (i64.const 0)
   )
   (block
    (local.set $6
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $1)
      (global.get $assembly/index/XPR_SYMBOL)
     )
    )
    (local.set $2
     (if (result i32)
      (local.get $10)
      (i32.const 5328)
      (block (result i32)
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 5472)
        (i32.const 1)
        (call $~lib/number/U8#toString
         (local.get $5)
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 5472)
        (i32.const 3)
        (call $~lib/number/U8#toString
         (local.get $8)
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 5472)
        (i32.const 5)
        (call $~lib/number/U8#toString
         (local.get $9)
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#join
        (i32.const 5472)
       )
      )
     )
    )
    (call $~lib/proton-tsc/token/token.inline/sendTransferToken
     (global.get $assembly/index/TOKEN_CONTRACT)
     (i32.load
      (local.get $0)
     )
     (i32.load offset=8
      (local.get $4)
     )
     (local.get $6)
     (local.get $2)
    )
   )
  )
 )
 (func $assembly/index/XprSlots#withdraw (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.tee $3
     (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $1)
     )
    )
    (i64.load
     (global.get $assembly/index/XPR_SYMBOL)
    )
   )
   (i32.const 5568)
  )
  (call $~lib/as-chain/system/check
   (i64.le_u
    (i64.load
     (local.get $1)
    )
    (i64.load offset=40
     (local.get $3)
    )
   )
   (i32.const 5616)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_u
    (call $assembly/index/XprSlots#getAvailableBalance
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
   )
   (i32.const 5696)
  )
  (call $assembly/index/Config#set:houseBalance
   (local.get $3)
   (i64.sub
    (i64.load offset=40
     (local.get $3)
    )
    (i64.load
     (local.get $1)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#set
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/proton-tsc/token/token.inline/sendTransferToken
   (global.get $assembly/index/TOKEN_CONTRACT)
   (i32.load
    (local.get $0)
   )
   (local.get $2)
   (local.get $1)
   (i32.const 5776)
  )
 )
 (func $assembly/index/XprSlots#cleanup (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (if
   (local.tee $2
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#getByKey
     (i32.load
      (i32.load offset=16
       (local.get $0)
      )
     )
     (local.get $1)
    )
   )
   (block
    (local.set $3
     (i32.sub
      (call $~lib/as-chain/system/currentTimeSec)
      (i32.const 3600)
     )
    )
    (call $~lib/as-chain/system/check
     (i64.lt_u
      (i64.load offset=40
       (local.get $2)
      )
      (i64.extend_i32_u
       (local.get $3)
      )
     )
     (i32.const 5840)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_u
      (call $assembly/index/XprSlots#getAvailableBalance
       (local.get $0)
      )
      (i64.load offset=16
       (local.get $2)
      )
     )
     (i32.const 5920)
    )
    (local.set $3
     (call $~lib/as-chain/asset/Asset#constructor
      (i64.load offset=16
       (local.get $2)
      )
      (global.get $assembly/index/XPR_SYMBOL)
     )
    )
    (call $~lib/proton-tsc/token/token.inline/sendTransferToken
     (global.get $assembly/index/TOKEN_CONTRACT)
     (i32.load
      (local.get $0)
     )
     (i32.load offset=8
      (local.get $2)
     )
     (local.get $3)
     (i32.const 6016)
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/Game>#remove
     (i32.load offset=16
      (local.get $0)
     )
     (local.get $2)
    )
   )
  )
 )
 (func $assembly/index/XprSlots#cleanResults (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.le_u
    (local.get $1)
    (i64.const 100)
   )
   (i32.const 6080)
  )
  (local.set $2
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#getValue
    (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#begin
     (i32.load
      (i32.load offset=20
       (local.get $0)
      )
     )
    )
   )
  )
  (loop $while-continue|0
   (if
    (select
     (i64.gt_u
      (local.get $1)
      (local.get $4)
     )
     (i32.const 0)
     (local.get $2)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#requireFind
       (i32.load
        (local.tee $5
         (i32.load offset=20
          (local.get $0)
         )
        )
       )
       (i64.load
        (local.tee $3
         (local.get $2)
        )
       )
       (i32.const 1872)
      )
     )
     (local.set $2
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/SpinResult>#getValue
       (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#next
        (i32.load
         (local.get $5)
        )
        (local.get $2)
       )
      )
     )
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/SpinResult>#remove
      (i32.load offset=20
       (local.get $0)
      )
      (local.get $3)
     )
     (local.set $4
      (i64.add
       (local.get $4)
       (i64.const 1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#remove (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local.set $2
   (call $assembly/index/PlayerStats#get:primary
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.get $2)
    (i32.const 1648)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#removeEx
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
  (if
   (i64.eq
    (local.get $2)
    (i64.sub
     (i64.load offset=8
      (local.get $0)
     )
     (i64.const 1)
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
    (local.get $0)
    (i64.const -1)
   )
  )
 )
 (func $assembly/index/XprSlots#removeStats (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (if
   (local.tee $1
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#get
     (i32.load offset=24
      (local.get $0)
     )
     (i64.load
      (local.get $1)
     )
    )
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#remove
    (i32.load offset=24
     (local.get $0)
    )
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#first (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#getValue
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#begin
    (i32.load
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#next (param $0 i32) (param $1 i32) (result i32)
  (local.set $1
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireFind
    (i32.load
     (local.get $0)
    )
    (call $assembly/index/PlayerStats#get:primary
     (local.get $1)
    )
    (i32.const 1872)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/PlayerStats>#getValue
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#next
    (i32.load
     (local.get $0)
    )
    (local.get $1)
   )
  )
 )
 (func $assembly/index/XprSlots#cleanStats (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<assembly/index/Config>#get
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.le_u
    (local.get $2)
    (i64.const 100)
   )
   (i32.const 6192)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_u
    (local.get $1)
    (i64.const 1)
   )
   (i32.const 6304)
  )
  (local.set $5
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#first
    (i32.load offset=24
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (select
     (i64.gt_u
      (local.get $2)
      (local.get $3)
     )
     (i32.const 0)
     (local.get $5)
    )
    (block
     (local.set $5
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#next
       (i32.load offset=24
        (local.get $0)
       )
       (local.tee $4
        (local.get $5)
       )
      )
     )
     (if
      (i64.gt_u
       (local.get $1)
       (i64.load offset=8
        (local.get $4)
       )
      )
      (local.set $3
       (block (result i64)
        (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#remove
         (i32.load offset=24
          (local.get $0)
         )
         (local.get $4)
        )
        (i64.add
         (local.get $3)
         (i64.const 1)
        )
       )
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/number/U64#toString (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/util/number/utoa64
   (if
    (i64.eqz
     (local.get $0)
    )
    (block
     (local.set $1
      (i32.const 4720)
     )
     (br $__inlined_func$~lib/util/number/utoa64)
    )
   )
   (if
    (i64.le_u
     (local.get $0)
     (i64.const 4294967295)
    )
    (call $~lib/util/number/utoa_dec_simple<u32>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $3
         (call $~lib/util/number/decimalCount32
          (local.tee $2
           (i32.wrap_i64
            (local.get $0)
           )
          )
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $2)
     (local.get $3)
    )
    (call $~lib/util/number/utoa_dec_simple<u64>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $2
         (call $~lib/util/number/decimalCount64High
          (local.get $0)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $0)
     (local.get $2)
    )
   )
  )
  (local.get $1)
 )
 (func $assembly/index/XprSlots#statsTotal (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local.set $1
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#first
    (i32.load offset=24
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (local.get $1)
    (block
     (local.set $2
      (i64.add
       (local.get $2)
       (i64.const 1)
      )
     )
     (local.set $1
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/index/PlayerStats>#next
       (i32.load offset=24
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 6464)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (local.get $2)
   )
  )
  (call $~lib/as-chain/debug/print
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 6464)
   )
  )
 )
 (func $assembly/index/initAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $assembly/index/setPausedAction#set:paused (param $0 i32) (param $1 i32)
  (i32.store8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/index/setPausedAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $assembly/index/setPausedAction#set:paused
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.tee $0
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $assembly/index/receiveRandAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $2
       (call $~lib/rt/stub/__new
        (i32.const 4)
        (i32.const 63)
       )
      )
     )
     (local.set $2
      (call $~lib/rt/stub/__new
       (i32.const 4)
       (i32.const 64)
      )
     )
    )
    (local.get $2)
   )
   (call $~lib/array/Array<u8>#constructor
    (call $~lib/as-chain/crypto/Checksum#getSize@virtual
     (local.get $2)
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/index/withdrawAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/index/cleanupAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $0
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $assembly/index/cleanStatsAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/index/statsTotalAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (i32.load offset=4
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.or
     (local.get $1)
     (i32.shl
      (i32.and
       (local.tee $3
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
         (local.get $0)
        )
       )
       (i32.const 127)
      )
      (local.get $2)
     )
    )
   )
   (local.set $2
    (i32.add
     (local.get $2)
     (i32.const 7)
    )
   )
   (local.set $4
    (i32.add
     (local.get $4)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (i32.and
     (local.get $3)
     (i32.const 128)
    )
   )
  )
  (local.get $1)
 )
 (func $assembly/index/onTransferAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (local.set $2
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.get $1)
   )
  )
  (local.set $3
   (call $~lib/array/Array<u8>#slice
    (i32.load
     (local.get $1)
    )
    (i32.load offset=4
     (local.get $1)
    )
    (i32.add
     (local.get $2)
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/string/String.UTF8.decode
    (i32.load
     (local.get $3)
    )
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/index/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $7)
   (local.get $1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (local.get $2)
  )
  (local.set $7
   (call $assembly/index/XprSlots#constructor
    (i32.const 0)
    (local.get $3)
    (local.get $7)
    (local.get $4)
   )
  )
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $4
      (call $~lib/array/Array<u8>#constructor
       (local.tee $3
        (call $~lib/as-chain/env/action_data_size)
       )
      )
     )
    )
    (local.get $3)
   )
  )
  (local.set $5
   (local.get $4)
  )
  (if
   (i64.eq
    (local.get $0)
    (local.get $1)
   )
   (block
    (if
     (i64.eq
      (local.get $2)
      (i64.const 8421045207927095296)
     )
     (block
      (drop
       (call $assembly/index/initAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 68)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/index/XprSlots#init
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -7811085199994781696)
     )
     (block
      (drop
       (call $assembly/index/initAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 69)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/index/XprSlots#migrate
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417100715441258496)
     )
     (block
      (drop
       (call $assembly/index/initAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 70)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/index/XprSlots#setOwner
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417095090321227776)
     )
     (block
      (drop
       (call $assembly/index/setPausedAction#unpack
        (block (result i32)
         (call $assembly/index/setPausedAction#set:paused
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 1)
            (i32.const 71)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
       )
      )
      (call $assembly/index/XprSlots#setPaused
       (local.get $7)
       (i32.load8_u
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -5003315097952267776)
     )
     (block
      (drop
       (call $assembly/index/receiveRandAction#unpack
        (block (result i32)
         (call $~lib/as-chain/name/Name#set:N
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 12)
            (i32.const 72)
           )
          )
          (i64.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $3)
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
       )
      )
      (local.set $8
       (i64.load
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/index/XprSlots#receiveRand
       (local.get $7)
       (local.get $8)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -2039333636196532224)
     )
     (block
      (drop
       (call $assembly/index/withdrawAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 73)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load offset=4
          (local.get $4)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/index/XprSlots#withdraw
       (local.get $7)
       (local.get $3)
       (local.get $4)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4923676749050413056)
     )
     (block
      (drop
       (call $assembly/index/cleanupAction#unpack
        (block (result i32)
         (call $~lib/as-chain/name/Name#set:N
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 74)
           )
          )
          (i64.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
       )
      )
      (call $assembly/index/XprSlots#cleanup
       (local.get $7)
       (i64.load
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4923676692021801856)
     )
     (block
      (drop
       (call $assembly/index/cleanupAction#unpack
        (block (result i32)
         (call $~lib/as-chain/name/Name#set:N
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 75)
           )
          )
          (i64.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
       )
      )
      (call $assembly/index/XprSlots#cleanResults
       (local.get $7)
       (i64.load
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4997502814239952896)
     )
     (block
      (drop
       (call $assembly/index/initAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 76)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/index/XprSlots#removeStats
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4923676716952322048)
     )
     (block
      (drop
       (call $assembly/index/cleanStatsAction#unpack
        (block (result i32)
         (call $~lib/as-chain/name/Name#set:N
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 16)
            (i32.const 77)
           )
          )
          (i64.const 0)
         )
         (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
          (local.get $3)
          (i64.const 0)
         )
         (local.get $3)
        )
        (local.get $5)
       )
      )
      (call $assembly/index/XprSlots#cleanStats
       (local.get $7)
       (i64.load
        (local.get $3)
       )
       (i64.load offset=8
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4157494916522164224)
     )
     (block
      (drop
       (call $assembly/index/statsTotalAction#unpack
        (call $~lib/rt/stub/__new
         (i32.const 0)
         (i32.const 78)
        )
        (local.get $5)
       )
      )
      (call $assembly/index/XprSlots#statsTotal
       (local.get $7)
      )
     )
    )
   )
  )
  (if
   (i64.ne
    (local.get $0)
    (local.get $1)
   )
   (if
    (i64.eq
     (local.get $2)
     (i64.const -3617168760277827584)
    )
    (block
     (drop
      (call $assembly/index/onTransferAction#unpack
       (block (result i32)
        (call $~lib/rt/common/BLOCK#set:mmInfo
         (local.tee $3
          (call $~lib/rt/stub/__new
           (i32.const 16)
           (i32.const 79)
          )
         )
         (i32.const 0)
        )
        (call $~lib/rt/common/OBJECT#set:gcInfo
         (local.get $3)
         (i32.const 0)
        )
        (call $~lib/rt/common/OBJECT#set:gcInfo2
         (local.get $3)
         (i32.const 0)
        )
        (call $~lib/rt/common/OBJECT#set:rtId
         (local.get $3)
         (i32.const 3568)
        )
        (local.tee $6
         (local.get $3)
        )
       )
       (local.get $5)
      )
     )
     (if
      (i32.eqz
       (local.tee $3
        (i32.load
         (local.get $3)
        )
       )
      )
      (unreachable)
     )
     (local.set $4
      (local.get $3)
     )
     (if
      (i32.eqz
       (local.tee $3
        (i32.load offset=4
         (local.get $6)
        )
       )
      )
      (unreachable)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load offset=8
         (local.get $6)
        )
       )
      )
      (unreachable)
     )
     (call $assembly/index/XprSlots#onTransfer
      (local.get $7)
      (local.get $4)
      (local.get $3)
      (local.get $5)
      (i32.load offset=12
       (local.get $6)
      )
     )
    )
   )
  )
 )
 (func $assembly/index/ConfigDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 3)
      )
     )
    )
    (unreachable)
   )
   (local.set $4
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 16)
     (i32.const 6624)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#constructor
   (if (result i32)
    (local.get $0)
    (local.get $0)
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 9)
    )
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    (i32.const 6736)
    (i32.const 1)
    (call $~lib/number/U64#toString
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 6736)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    (i32.const 6864)
    (i32.const 1)
    (call $~lib/number/U64#toString
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 6864)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/index/Config>#isOk
     (local.tee $0
      (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#find
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $assembly/index/Config#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (param $7 i64) (param $8 i64) (param $9 i64) (result i32)
  (block $9of9
   (block $8of9
    (block $7of9
     (block $6of9
      (block $5of9
       (block $4of9
        (block $3of9
         (block $2of9
          (block $1of9
           (block $0of9
            (block $outOfRange
             (br_table $0of9 $1of9 $2of9 $3of9 $4of9 $5of9 $6of9 $7of9 $8of9 $9of9 $outOfRange
              (global.get $~argumentsLength)
             )
            )
            (unreachable)
           )
           (local.set $1
            (global.get $~lib/as-chain/name/EMPTY_NAME)
           )
          )
          (local.set $2
           (i32.const 0)
          )
         )
         (local.set $3
          (i64.const 0)
         )
        )
        (local.set $4
         (i64.const 0)
        )
       )
       (local.set $5
        (i64.const 0)
       )
      )
      (local.set $6
       (i64.const 0)
      )
     )
     (local.set $7
      (i64.const 0)
     )
    )
    (local.set $8
     (i64.const 1)
    )
   )
   (local.set $9
    (i64.const 0)
   )
  )
  (call $assembly/index/Config#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
   (local.get $7)
   (local.get $8)
   (local.get $9)
  )
 )
 (func $assembly/index/Config.new@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $1
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $3
   (call $assembly/index/Config.get:tableName)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 25)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.load
    (local.get $3)
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (call $~lib/as-chain/mi/MultiIndex<assembly/index/Config>#constructor@varargs
    (local.get $0)
    (local.get $1)
    (local.get $3)
   )
  )
  (local.get $2)
 )
 (func $assembly/index/GameDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 3)
      )
     )
    )
    (unreachable)
   )
   (local.set $4
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 16)
     (i32.const 6896)
    )
   )
  )
  (call $assembly/index/GameDB#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    (i32.const 6928)
    (i32.const 1)
    (call $~lib/number/U64#toString
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 6928)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#requireFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    (i32.const 6960)
    (i32.const 1)
    (call $~lib/number/U64#toString
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 6960)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/Game>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/index/Game#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i64) (result i32)
  (block $6of6
   (block $5of6
    (block $4of6
     (block $3of6
      (block $2of6
       (block $1of6
        (block $0of6
         (block $outOfRange
          (br_table $0of6 $1of6 $2of6 $3of6 $4of6 $5of6 $6of6 $outOfRange
           (global.get $~argumentsLength)
          )
         )
         (unreachable)
        )
        (local.set $1
         (i64.const 0)
        )
       )
       (local.set $2
        (global.get $~lib/as-chain/name/EMPTY_NAME)
       )
      )
      (local.set $3
       (i64.const 0)
      )
     )
     (local.set $4
      (i32.const 0)
     )
    )
    (local.set $5
     (i64.const 0)
    )
   )
   (local.set $6
    (i64.const 0)
   )
  )
  (call $assembly/index/Game#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
  )
 )
 (func $assembly/index/Game.new@varargs (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $1
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $assembly/index/GameDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $assembly/index/Game.get:tableName)
   (call $assembly/index/Game.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $assembly/index/SpinResultDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 3)
      )
     )
    )
    (unreachable)
   )
   (local.set $4
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 16)
     (i32.const 6992)
    )
   )
  )
  (call $assembly/index/SpinResultDB#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    (i32.const 7024)
    (i32.const 1)
    (call $~lib/number/U64#toString
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 7024)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#requireFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    (i32.const 7056)
    (i32.const 1)
    (call $~lib/number/U64#toString
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 7056)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/SpinResult>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/index/SpinResult#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i64) (param $7 i64) (param $8 i32) (param $9 i64) (result i32)
  (block $9of9
   (block $8of9
    (block $7of9
     (block $6of9
      (block $5of9
       (block $4of9
        (block $3of9
         (block $2of9
          (block $1of9
           (block $0of9
            (block $outOfRange
             (br_table $0of9 $1of9 $2of9 $3of9 $4of9 $5of9 $6of9 $7of9 $8of9 $9of9 $outOfRange
              (global.get $~argumentsLength)
             )
            )
            (unreachable)
           )
           (local.set $1
            (i64.const 0)
           )
          )
          (local.set $2
           (global.get $~lib/as-chain/name/EMPTY_NAME)
          )
         )
         (local.set $3
          (i32.const 0)
         )
        )
        (local.set $4
         (i32.const 0)
        )
       )
       (local.set $5
        (i32.const 0)
       )
      )
      (local.set $6
       (i64.const 0)
      )
     )
     (local.set $7
      (i64.const 0)
     )
    )
    (local.set $8
     (i32.const 0)
    )
   )
   (local.set $9
    (i64.const 0)
   )
  )
  (call $assembly/index/SpinResult#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
   (local.get $7)
   (local.get $8)
   (local.get $9)
  )
 )
 (func $assembly/index/SpinResult.new@varargs (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $1
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $assembly/index/SpinResultDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $assembly/index/SpinResult.get:tableName)
   (call $assembly/index/SpinResult.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $assembly/index/PlayerStatsDB#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 3)
      )
     )
    )
    (unreachable)
   )
   (local.set $4
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 16)
     (i32.const 7088)
    )
   )
  )
  (call $assembly/index/PlayerStatsDB#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    (i32.const 7120)
    (i32.const 1)
    (call $~lib/number/U64#toString
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 7120)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireNotFind@varargs (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
    (i32.const 7152)
    (i32.const 1)
    (call $~lib/number/U64#toString
     (local.get $1)
    )
   )
   (local.set $2
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 7152)
    )
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/index/PlayerStats>#requireNotFind
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/index/PlayerStats#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (result i32)
  (block $6of6
   (block $5of6
    (block $4of6
     (block $3of6
      (block $2of6
       (block $1of6
        (block $0of6
         (block $outOfRange
          (br_table $0of6 $1of6 $2of6 $3of6 $4of6 $5of6 $6of6 $outOfRange
           (global.get $~argumentsLength)
          )
         )
         (unreachable)
        )
        (local.set $1
         (global.get $~lib/as-chain/name/EMPTY_NAME)
        )
       )
       (local.set $2
        (i64.const 0)
       )
      )
      (local.set $3
       (i64.const 0)
      )
     )
     (local.set $4
      (i64.const 0)
     )
    )
    (local.set $5
     (i64.const 0)
    )
   )
   (local.set $6
    (i64.const 0)
   )
  )
  (call $assembly/index/PlayerStats#constructor
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
   (local.get $5)
   (local.get $6)
  )
 )
 (func $assembly/index/PlayerStats.new@varargs (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $1
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $assembly/index/PlayerStatsDB#constructor
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (call $assembly/index/PlayerStats.get:tableName)
   (call $assembly/index/PlayerStats.tableIndexes
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackName (param $0 i32) (result i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/action/Action#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.tee $2
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.get $2)
   )
  )
  (local.set $4
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $2)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 60)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $5)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $5)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $4)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $1
    (call $~lib/rt/stub/__new
     (local.tee $6
      (i32.shl
       (select
        (local.get $4)
        (i32.const 8)
        (i32.gt_u
         (local.get $4)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $5)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $5)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $7)
    )
    (block
     (local.set $6
      (call $~lib/as-chain/action/PermissionLevel#constructor
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $2)
       )
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $2)
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $3)
       (i32.load offset=12
        (local.tee $4
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $3)
         (i32.const 0)
        )
        (unreachable)
       )
       (call $~lib/array/ensureCapacity
        (local.get $4)
        (local.tee $1
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
        (i32.const 2)
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $4)
        (local.get $1)
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/action/PermissionLevel>#__uset
      (local.get $4)
      (local.get $3)
      (local.get $6)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $2)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.tee $3
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $2)
        )
       )
      )
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $2)
      )
     )
     (i32.load offset=4
      (local.get $2)
     )
    )
    (local.get $3)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $2)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $~lib/as-chain/asset/Symbol#isValid (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (block $__inlined_func$~lib/as-chain/asset/isValid (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.eqz
      (local.tee $3
       (call $~lib/as-chain/asset/Symbol#code
        (local.get $0)
       )
      )
     )
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.ne
      (i64.and
       (local.get $3)
       (i64.const -72057594037927936)
      )
      (i64.const 0)
     )
    )
   )
   (loop $for-loop|0
    (if
     (i32.le_s
      (local.get $2)
      (i32.const 6)
     )
     (block $for-break0
      (local.set $1
       (local.get $2)
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i32.eqz
         (select
          (i32.le_u
           (local.tee $0
            (i32.wrap_i64
             (i64.and
              (local.get $3)
              (i64.const 255)
             )
            )
           )
           (i32.const 90)
          )
          (i32.const 0)
          (i32.ge_u
           (local.get $0)
           (i32.const 65)
          )
         )
        )
       )
      )
      (br_if $for-break0
       (i64.eqz
        (i64.and
         (local.tee $3
          (i64.shr_u
           (local.get $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (loop $for-loop|1
    (if
     (i32.le_s
      (local.get $1)
      (i32.const 6)
     )
     (block
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i64.ne
         (i64.and
          (local.tee $3
           (i64.shr_u
            (local.get $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#unpack@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (block $folding-inner3
   (block $folding-inner2
    (block $folding-inner1
     (block $folding-inner0
      (block $default
       (block $case25
        (block $case24
         (block $case23
          (block $case22
           (block $case21
            (block $case20
             (block $case19
              (block $case18
               (block $case16
                (block $case15
                 (block $case11
                  (block $case10
                   (block $case8
                    (block $case4
                     (block $case3
                      (block $case2
                       (block $case1
                        (if
                         (i32.ne
                          (local.tee $2
                           (i32.load
                            (i32.sub
                             (local.get $0)
                             (i32.const 8)
                            )
                           )
                          )
                          (i32.const 47)
                         )
                         (block
                          (br_if $case1
                           (i32.eq
                            (local.get $2)
                            (i32.const 10)
                           )
                          )
                          (br_if $case2
                           (i32.eq
                            (local.get $2)
                            (i32.const 27)
                           )
                          )
                          (br_if $case3
                           (i32.eq
                            (local.get $2)
                            (i32.const 32)
                           )
                          )
                          (br_if $case4
                           (i32.eq
                            (local.get $2)
                            (i32.const 37)
                           )
                          )
                          (br_if $folding-inner0
                           (i32.or
                            (i32.eq
                             (local.get $2)
                             (i32.const 68)
                            )
                            (i32.eq
                             (local.get $2)
                             (i32.const 69)
                            )
                           )
                          )
                          (block $tablify|0
                           (br_table $folding-inner0 $case8 $case10 $case11 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $folding-inner1 $tablify|0
                            (i32.sub
                             (local.get $2)
                             (i32.const 70)
                            )
                           )
                          )
                          (br_if $folding-inner2
                           (i32.or
                            (i32.eq
                             (local.get $2)
                             (i32.const 74)
                            )
                            (i32.eq
                             (local.get $2)
                             (i32.const 75)
                            )
                           )
                          )
                          (br_if $folding-inner0
                           (i32.eq
                            (local.get $2)
                            (i32.const 76)
                           )
                          )
                          (br_if $case15
                           (i32.eq
                            (local.get $2)
                            (i32.const 77)
                           )
                          )
                          (br_if $case16
                           (i32.eq
                            (local.get $2)
                            (i32.const 78)
                           )
                          )
                          (br_if $folding-inner2
                           (i32.eq
                            (local.get $2)
                            (i32.const 54)
                           )
                          )
                          (br_if $case18
                           (i32.eq
                            (local.get $2)
                            (i32.const 53)
                           )
                          )
                          (br_if $case19
                           (i32.eq
                            (local.get $2)
                            (i32.const 58)
                           )
                          )
                          (br_if $case20
                           (i32.eq
                            (local.get $2)
                            (i32.const 61)
                           )
                          )
                          (br_if $case21
                           (i32.eq
                            (local.get $2)
                            (i32.const 5)
                           )
                          )
                          (br_if $case22
                           (i32.eq
                            (local.get $2)
                            (i32.const 7)
                           )
                          )
                          (br_if $case23
                           (i32.eq
                            (local.get $2)
                            (i32.const 48)
                           )
                          )
                          (br_if $case24
                           (i32.or
                            (i32.eq
                             (local.get $2)
                             (i32.const 64)
                            )
                            (i32.eq
                             (local.get $2)
                             (i32.const 63)
                            )
                           )
                          )
                          (br_if $case25
                           (i32.eq
                            (local.get $2)
                            (i32.const 55)
                           )
                          )
                          (br_if $folding-inner1
                           (i32.eq
                            (local.get $2)
                            (i32.const 65)
                           )
                          )
                          (br $default)
                         )
                        )
                        (return
                         (call $assembly/index/TokenAccount#unpack
                          (local.get $0)
                          (local.get $1)
                         )
                        )
                       )
                       (return
                        (call $assembly/index/Config#unpack
                         (local.get $0)
                         (local.get $1)
                        )
                       )
                      )
                      (return
                       (call $assembly/index/Game#unpack
                        (local.get $0)
                        (local.get $1)
                       )
                      )
                     )
                     (return
                      (call $assembly/index/SpinResult#unpack
                       (local.get $0)
                       (local.get $1)
                      )
                     )
                    )
                    (return
                     (call $assembly/index/PlayerStats#unpack
                      (local.get $0)
                      (local.get $1)
                     )
                    )
                   )
                   (return
                    (call $assembly/index/setPausedAction#unpack
                     (local.get $0)
                     (local.get $1)
                    )
                   )
                  )
                  (return
                   (call $assembly/index/receiveRandAction#unpack
                    (local.get $0)
                    (local.get $1)
                   )
                  )
                 )
                 (return
                  (call $assembly/index/withdrawAction#unpack
                   (local.get $0)
                   (local.get $1)
                  )
                 )
                )
                (return
                 (call $assembly/index/cleanStatsAction#unpack
                  (local.get $0)
                  (local.get $1)
                 )
                )
               )
               (return
                (call $assembly/index/statsTotalAction#unpack
                 (local.get $0)
                 (local.get $1)
                )
               )
              )
              (call $~lib/as-chain/serializer/Decoder#unpack
               (local.tee $1
                (call $~lib/as-chain/serializer/Decoder#constructor
                 (local.get $1)
                )
               )
               (i32.load
                (local.get $0)
               )
              )
              (br $folding-inner3)
             )
             (call $~lib/rt/common/BLOCK#set:mmInfo
              (local.get $0)
              (call $~lib/as-chain/serializer/Decoder#unpackName
               (local.tee $1
                (call $~lib/as-chain/serializer/Decoder#constructor
                 (local.get $1)
                )
               )
              )
             )
             (call $~lib/rt/common/OBJECT#set:gcInfo
              (local.get $0)
              (call $~lib/as-chain/serializer/Decoder#unpackName
               (local.get $1)
              )
             )
             (br $folding-inner3)
            )
            (return
             (call $~lib/as-chain/action/Action#unpack
              (local.get $0)
              (local.get $1)
             )
            )
           )
           (call $~lib/as-chain/name/Name#set:N
            (local.get $0)
            (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
             (call $~lib/as-chain/serializer/Decoder#constructor
              (local.get $1)
             )
            )
           )
           (return
            (i32.const 8)
           )
          )
          (call $~lib/as-chain/name/Name#set:N
           (local.get $0)
           (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
            (local.tee $1
             (call $~lib/as-chain/serializer/Decoder#constructor
              (local.get $1)
             )
            )
           )
          )
          (call $~lib/as-chain/system/check
           (call $~lib/as-chain/asset/Symbol#isValid
            (local.get $0)
           )
           (i32.const 7184)
          )
          (br $folding-inner3)
         )
         (local.set $3
          (i64.load
           (i32.add
            (i32.load offset=4
             (i32.load
              (local.tee $2
               (call $~lib/as-chain/serializer/Decoder#constructor
                (local.get $1)
               )
              )
             )
            )
            (i32.load offset=4
             (local.get $2)
            )
           )
          )
         )
         (call $~lib/as-chain/serializer/Decoder#incPos
          (local.get $2)
          (i32.const 8)
         )
         (call $~lib/as-chain/name/Name#set:N
          (local.get $0)
          (local.get $3)
         )
         (call $~lib/as-chain/serializer/Decoder#unpack
          (local.get $2)
          (i32.load offset=8
           (local.get $0)
          )
         )
         (call $~lib/as-chain/system/check
          (if (result i32)
           (if (result i32)
            (i64.ge_s
             (i64.load
              (local.tee $1
               (local.get $0)
              )
             )
             (i64.const -4611686018427387903)
            )
            (i64.le_s
             (i64.load
              (local.get $1)
             )
             (i64.const 4611686018427387903)
            )
            (i32.const 0)
           )
           (call $~lib/as-chain/asset/Symbol#isValid
            (i32.load offset=8
             (local.get $1)
            )
           )
           (i32.const 0)
          )
          (i32.const 7232)
         )
         (return
          (i32.load offset=4
           (local.get $2)
          )
         )
        )
        (local.set $1
         (call $~lib/as-chain/serializer/Decoder#constructor
          (local.get $1)
         )
        )
        (drop
         (call $~lib/as-chain/env/memcpy
          (i32.load offset=4
           (local.tee $4
            (call $~lib/array/Array<u8>#constructor
             (local.tee $2
              (call $~lib/as-chain/crypto/Checksum#getSize@virtual
               (local.get $0)
              )
             )
            )
           )
          )
          (i32.add
           (i32.load offset=4
            (i32.load
             (local.get $1)
            )
           )
           (i32.load offset=4
            (local.get $1)
           )
          )
          (local.get $2)
         )
        )
        (call $~lib/as-chain/serializer/Decoder#incPos
         (local.get $1)
         (local.get $2)
        )
        (call $~lib/rt/common/BLOCK#set:mmInfo
         (local.get $0)
         (local.get $4)
        )
        (return
         (i32.load offset=4
          (local.get $1)
         )
        )
       )
       (call $~lib/as-chain/name/Name#set:N
        (local.get $0)
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
         (local.tee $1
          (call $~lib/as-chain/serializer/Decoder#constructor
           (local.get $1)
          )
         )
        )
       )
       (call $~lib/as-chain/dbi64/DBI64<assembly/index/Config>#set:scope
        (local.get $0)
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
         (local.get $1)
        )
       )
       (call $~lib/as-chain/name/Name#set:N
        (local.tee $2
         (call $~lib/rt/stub/__new
          (i32.const 8)
          (i32.const 5)
         )
        )
        (i64.const 0)
       )
       (call $~lib/as-chain/name/Name#set:N
        (local.get $2)
        (i64.const 0)
       )
       (call $~lib/as-chain/serializer/Decoder#unpack
        (local.get $1)
        (local.get $2)
       )
       (call $~lib/rt/common/OBJECT#set:rtSize
        (local.get $0)
        (local.get $2)
       )
       (br $folding-inner3)
      )
      (unreachable)
     )
     (return
      (call $assembly/index/initAction#unpack
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (return
     (call $assembly/index/onTransferAction#unpack
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (return
    (call $assembly/index/cleanupAction#unpack
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/index/cleanupAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 8)
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner1
   (block $folding-inner0
    (block $default
     (block $case26
      (block $case25
       (block $case24
        (block $case23
         (block $case22
          (block $case21
           (block $case20
            (block $case19
             (block $case18
              (block $case17
               (block $case16
                (block $case15
                 (block $case13
                  (block $case12
                   (block $case11
                    (block $case10
                     (block $case9
                      (block $case8
                       (block $case4
                        (block $case3
                         (block $case2
                          (block $case1
                           (if
                            (i32.ne
                             (local.tee $1
                              (i32.load
                               (i32.sub
                                (local.get $0)
                                (i32.const 8)
                               )
                              )
                             )
                             (i32.const 47)
                            )
                            (block
                             (br_if $case1
                              (i32.eq
                               (local.get $1)
                               (i32.const 10)
                              )
                             )
                             (br_if $case2
                              (i32.eq
                               (local.get $1)
                               (i32.const 27)
                              )
                             )
                             (br_if $case3
                              (i32.eq
                               (local.get $1)
                               (i32.const 32)
                              )
                             )
                             (br_if $case4
                              (i32.eq
                               (local.get $1)
                               (i32.const 37)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.or
                               (i32.or
                                (i32.eq
                                 (local.get $1)
                                 (i32.const 68)
                                )
                                (i32.eq
                                 (local.get $1)
                                 (i32.const 69)
                                )
                               )
                               (i32.eq
                                (local.get $1)
                                (i32.const 70)
                               )
                              )
                             )
                             (br_if $case8
                              (i32.eq
                               (local.get $1)
                               (i32.const 71)
                              )
                             )
                             (br_if $case9
                              (i32.eq
                               (local.get $1)
                               (i32.const 79)
                              )
                             )
                             (br_if $case10
                              (i32.eq
                               (local.get $1)
                               (i32.const 72)
                              )
                             )
                             (br_if $case11
                              (i32.eq
                               (local.get $1)
                               (i32.const 73)
                              )
                             )
                             (br_if $case12
                              (i32.eq
                               (local.get $1)
                               (i32.const 74)
                              )
                             )
                             (br_if $case13
                              (i32.eq
                               (local.get $1)
                               (i32.const 75)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (local.get $1)
                               (i32.const 76)
                              )
                             )
                             (br_if $case15
                              (i32.eq
                               (local.get $1)
                               (i32.const 77)
                              )
                             )
                             (br_if $case16
                              (i32.eq
                               (local.get $1)
                               (i32.const 78)
                              )
                             )
                             (br_if $case17
                              (i32.eq
                               (local.get $1)
                               (i32.const 54)
                              )
                             )
                             (br_if $case18
                              (i32.eq
                               (local.get $1)
                               (i32.const 53)
                              )
                             )
                             (br_if $case19
                              (i32.eq
                               (local.get $1)
                               (i32.const 58)
                              )
                             )
                             (br_if $case20
                              (i32.eq
                               (local.get $1)
                               (i32.const 61)
                              )
                             )
                             (br_if $case21
                              (i32.eq
                               (local.get $1)
                               (i32.const 5)
                              )
                             )
                             (br_if $case22
                              (i32.eq
                               (local.get $1)
                               (i32.const 7)
                              )
                             )
                             (br_if $case23
                              (i32.eq
                               (local.get $1)
                               (i32.const 48)
                              )
                             )
                             (br_if $case24
                              (i32.or
                               (i32.eq
                                (local.get $1)
                                (i32.const 64)
                               )
                               (i32.eq
                                (local.get $1)
                                (i32.const 63)
                               )
                              )
                             )
                             (br_if $case25
                              (i32.eq
                               (local.get $1)
                               (i32.const 55)
                              )
                             )
                             (br_if $case26
                              (i32.eq
                               (local.get $1)
                               (i32.const 65)
                              )
                             )
                             (br $default)
                            )
                           )
                           (drop
                            (i32.load
                             (local.get $0)
                            )
                           )
                           (call $~lib/as-chain/serializer/Encoder#pack
                            (local.tee $1
                             (call $~lib/as-chain/serializer/Encoder#constructor
                              (i32.const 16)
                             )
                            )
                            (i32.load
                             (local.get $0)
                            )
                           )
                           (br $folding-inner1)
                          )
                          (return
                           (call $assembly/index/Config#pack
                            (local.get $0)
                           )
                          )
                         )
                         (return
                          (call $assembly/index/Game#pack
                           (local.get $0)
                          )
                         )
                        )
                        (return
                         (call $assembly/index/SpinResult#pack
                          (local.get $0)
                         )
                        )
                       )
                       (return
                        (call $assembly/index/PlayerStats#pack
                         (local.get $0)
                        )
                       )
                      )
                      (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
                       (local.tee $1
                        (call $~lib/as-chain/serializer/Encoder#constructor
                         (i32.const 1)
                        )
                       )
                       (i32.load8_u
                        (local.get $0)
                       )
                      )
                      (br $folding-inner1)
                     )
                     (if
                      (i32.eqz
                       (i32.load
                        (local.get $0)
                       )
                      )
                      (unreachable)
                     )
                     (if
                      (i32.eqz
                       (i32.load offset=4
                        (local.get $0)
                       )
                      )
                      (unreachable)
                     )
                     (if
                      (i32.eqz
                       (i32.load offset=8
                        (local.get $0)
                       )
                      )
                      (unreachable)
                     )
                     (local.set $1
                      (call $~lib/as-chain/serializer/Encoder#constructor
                       (i32.add
                        (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                         (i32.load offset=12
                          (local.get $0)
                         )
                        )
                        (i32.const 32)
                       )
                      )
                     )
                     (if
                      (i32.eqz
                       (local.tee $2
                        (i32.load
                         (local.get $0)
                        )
                       )
                      )
                      (unreachable)
                     )
                     (call $~lib/as-chain/serializer/Encoder#pack
                      (local.get $1)
                      (local.get $2)
                     )
                     (if
                      (i32.eqz
                       (local.tee $2
                        (i32.load offset=4
                         (local.get $0)
                        )
                       )
                      )
                      (unreachable)
                     )
                     (call $~lib/as-chain/serializer/Encoder#pack
                      (local.get $1)
                      (local.get $2)
                     )
                     (if
                      (i32.eqz
                       (local.tee $2
                        (i32.load offset=8
                         (local.get $0)
                        )
                       )
                      )
                      (unreachable)
                     )
                     (call $~lib/as-chain/serializer/Encoder#pack
                      (local.get $1)
                      (local.get $2)
                     )
                     (call $~lib/as-chain/serializer/Encoder#packString
                      (local.get $1)
                      (i32.load offset=12
                       (local.get $0)
                      )
                     )
                     (return
                      (call $~lib/as-chain/serializer/Encoder#getBytes
                       (local.get $1)
                      )
                     )
                    )
                    (if
                     (i32.eqz
                      (i32.load offset=8
                       (local.get $0)
                      )
                     )
                     (unreachable)
                    )
                    (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                     (local.tee $1
                      (call $~lib/as-chain/serializer/Encoder#constructor
                       (i32.const 40)
                      )
                     )
                     (i64.load
                      (local.get $0)
                     )
                    )
                    (if
                     (i32.eqz
                      (local.tee $0
                       (i32.load offset=8
                        (local.get $0)
                       )
                      )
                     )
                     (unreachable)
                    )
                    (call $~lib/as-chain/serializer/Encoder#pack
                     (local.get $1)
                     (local.get $0)
                    )
                    (br $folding-inner1)
                   )
                   (if
                    (i32.eqz
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (unreachable)
                   )
                   (if
                    (i32.eqz
                     (i32.load offset=4
                      (local.get $0)
                     )
                    )
                    (unreachable)
                   )
                   (local.set $1
                    (call $~lib/as-chain/serializer/Encoder#constructor
                     (i32.const 24)
                    )
                   )
                   (if
                    (i32.eqz
                     (local.tee $2
                      (i32.load
                       (local.get $0)
                      )
                     )
                    )
                    (unreachable)
                   )
                   (call $~lib/as-chain/serializer/Encoder#pack
                    (local.get $1)
                    (local.get $2)
                   )
                   (if
                    (i32.eqz
                     (local.tee $0
                      (i32.load offset=4
                       (local.get $0)
                      )
                     )
                    )
                    (unreachable)
                   )
                   (call $~lib/as-chain/serializer/Encoder#pack
                    (local.get $1)
                    (local.get $0)
                   )
                   (br $folding-inner1)
                  )
                  (return
                   (call $assembly/index/cleanupAction#pack
                    (local.get $0)
                   )
                  )
                 )
                 (return
                  (call $assembly/index/cleanupAction#pack
                   (local.get $0)
                  )
                 )
                )
                (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                 (local.tee $1
                  (call $~lib/as-chain/serializer/Encoder#constructor
                   (i32.const 16)
                  )
                 )
                 (i64.load
                  (local.get $0)
                 )
                )
                (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                 (local.get $1)
                 (i64.load offset=8
                  (local.get $0)
                 )
                )
                (br $folding-inner1)
               )
               (return
                (call $~lib/as-chain/serializer/Encoder#getBytes
                 (call $~lib/as-chain/serializer/Encoder#constructor
                  (i32.const 0)
                 )
                )
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
               (local.tee $1
                (call $~lib/as-chain/serializer/Encoder#constructor
                 (i32.const 8)
                )
               )
               (i64.load
                (local.get $0)
               )
              )
              (br $folding-inner1)
             )
             (call $~lib/as-chain/serializer/Encoder#pack
              (local.tee $1
               (call $~lib/as-chain/serializer/Encoder#constructor
                (i32.const 8)
               )
              )
              (i32.load
               (local.get $0)
              )
             )
             (br $folding-inner1)
            )
            (call $~lib/as-chain/serializer/Encoder#packName
             (local.tee $1
              (call $~lib/as-chain/serializer/Encoder#constructor
               (i32.const 16)
              )
             )
             (i32.load
              (local.get $0)
             )
            )
            (call $~lib/as-chain/serializer/Encoder#packName
             (local.get $1)
             (i32.load offset=4
              (local.get $0)
             )
            )
            (br $folding-inner1)
           )
           (return
            (call $~lib/as-chain/action/Action#pack
             (local.get $0)
            )
           )
          )
          (i64.store
           (i32.load offset=4
            (local.tee $1
             (call $~lib/array/Array<u8>#constructor
              (i32.const 8)
             )
            )
           )
           (i64.load
            (local.get $0)
           )
          )
          (return
           (local.get $1)
          )
         )
         (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
          (local.tee $1
           (call $~lib/as-chain/serializer/Encoder#constructor
            (i32.const 8)
           )
          )
          (i64.load
           (local.get $0)
          )
         )
         (br $folding-inner1)
        )
        (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
         (local.tee $1
          (call $~lib/as-chain/serializer/Encoder#constructor
           (i32.const 16)
          )
         )
         (i64.load
          (local.get $0)
         )
        )
        (call $~lib/as-chain/serializer/Encoder#pack
         (local.get $1)
         (i32.load offset=8
          (local.get $0)
         )
        )
        (br $folding-inner1)
       )
       (return
        (call $~lib/array/Array<u8>#slice
         (i32.load
          (local.get $0)
         )
         (i32.const 0)
         (i32.const 2147483647)
        )
       )
      )
      (return
       (call $~lib/proton-tsc/rng/rng.inline/RequestRandom#pack
        (local.get $0)
       )
      )
     )
     (return
      (call $~lib/proton-tsc/token/token.inline/Transfer#pack
       (local.get $0)
      )
     )
    )
    (unreachable)
   )
   (if
    (i32.eqz
     (i32.load
      (local.get $0)
     )
    )
    (unreachable)
   )
   (local.set $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 8)
    )
   )
   (if
    (i32.eqz
     (local.tee $0
      (i32.load
       (local.get $0)
      )
     )
    )
    (unreachable)
   )
   (call $~lib/as-chain/serializer/Encoder#pack
    (local.get $1)
    (local.get $0)
   )
   (return
    (call $~lib/as-chain/serializer/Encoder#getBytes
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual (param $0 i32) (result i32)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#updateEx@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#storeEx@virtual (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#remove@virtual (param $0 i32) (param $1 i32)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/crypto/Checksum#getSize@virtual (param $0 i32) (result i32)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 63)
   )
   (return
    (i32.const 32)
   )
  )
  (i32.const 0)
 )
 (func $~setArgumentsLength (param $0 i32)
  (global.set $~argumentsLength
   (local.get $0)
  )
 )
 (func $~start
  (local $0 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 7260)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (global.set $~lib/as-chain/name/EMPTY_NAME
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -4839117799609597952)
  )
  (global.set $~lib/proton-tsc/rng/rng.inline/RNG_CONTRACT
   (local.get $0)
  )
  (global.set $assembly/index/XPR_SYMBOL
   (call $~lib/as-chain/asset/Symbol#constructor
    (i32.const 2416)
    (i32.const 4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 6138663591592764928)
  )
  (global.set $assembly/index/TOKEN_CONTRACT
   (local.get $0)
  )
 )
)
