(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: FUN_00101020
*)

Require Import Picinae_amd64.
Require Import NArith.
Require Import Lia.
Open Scope N.

Definition min_ex_so_FUN_00101020_amd64 : program := fun _ a => match a with

(* 0x00101020: PUSH qword ptr [0x00103ff0] *)
(*    1052704: PUSH qword ptr [0x00103ff0] *)
| 0x101020 => Some (6,
	Move (V_TEMP 0x27d80) (Load (Var V_MEM64) (Word 0x103ff0 64) LittleE 8) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Var (V_TEMP 0x27d80))) LittleE 8)
)

(* 0x00101026: JMP qword ptr [0x00103ff8] *)
(*    1052710: JMP qword ptr [0x00103ff8] *)
| 0x101026 => Some (6,
	Jmp (Load (Var V_MEM64) (Word 0x103ff8 64) LittleE 8)
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: __do_global_dtors_aux
*)


Definition min_ex_so___do_global_dtors_aux_amd64 : program := fun _ a => match a with

(* 0x001010d0: ENDBR64 *)
(*    1052880: ENDBR64 *)
| 0x1010d0 => Some (4,
	Nop
)

(* 0x001010d4: CMP byte ptr [0x00104018],0x0 *)
(*    1052884: CMP byte ptr [0x00104018],0x0 *)
| 0x1010d4 => Some (7,
	Move (V_TEMP 0x3e200) (Load (Var V_MEM64) (Word 0x104018 64) LittleE 1) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3e200)) (Word 0x0 8))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3e200)) (Word 7 8)) (Word 1 8)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3e200)) (Word 0x0 8)) (Word 7 8)) (Word 1 8))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3e200)) (Word 0x0 8)) (Word 7 8)) (Word 1 8)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x0 8) (Word 7 8)) (Word 1 8))) (Word 1 8))))) $;
	Move (V_TEMP 0x3e300) (BinOp OP_MINUS (Var (V_TEMP 0x3e200)) (Word 0x0 8)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3e300)) (Word 0x0 8))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3e300)) (Word 0x0 8))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3e300)) (Word 0xff 8)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001010db: JNZ 0x00101108 *)
(*    1052891: JNZ 0x00101108 *)
| 0x1010db => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x101108 64)
	) (* else *) (
		Nop
	)
)

(* 0x001010dd: PUSH RBP *)
(*    1052893: PUSH RBP *)
| 0x1010dd => Some (1,
	Move (V_TEMP 0x27d80) (Var R_RBP) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Var (V_TEMP 0x27d80))) LittleE 8)
)

(* 0x001010de: CMP qword ptr [0x00103fe0],0x0 *)
(*    1052894: CMP qword ptr [0x00103fe0],0x0 *)
| 0x1010de => Some (8,
	Move (V_TEMP 0x3eb00) (Load (Var V_MEM64) (Word 0x103fe0 64) LittleE 8) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3eb00)) (Word 0x0 64))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3eb00)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3eb00)) (Word 0x0 64)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3eb00)) (Word 0x0 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x0 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3ec00) (BinOp OP_MINUS (Var (V_TEMP 0x3eb00)) (Word 0x0 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3ec00)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3ec00)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3ec00)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001010e6: MOV RBP,RSP *)
(*    1052902: MOV RBP,RSP *)
| 0x1010e6 => Some (3,
	Move R_RBP (Var R_RSP)
)

(* 0x001010e9: JZ 0x001010f7 *)
(*    1052905: JZ 0x001010f7 *)
| 0x1010e9 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1010f7 64)
	) (* else *) (
		Nop
	)
)

(* 0x001010eb: MOV RDI,qword ptr [0x00104010] *)
(*    1052907: MOV RDI,qword ptr [0x00104010] *)
| 0x1010eb => Some (7,
	Move R_RDI (Load (Var V_MEM64) (Word 0x104010 64) LittleE 8)
)

(* 0x001010f2: CALL 0x00101050 *)
(*    1052914: CALL 0x00101050 *)
| 0x1010f2 => Some (5,
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x1010f7 64)) LittleE 8) $;
	Jmp (Word 0x101050 64)
)

(* 0x001010f7: CALL 0x00101060 *)
(*    1052919: CALL 0x00101060 *)
| 0x1010f7 => Some (5,
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x1010fc 64)) LittleE 8) $;
	Jmp (Word 0x101060 64)
)

(* 0x001010fc: MOV byte ptr [0x00104018],0x1 *)
(*    1052924: MOV byte ptr [0x00104018],0x1 *)
| 0x1010fc => Some (7,
	Move V_MEM64 (Word 0x1 8)
)

(* 0x00101103: POP RBP *)
(*    1052931: POP RBP *)
| 0x101103 => Some (1,
	Move (V_TEMP 0x55480) (Word 0x0 64) $;
	Move (V_TEMP 0x55480) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_RBP (Var (V_TEMP 0x55480))
)

(* 0x00101104: RET *)
(*    1052932: RET *)
| 0x101104 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x00101108: RET *)
(*    1052936: RET *)
| 0x101108 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: _fini
*)


Definition min_ex_so__fini_amd64 : program := fun _ a => match a with

(* 0x001012fc: SUB RSP,0x8 *)
(*    1053436: SUB RSP,0x8 *)
| 0x1012fc => Some (4,
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var R_RSP) (Word 0x8 64))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSP) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x8 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RSP) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RSP) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RSP) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101300: ADD RSP,0x8 *)
(*    1053440: ADD RSP,0x8 *)
| 0x101300 => Some (4,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) (Var R_RSP)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSP) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSP) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x8 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RSP) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RSP) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RSP) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101304: RET *)
(*    1053444: RET *)
| 0x101304 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: _init
*)


Definition min_ex_so__init_amd64 : program := fun _ a => match a with

(* 0x00101000: SUB RSP,0x8 *)
(*    1052672: SUB RSP,0x8 *)
| 0x101000 => Some (4,
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var R_RSP) (Word 0x8 64))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSP) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x8 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RSP) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RSP) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RSP) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101004: MOV RAX,qword ptr [0x00103fd0] *)
(*    1052676: MOV RAX,qword ptr [0x00103fd0] *)
| 0x101004 => Some (7,
	Move R_RAX (Load (Var V_MEM64) (Word 0x103fd0 64) LittleE 8)
)

(* 0x0010100b: TEST RAX,RAX *)
(*    1052683: TEST RAX,RAX *)
| 0x10100b => Some (3,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70580) (BinOp OP_AND (Var R_RAX) (Var R_RAX)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70580)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70580)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70580)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x0010100e: JZ 0x00101012 *)
(*    1052686: JZ 0x00101012 *)
| 0x10100e => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101012 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101010: CALL RAX *)
(*    1052688: CALL RAX *)
| 0x101010 => Some (2,
	Move (V_TEMP 0x3cc00) (Var R_RAX) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x101012 64)) LittleE 8) $;
	Jmp (Var (V_TEMP 0x3cc00))
)

(* 0x00101012: ADD RSP,0x8 *)
(*    1052690: ADD RSP,0x8 *)
| 0x101012 => Some (4,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) (Var R_RSP)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSP) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSP) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x8 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RSP) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RSP) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RSP) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101016: RET *)
(*    1052694: RET *)
| 0x101016 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: deregister_tm_clones
*)


Definition min_ex_so_deregister_tm_clones_amd64 : program := fun _ a => match a with

(* 0x00101060: LEA RDI,[0x104018] *)
(*    1052768: LEA RDI,[0x104018] *)
| 0x101060 => Some (7,
	Move R_RDI (Word 0x104018 64)
)

(* 0x00101067: LEA RAX,[0x104018] *)
(*    1052775: LEA RAX,[0x104018] *)
| 0x101067 => Some (7,
	Move R_RAX (Word 0x104018 64)
)

(* 0x0010106e: CMP RAX,RDI *)
(*    1052782: CMP RAX,RDI *)
| 0x10106e => Some (3,
	Move (V_TEMP 0x3f100) (Var R_RAX) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3f100)) (Var R_RDI))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f100)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RDI)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RDI)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDI) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f200) (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RDI)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f200)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101071: JZ 0x00101088 *)
(*    1052785: JZ 0x00101088 *)
| 0x101071 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101088 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101073: MOV RAX,qword ptr [0x00103fc8] *)
(*    1052787: MOV RAX,qword ptr [0x00103fc8] *)
| 0x101073 => Some (7,
	Move R_RAX (Load (Var V_MEM64) (Word 0x103fc8 64) LittleE 8)
)

(* 0x0010107a: TEST RAX,RAX *)
(*    1052794: TEST RAX,RAX *)
| 0x10107a => Some (3,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70580) (BinOp OP_AND (Var R_RAX) (Var R_RAX)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70580)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70580)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70580)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x0010107d: JZ 0x00101088 *)
(*    1052797: JZ 0x00101088 *)
| 0x10107d => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101088 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010107f: JMP RAX *)
(*    1052799: JMP RAX *)
| 0x10107f => Some (2,
	Jmp (Var R_RAX)
)

(* 0x00101088: RET *)
(*    1052808: RET *)
| 0x101088 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: frame_dummy
*)


Definition min_ex_so_frame_dummy_amd64 : program := fun _ a => match a with

(* 0x00101110: ENDBR64 *)
(*    1052944: ENDBR64 *)
| 0x101110 => Some (4,
	Nop
)

(* 0x00101114: JMP 0x00101090 *)
(*    1052948: JMP 0x00101090 *)
| 0x101114 => Some (5,
	Jmp (Word 0x101090 64)
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: mex0
*)


Definition min_ex_so_mex0_amd64 : program := fun _ a => match a with

(* 0x00101120: XOR ECX,ECX *)
(*    1052960: XOR ECX,ECX *)
| 0x101120 => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_RCX (Cast CAST_SIGNED 64 (BinOp OP_XOR (Extract 31 0 (Var R_RCX)) (Extract 31 0 (Var R_RCX)))) $;
	Move R_RCX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RCX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Extract 31 0 (Var R_RCX)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Extract 31 0 (Var R_RCX)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Extract 31 0 (Var R_RCX)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101122: TEST RSI,RSI *)
(*    1052962: TEST RSI,RSI *)
| 0x101122 => Some (3,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70580) (BinOp OP_AND (Var R_RSI) (Var R_RSI)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70580)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70580)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70580)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101125: JZ 0x00101152 *)
(*    1052965: JZ 0x00101152 *)
| 0x101125 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101152 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101127: NOP word ptr [RAX + RAX*0x1] *)
(*    1052967: NOP word ptr [RAX + RAX*0x1] *)
| 0x101127 => Some (9,
	Move (V_TEMP 0x5580) (BinOp OP_TIMES (Var R_RAX) (Word 0x1 64)) $;
	Move (V_TEMP 0x5680) (BinOp OP_PLUS (Var R_RAX) (Var (V_TEMP 0x5580)))
)

(* 0x00101130: XOR EAX,EAX *)
(*    1052976: XOR EAX,EAX *)
| 0x101130 => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_RAX (Cast CAST_SIGNED 64 (BinOp OP_XOR (Extract 31 0 (Var R_RAX)) (Extract 31 0 (Var R_RAX)))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Extract 31 0 (Var R_RAX)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Extract 31 0 (Var R_RAX)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Extract 31 0 (Var R_RAX)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101132: NOP dword ptr CS:[RAX + RAX*0x1] *)
(*    1052978: NOP dword ptr CS:[RAX + RAX*0x1] *)
| 0x101132 => Some (11,
	Move (V_TEMP 0x5580) (BinOp OP_TIMES (Var R_RAX) (Word 0x1 64)) $;
	Move (V_TEMP 0x5680) (BinOp OP_PLUS (Var R_RAX) (Var (V_TEMP 0x5580)))
)

(* 0x0010113d: NOP dword ptr [RAX] *)
(*    1052989: NOP dword ptr [RAX] *)
| 0x10113d => Some (3,
	Nop
)

(* 0x00101140: MOVSXD RDX,dword ptr [RDI + RAX*0x4] *)
(*    1052992: MOVSXD RDX,dword ptr [RDI + RAX*0x4] *)
| 0x101140 => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RAX) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var (V_TEMP 0x4a80)) LittleE 4) $;
	Move R_RDX (Cast CAST_SIGNED 64 (Var (V_TEMP 0x11f80)))
)

(* 0x00101144: CMP RDX,RCX *)
(*    1052996: CMP RDX,RCX *)
| 0x101144 => Some (3,
	Move (V_TEMP 0x3f100) (Var R_RDX) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3f100)) (Var R_RCX))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f100)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RCX)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RCX)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RCX) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f200) (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RCX)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f200)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101147: JZ 0x00101160 *)
(*    1052999: JZ 0x00101160 *)
| 0x101147 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101160 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101149: ADD RAX,0x1 *)
(*    1053001: ADD RAX,0x1 *)
| 0x101149 => Some (4,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Var R_RAX) (Word 0x1 64)) (Var R_RAX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Var R_RAX) (Word 0x1 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RAX) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RAX) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x1 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RAX (BinOp OP_PLUS (Var R_RAX) (Word 0x1 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RAX) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RAX) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RAX) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x0010114d: CMP RSI,RAX *)
(*    1053005: CMP RSI,RAX *)
| 0x10114d => Some (3,
	Move (V_TEMP 0x3f100) (Var R_RSI) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3f100)) (Var R_RAX))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f100)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RAX)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RAX)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RAX) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f200) (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RAX)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f200)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101150: JNZ 0x00101140 *)
(*    1053008: JNZ 0x00101140 *)
| 0x101150 => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x101140 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101152: MOV RAX,RCX *)
(*    1053010: MOV RAX,RCX *)
| 0x101152 => Some (3,
	Move R_RAX (Var R_RCX)
)

(* 0x00101155: RET *)
(*    1053013: RET *)
| 0x101155 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x00101160: CMP RSI,RAX *)
(*    1053024: CMP RSI,RAX *)
| 0x101160 => Some (3,
	Move (V_TEMP 0x3f100) (Var R_RSI) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3f100)) (Var R_RAX))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f100)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RAX)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RAX)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RAX) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f200) (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RAX)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f200)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101163: JZ 0x00101152 *)
(*    1053027: JZ 0x00101152 *)
| 0x101163 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101152 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101165: ADD RCX,0x1 *)
(*    1053029: ADD RCX,0x1 *)
| 0x101165 => Some (4,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Var R_RCX) (Word 0x1 64)) (Var R_RCX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Var R_RCX) (Word 0x1 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RCX) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RCX) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x1 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RCX (BinOp OP_PLUS (Var R_RCX) (Word 0x1 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RCX) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RCX) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RCX) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101169: CMP RSI,RCX *)
(*    1053033: CMP RSI,RCX *)
| 0x101169 => Some (3,
	Move (V_TEMP 0x3f100) (Var R_RSI) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3f100)) (Var R_RCX))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f100)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RCX)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RCX)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RCX) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f200) (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RCX)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f200)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x0010116c: JNZ 0x00101130 *)
(*    1053036: JNZ 0x00101130 *)
| 0x10116c => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x101130 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010116e: MOV RAX,RCX *)
(*    1053038: MOV RAX,RCX *)
| 0x10116e => Some (3,
	Move R_RAX (Var R_RCX)
)

(* 0x00101171: RET *)
(*    1053041: RET *)
| 0x101171 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: mex1
*)


Definition min_ex_so_mex1_amd64 : program := fun _ a => match a with

(* 0x00101180: PUSH R12 *)
(*    1053056: PUSH R12 *)
| 0x101180 => Some (2,
	Move (V_TEMP 0x27d80) (Var R_R12) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Var (V_TEMP 0x27d80))) LittleE 8)
)

(* 0x00101182: MOV R12D,ESI *)
(*    1053058: MOV R12D,ESI *)
| 0x101182 => Some (3,
	Move R_R12 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RSI))) $;
	Move R_R12 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_R12)))
)

(* 0x00101185: PUSH RBP *)
(*    1053061: PUSH RBP *)
| 0x101185 => Some (1,
	Move (V_TEMP 0x27d80) (Var R_RBP) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Var (V_TEMP 0x27d80))) LittleE 8)
)

(* 0x00101186: PUSH RBX *)
(*    1053062: PUSH RBX *)
| 0x101186 => Some (1,
	Move (V_TEMP 0x27d80) (Var R_RBX) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Var (V_TEMP 0x27d80))) LittleE 8)
)

(* 0x00101187: MOV RBX,RDI *)
(*    1053063: MOV RBX,RDI *)
| 0x101187 => Some (3,
	Move R_RBX (Var R_RDI)
)

(* 0x0010118a: MOV RDI,R12 *)
(*    1053066: MOV RDI,R12 *)
| 0x10118a => Some (3,
	Move R_RDI (Var R_R12)
)

(* 0x0010118d: CALL 0x00101040 *)
(*    1053069: CALL 0x00101040 *)
| 0x10118d => Some (5,
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x101192 64)) LittleE 8) $;
	Jmp (Word 0x101040 64)
)

(* 0x00101192: TEST R12D,R12D *)
(*    1053074: TEST R12D,R12D *)
| 0x101192 => Some (3,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70480) (BinOp OP_AND (Extract 31 0 (Var R_R12)) (Extract 31 0 (Var R_R12))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70480)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101195: JZ 0x001011e8 *)
(*    1053077: JZ 0x001011e8 *)
| 0x101195 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1011e8 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101197: MOV RBP,R12 *)
(*    1053079: MOV RBP,R12 *)
| 0x101197 => Some (3,
	Move R_RBP (Var R_R12)
)

(* 0x0010119a: MOV RDI,RBX *)
(*    1053082: MOV RDI,RBX *)
| 0x10119a => Some (3,
	Move R_RDI (Var R_RBX)
)

(* 0x0010119d: LEA RCX,[RBX + R12*0x4] *)
(*    1053085: LEA RCX,[RBX + R12*0x4] *)
| 0x10119d => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_R12) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RBX) (Var (V_TEMP 0x4980))) $;
	Move R_RCX (Var (V_TEMP 0x4a80))
)

(* 0x001011a1: NOP dword ptr CS:[RAX + RAX*0x1] *)
(*    1053089: NOP dword ptr CS:[RAX + RAX*0x1] *)
| 0x1011a1 => Some (11,
	Move (V_TEMP 0x5580) (BinOp OP_TIMES (Var R_RAX) (Word 0x1 64)) $;
	Move (V_TEMP 0x5680) (BinOp OP_PLUS (Var R_RAX) (Var (V_TEMP 0x5580)))
)

(* 0x001011ac: NOP dword ptr [RAX] *)
(*    1053100: NOP dword ptr [RAX] *)
| 0x1011ac => Some (4,
	Nop
)

(* 0x001011b0: MOVSXD RDX,dword ptr [RDI] *)
(*    1053104: MOVSXD RDX,dword ptr [RDI] *)
| 0x1011b0 => Some (3,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_RDI) LittleE 4) $;
	Move R_RDX (Cast CAST_SIGNED 64 (Var (V_TEMP 0x11f80)))
)

(* 0x001011b3: TEST EDX,EDX *)
(*    1053107: TEST EDX,EDX *)
| 0x1011b3 => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70480) (BinOp OP_AND (Extract 31 0 (Var R_RDX)) (Extract 31 0 (Var R_RDX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70480)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011b5: JS 0x001011bf *)
(*    1053109: JS 0x001011bf *)
| 0x1011b5 => Some (2,
	If (Cast CAST_LOW 1 (Var R_SF)) (
		Jmp (Word 0x1011bf 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011b7: CMP EBP,EDX *)
(*    1053111: CMP EBP,EDX *)
| 0x1011b7 => Some (2,
	Move (V_TEMP 0x3ef80) (Extract 31 0 (Var R_RBP)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3ef80)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX))) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX))) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RDX)) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move (V_TEMP 0x3f080) (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f080)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011b9: JC 0x001011bf *)
(*    1053113: JC 0x001011bf *)
| 0x1011b9 => Some (2,
	If (Cast CAST_LOW 1 (Var R_CF)) (
		Jmp (Word 0x1011bf 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011bb: MOV byte ptr [RAX + RDX*0x1],0x1 *)
(*    1053115: MOV byte ptr [RAX + RDX*0x1],0x1 *)
| 0x1011bb => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RDX) (Word 0x1 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RAX) (Var (V_TEMP 0x4980))) $;
	Move (V_TEMP 0x6a00) (Word 0x1 8) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var (V_TEMP 0x4a80)) (Cast CAST_LOW 8 (Var (V_TEMP 0x6a00))) LittleE 1)
)

(* 0x001011bf: ADD RDI,0x4 *)
(*    1053119: ADD RDI,0x4 *)
| 0x1011bf => Some (4,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Var R_RDI) (Word 0x4 64)) (Var R_RDI)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Var R_RDI) (Word 0x4 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDI) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDI) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x4 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RDI (BinOp OP_PLUS (Var R_RDI) (Word 0x4 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RDI) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RDI) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RDI) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011c3: CMP RCX,RDI *)
(*    1053123: CMP RCX,RDI *)
| 0x1011c3 => Some (3,
	Move (V_TEMP 0x3f100) (Var R_RCX) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3f100)) (Var R_RDI))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f100)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RDI)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RDI)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDI) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f200) (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RDI)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f200)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011c6: JNZ 0x001011b0 *)
(*    1053126: JNZ 0x001011b0 *)
| 0x1011c6 => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x1011b0 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011c8: MOV RDX,RAX *)
(*    1053128: MOV RDX,RAX *)
| 0x1011c8 => Some (3,
	Move R_RDX (Var R_RAX)
)

(* 0x001011cb: XOR EAX,EAX *)
(*    1053131: XOR EAX,EAX *)
| 0x1011cb => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_RAX (Cast CAST_SIGNED 64 (BinOp OP_XOR (Extract 31 0 (Var R_RAX)) (Extract 31 0 (Var R_RAX)))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Extract 31 0 (Var R_RAX)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Extract 31 0 (Var R_RAX)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Extract 31 0 (Var R_RAX)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011cd: JMP 0x001011db *)
(*    1053133: JMP 0x001011db *)
| 0x1011cd => Some (2,
	Jmp (Word 0x1011db 64)
)

(* 0x001011d0: ADD EAX,0x1 *)
(*    1053136: ADD EAX,0x1 *)
| 0x1011d0 => Some (3,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Extract 31 0 (Var R_RAX)) (Word 0x1 32)) (Extract 31 0 (Var R_RAX))))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Extract 31 0 (Var R_RAX)) (Word 0x1 32)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RAX)) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RAX)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x1 32) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move R_RAX (Cast CAST_SIGNED 64 (BinOp OP_PLUS (Extract 31 0 (Var R_RAX)) (Word 0x1 32))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Extract 31 0 (Var R_RAX)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Extract 31 0 (Var R_RAX)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Extract 31 0 (Var R_RAX)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011d3: ADD RDX,0x1 *)
(*    1053139: ADD RDX,0x1 *)
| 0x1011d3 => Some (4,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Var R_RDX) (Word 0x1 64)) (Var R_RDX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Var R_RDX) (Word 0x1 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDX) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDX) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x1 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RDX (BinOp OP_PLUS (Var R_RDX) (Word 0x1 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RDX) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RDX) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RDX) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011d7: CMP EAX,EBP *)
(*    1053143: CMP EAX,EBP *)
| 0x1011d7 => Some (2,
	Move (V_TEMP 0x3ef80) (Extract 31 0 (Var R_RAX)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RBP)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3ef80)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RBP))) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RBP))) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RBP)) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move (V_TEMP 0x3f080) (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RBP))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f080)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011d9: JZ 0x001011e0 *)
(*    1053145: JZ 0x001011e0 *)
| 0x1011d9 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1011e0 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011db: CMP byte ptr [RDX],0x0 *)
(*    1053147: CMP byte ptr [RDX],0x0 *)
| 0x1011db => Some (3,
	Move (V_TEMP 0x11e80) (Load (Var V_MEM64) (Var R_RDX) LittleE 1) $;
	Move (V_TEMP 0x3e200) (Var (V_TEMP 0x11e80)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3e200)) (Word 0x0 8))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3e200)) (Word 7 8)) (Word 1 8)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3e200)) (Word 0x0 8)) (Word 7 8)) (Word 1 8))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3e200)) (Word 0x0 8)) (Word 7 8)) (Word 1 8)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x0 8) (Word 7 8)) (Word 1 8))) (Word 1 8))))) $;
	Move (V_TEMP 0x3e300) (BinOp OP_MINUS (Var (V_TEMP 0x3e200)) (Word 0x0 8)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3e300)) (Word 0x0 8))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3e300)) (Word 0x0 8))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3e300)) (Word 0xff 8)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011de: JNZ 0x001011d0 *)
(*    1053150: JNZ 0x001011d0 *)
| 0x1011de => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x1011d0 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011e0: POP RBX *)
(*    1053152: POP RBX *)
| 0x1011e0 => Some (1,
	Move (V_TEMP 0x55480) (Word 0x0 64) $;
	Move (V_TEMP 0x55480) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_RBX (Var (V_TEMP 0x55480))
)

(* 0x001011e1: POP RBP *)
(*    1053153: POP RBP *)
| 0x1011e1 => Some (1,
	Move (V_TEMP 0x55480) (Word 0x0 64) $;
	Move (V_TEMP 0x55480) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_RBP (Var (V_TEMP 0x55480))
)

(* 0x001011e2: POP R12 *)
(*    1053154: POP R12 *)
| 0x1011e2 => Some (2,
	Move (V_TEMP 0x55480) (Word 0x0 64) $;
	Move (V_TEMP 0x55480) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_R12 (Var (V_TEMP 0x55480))
)

(* 0x001011e4: RET *)
(*    1053156: RET *)
| 0x1011e4 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x001011e8: POP RBX *)
(*    1053160: POP RBX *)
| 0x1011e8 => Some (1,
	Move (V_TEMP 0x55480) (Word 0x0 64) $;
	Move (V_TEMP 0x55480) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_RBX (Var (V_TEMP 0x55480))
)

(* 0x001011e9: XOR EAX,EAX *)
(*    1053161: XOR EAX,EAX *)
| 0x1011e9 => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_RAX (Cast CAST_SIGNED 64 (BinOp OP_XOR (Extract 31 0 (Var R_RAX)) (Extract 31 0 (Var R_RAX)))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Extract 31 0 (Var R_RAX)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Extract 31 0 (Var R_RAX)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Extract 31 0 (Var R_RAX)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011eb: POP RBP *)
(*    1053163: POP RBP *)
| 0x1011eb => Some (1,
	Move (V_TEMP 0x55480) (Word 0x0 64) $;
	Move (V_TEMP 0x55480) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_RBP (Var (V_TEMP 0x55480))
)

(* 0x001011ec: POP R12 *)
(*    1053164: POP R12 *)
| 0x1011ec => Some (2,
	Move (V_TEMP 0x55480) (Word 0x0 64) $;
	Move (V_TEMP 0x55480) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_R12 (Var (V_TEMP 0x55480))
)

(* 0x001011ee: RET *)
(*    1053166: RET *)
| 0x1011ee => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: mex2
*)


Definition min_ex_so_mex2_amd64 : program := fun _ a => match a with

(* 0x001011f0: MOV EAX,ESI *)
(*    1053168: MOV EAX,ESI *)
| 0x1011f0 => Some (2,
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RSI))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX)))
)

(* 0x001011f2: TEST ESI,ESI *)
(*    1053170: TEST ESI,ESI *)
| 0x1011f2 => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70480) (BinOp OP_AND (Extract 31 0 (Var R_RSI)) (Extract 31 0 (Var R_RSI))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70480)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011f4: JZ 0x00101280 *)
(*    1053172: JZ 0x00101280 *)
| 0x1011f4 => Some (6,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101280 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011fa: XOR EDX,EDX *)
(*    1053178: XOR EDX,EDX *)
| 0x1011fa => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_RDX (Cast CAST_SIGNED 64 (BinOp OP_XOR (Extract 31 0 (Var R_RDX)) (Extract 31 0 (Var R_RDX)))) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Extract 31 0 (Var R_RDX)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Extract 31 0 (Var R_RDX)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Extract 31 0 (Var R_RDX)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011fc: XOR R8D,R8D *)
(*    1053180: XOR R8D,R8D *)
| 0x1011fc => Some (3,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_R8 (Cast CAST_SIGNED 64 (BinOp OP_XOR (Extract 31 0 (Var R_R8)) (Extract 31 0 (Var R_R8)))) $;
	Move R_R8 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_R8))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Extract 31 0 (Var R_R8)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Extract 31 0 (Var R_R8)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Extract 31 0 (Var R_R8)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011ff: JMP 0x0010122b *)
(*    1053183: JMP 0x0010122b *)
| 0x1011ff => Some (2,
	Jmp (Word 0x10122b 64)
)

(* 0x00101208: MOVSXD R9,ECX *)
(*    1053192: MOVSXD R9,ECX *)
| 0x101208 => Some (3,
	Move R_R9 (Cast CAST_SIGNED 64 (Extract 31 0 (Var R_RCX)))
)

(* 0x0010120b: LEA R9,[RDI + R9*0x4] *)
(*    1053195: LEA R9,[RDI + R9*0x4] *)
| 0x10120b => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_R9) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move R_R9 (Var (V_TEMP 0x4a80))
)

(* 0x0010120f: MOV R10D,dword ptr [R9] *)
(*    1053199: MOV R10D,dword ptr [R9] *)
| 0x10120f => Some (3,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_R9) LittleE 4) $;
	Move R_R10 (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x11f80))) $;
	Move R_R10 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_R10)))
)

(* 0x00101212: CMP R10D,ECX *)
(*    1053202: CMP R10D,ECX *)
| 0x101212 => Some (3,
	Move (V_TEMP 0x3ef80) (Extract 31 0 (Var R_R10)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RCX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3ef80)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RCX))) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RCX))) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RCX)) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move (V_TEMP 0x3f080) (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RCX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f080)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101215: JZ 0x0010123c *)
(*    1053205: JZ 0x0010123c *)
| 0x101215 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x10123c 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101217: CMP ECX,EDX *)
(*    1053207: CMP ECX,EDX *)
| 0x101217 => Some (2,
	Move (V_TEMP 0x3ef80) (Extract 31 0 (Var R_RCX)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3ef80)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX))) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX))) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RDX)) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move (V_TEMP 0x3f080) (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f080)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101219: JGE 0x00101268 *)
(*    1053209: JGE 0x00101268 *)
| 0x101219 => Some (2,
	Move (V_TEMP 0x12f00) (BinOp OP_EQ (Var R_OF) (Var R_SF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12f00))) (
		Jmp (Word 0x101268 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010121b: MOV dword ptr [RSI],R10D *)
(*    1053211: MOV dword ptr [RSI],R10D *)
| 0x10121b => Some (3,
	Move (V_TEMP 0x6b00) (Extract 31 0 (Var R_R10)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSI) (Cast CAST_LOW 32 (Var (V_TEMP 0x6b00))) LittleE 4)
)

(* 0x0010121e: ADD EDX,0x1 *)
(*    1053214: ADD EDX,0x1 *)
| 0x10121e => Some (3,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Extract 31 0 (Var R_RDX)) (Word 0x1 32)) (Extract 31 0 (Var R_RDX))))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Extract 31 0 (Var R_RDX)) (Word 0x1 32)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RDX)) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RDX)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x1 32) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move R_RDX (Cast CAST_SIGNED 64 (BinOp OP_PLUS (Extract 31 0 (Var R_RDX)) (Word 0x1 32))) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Extract 31 0 (Var R_RDX)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Extract 31 0 (Var R_RDX)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Extract 31 0 (Var R_RDX)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101221: MOV dword ptr [R9],ECX *)
(*    1053217: MOV dword ptr [R9],ECX *)
| 0x101221 => Some (3,
	Move (V_TEMP 0x6b00) (Extract 31 0 (Var R_RCX)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_R9) (Cast CAST_LOW 32 (Var (V_TEMP 0x6b00))) LittleE 4)
)

(* 0x00101224: MOV R8D,EDX *)
(*    1053220: MOV R8D,EDX *)
| 0x101224 => Some (3,
	Move R_R8 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move R_R8 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_R8)))
)

(* 0x00101227: CMP EDX,EAX *)
(*    1053223: CMP EDX,EAX *)
| 0x101227 => Some (2,
	Move (V_TEMP 0x3ef80) (Extract 31 0 (Var R_RDX)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3ef80)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX))) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX))) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RAX)) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move (V_TEMP 0x3f080) (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f080)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101229: JNC 0x00101246 *)
(*    1053225: JNC 0x00101246 *)
| 0x101229 => Some (2,
	Move (V_TEMP 0x12780) (UnOp OP_NOT (Var R_CF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12780))) (
		Jmp (Word 0x101246 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010122b: MOVSXD RCX,EDX *)
(*    1053227: MOVSXD RCX,EDX *)
| 0x10122b => Some (3,
	Move R_RCX (Cast CAST_SIGNED 64 (Extract 31 0 (Var R_RDX)))
)

(* 0x0010122e: LEA RSI,[RDI + RCX*0x4] *)
(*    1053230: LEA RSI,[RDI + RCX*0x4] *)
| 0x10122e => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RCX) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move R_RSI (Var (V_TEMP 0x4a80))
)

(* 0x00101232: MOV ECX,dword ptr [RSI] *)
(*    1053234: MOV ECX,dword ptr [RSI] *)
| 0x101232 => Some (2,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_RSI) LittleE 4) $;
	Move R_RCX (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x11f80))) $;
	Move R_RCX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RCX)))
)

(* 0x00101234: TEST ECX,ECX *)
(*    1053236: TEST ECX,ECX *)
| 0x101234 => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70480) (BinOp OP_AND (Extract 31 0 (Var R_RCX)) (Extract 31 0 (Var R_RCX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70480)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101236: JS 0x0010123c *)
(*    1053238: JS 0x0010123c *)
| 0x101236 => Some (2,
	If (Cast CAST_LOW 1 (Var R_SF)) (
		Jmp (Word 0x10123c 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101238: CMP ECX,EAX *)
(*    1053240: CMP ECX,EAX *)
| 0x101238 => Some (2,
	Move (V_TEMP 0x3ef80) (Extract 31 0 (Var R_RCX)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3ef80)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX))) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX))) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RAX)) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move (V_TEMP 0x3f080) (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f080)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x0010123a: JC 0x00101208 *)
(*    1053242: JC 0x00101208 *)
| 0x10123a => Some (2,
	If (Cast CAST_LOW 1 (Var R_CF)) (
		Jmp (Word 0x101208 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010123c: ADD EDX,0x1 *)
(*    1053244: ADD EDX,0x1 *)
| 0x10123c => Some (3,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Extract 31 0 (Var R_RDX)) (Word 0x1 32)) (Extract 31 0 (Var R_RDX))))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Extract 31 0 (Var R_RDX)) (Word 0x1 32)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RDX)) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RDX)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x1 32) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move R_RDX (Cast CAST_SIGNED 64 (BinOp OP_PLUS (Extract 31 0 (Var R_RDX)) (Word 0x1 32))) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Extract 31 0 (Var R_RDX)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Extract 31 0 (Var R_RDX)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Extract 31 0 (Var R_RDX)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x0010123f: MOV R8D,EDX *)
(*    1053247: MOV R8D,EDX *)
| 0x10123f => Some (3,
	Move R_R8 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move R_R8 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_R8)))
)

(* 0x00101242: CMP EDX,EAX *)
(*    1053250: CMP EDX,EAX *)
| 0x101242 => Some (2,
	Move (V_TEMP 0x3ef80) (Extract 31 0 (Var R_RDX)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3ef80)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX))) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX))) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RAX)) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move (V_TEMP 0x3f080) (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RAX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f080)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101244: JC 0x0010122b *)
(*    1053252: JC 0x0010122b *)
| 0x101244 => Some (2,
	If (Cast CAST_LOW 1 (Var R_CF)) (
		Jmp (Word 0x10122b 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101246: MOV ECX,EAX *)
(*    1053254: MOV ECX,EAX *)
| 0x101246 => Some (2,
	Move R_RCX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX))) $;
	Move R_RCX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RCX)))
)

(* 0x00101248: XOR EDX,EDX *)
(*    1053256: XOR EDX,EDX *)
| 0x101248 => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_RDX (Cast CAST_SIGNED 64 (BinOp OP_XOR (Extract 31 0 (Var R_RDX)) (Extract 31 0 (Var R_RDX)))) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Extract 31 0 (Var R_RDX)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Extract 31 0 (Var R_RDX)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Extract 31 0 (Var R_RDX)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x0010124a: JMP 0x00101259 *)
(*    1053258: JMP 0x00101259 *)
| 0x10124a => Some (2,
	Jmp (Word 0x101259 64)
)

(* 0x00101250: ADD RDX,0x1 *)
(*    1053264: ADD RDX,0x1 *)
| 0x101250 => Some (4,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Var R_RDX) (Word 0x1 64)) (Var R_RDX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Var R_RDX) (Word 0x1 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDX) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDX) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x1 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RDX (BinOp OP_PLUS (Var R_RDX) (Word 0x1 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RDX) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RDX) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RDX) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101254: CMP RDX,RCX *)
(*    1053268: CMP RDX,RCX *)
| 0x101254 => Some (3,
	Move (V_TEMP 0x3f100) (Var R_RDX) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3f100)) (Var R_RCX))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f100)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RCX)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RCX)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RCX) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f200) (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RCX)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f200)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101257: JZ 0x00101280 *)
(*    1053271: JZ 0x00101280 *)
| 0x101257 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101280 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101259: CMP dword ptr [RDI + RDX*0x4],EDX *)
(*    1053273: CMP dword ptr [RDI + RDX*0x4],EDX *)
| 0x101259 => Some (3,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RDX) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var (V_TEMP 0x4a80)) LittleE 4) $;
	Move (V_TEMP 0x3ef80) (Var (V_TEMP 0x11f80)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3ef80)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX))) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX))) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RDX)) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move (V_TEMP 0x3f080) (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RDX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f080)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x0010125c: JZ 0x00101250 *)
(*    1053276: JZ 0x00101250 *)
| 0x10125c => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101250 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010125e: MOV EAX,EDX *)
(*    1053278: MOV EAX,EDX *)
| 0x10125e => Some (2,
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX)))
)

(* 0x00101260: RET *)
(*    1053280: RET *)
| 0x101260 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x00101268: LEA RCX,[RDI + R8*0x4] *)
(*    1053288: LEA RCX,[RDI + R8*0x4] *)
| 0x101268 => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_R8) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move R_RCX (Var (V_TEMP 0x4a80))
)

(* 0x0010126c: MOV ESI,dword ptr [RCX] *)
(*    1053292: MOV ESI,dword ptr [RCX] *)
| 0x10126c => Some (2,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_RCX) LittleE 4) $;
	Move R_RSI (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x11f80))) $;
	Move R_RSI (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RSI)))
)

(* 0x0010126e: MOV dword ptr [RCX],R10D *)
(*    1053294: MOV dword ptr [RCX],R10D *)
| 0x10126e => Some (3,
	Move (V_TEMP 0x6b00) (Extract 31 0 (Var R_R10)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RCX) (Cast CAST_LOW 32 (Var (V_TEMP 0x6b00))) LittleE 4)
)

(* 0x00101271: MOV dword ptr [R9],ESI *)
(*    1053297: MOV dword ptr [R9],ESI *)
| 0x101271 => Some (3,
	Move (V_TEMP 0x6b00) (Extract 31 0 (Var R_RSI)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_R9) (Cast CAST_LOW 32 (Var (V_TEMP 0x6b00))) LittleE 4)
)

(* 0x00101274: JMP 0x00101224 *)
(*    1053300: JMP 0x00101224 *)
| 0x101274 => Some (2,
	Jmp (Word 0x101224 64)
)

(* 0x00101280: RET *)
(*    1053312: RET *)
| 0x101280 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: mex3
*)


Definition min_ex_so_mex3_amd64 : program := fun _ a => match a with

(* 0x00101290: TEST ESI,ESI *)
(*    1053328: TEST ESI,ESI *)
| 0x101290 => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70480) (BinOp OP_AND (Extract 31 0 (Var R_RSI)) (Extract 31 0 (Var R_RSI))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70480)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101292: JZ 0x001012d8 *)
(*    1053330: JZ 0x001012d8 *)
| 0x101292 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1012d8 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101294: MOV EDX,dword ptr [RDI] *)
(*    1053332: MOV EDX,dword ptr [RDI] *)
| 0x101294 => Some (2,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_RDI) LittleE 4) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x11f80))) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX)))
)

(* 0x00101296: MOV EAX,ESI *)
(*    1053334: MOV EAX,ESI *)
| 0x101296 => Some (2,
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RSI))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX)))
)

(* 0x00101298: LEA R8,[RDI + RAX*0x4] *)
(*    1053336: LEA R8,[RDI + RAX*0x4] *)
| 0x101298 => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RAX) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move R_R8 (Var (V_TEMP 0x4a80))
)

(* 0x0010129c: TEST EDX,EDX *)
(*    1053340: TEST EDX,EDX *)
| 0x10129c => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70480) (BinOp OP_AND (Extract 31 0 (Var R_RDX)) (Extract 31 0 (Var R_RDX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70480)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x0010129e: JG 0x001012d8 *)
(*    1053342: JG 0x001012d8 *)
| 0x10129e => Some (2,
	Move (V_TEMP 0x13100) (UnOp OP_NOT (Var R_ZF)) $;
	Move (V_TEMP 0x13180) (BinOp OP_EQ (Var R_OF) (Var R_SF)) $;
	Move (V_TEMP 0x13280) (BinOp OP_AND (Var (V_TEMP 0x13100)) (Var (V_TEMP 0x13180))) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x13280))) (
		Jmp (Word 0x1012d8 64)
	) (* else *) (
		Nop
	)
)

(* 0x001012a0: JZ 0x001012ba *)
(*    1053344: JZ 0x001012ba *)
| 0x1012a0 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1012ba 64)
	) (* else *) (
		Nop
	)
)

(* 0x001012a2: JMP 0x001012db *)
(*    1053346: JMP 0x001012db *)
| 0x1012a2 => Some (2,
	Jmp (Word 0x1012db 64)
)

(* 0x001012a8: MOV ECX,dword ptr [RDI] *)
(*    1053352: MOV ECX,dword ptr [RDI] *)
| 0x1012a8 => Some (2,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_RDI) LittleE 4) $;
	Move R_RCX (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x11f80))) $;
	Move R_RCX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RCX)))
)

(* 0x001012aa: LEA EAX,[RDX + 0x1] *)
(*    1053354: LEA EAX,[RDX + 0x1] *)
| 0x1012aa => Some (3,
	Move (V_TEMP 0x4780) (BinOp OP_PLUS (Var R_RDX) (Word 0x1 64)) $;
	Move R_RAX (Cast CAST_LOW 64 (BinOp OP_RSHIFT (Var (V_TEMP 0x4780)) (Word 0 64))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX)))
)

(* 0x001012ad: CMP EAX,ECX *)
(*    1053357: CMP EAX,ECX *)
| 0x1012ad => Some (2,
	Move (V_TEMP 0x3ef80) (Extract 31 0 (Var R_RAX)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RCX)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3ef80)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RCX))) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RCX))) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RCX)) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move (V_TEMP 0x3f080) (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RCX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f080)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001012af: JL 0x001012d0 *)
(*    1053359: JL 0x001012d0 *)
| 0x1012af => Some (2,
	Move (V_TEMP 0x12e00) (BinOp OP_NEQ (Var R_OF) (Var R_SF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12e00))) (
		Jmp (Word 0x1012d0 64)
	) (* else *) (
		Nop
	)
)

(* 0x001012b1: TEST ECX,ECX *)
(*    1053361: TEST ECX,ECX *)
| 0x1012b1 => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70480) (BinOp OP_AND (Extract 31 0 (Var R_RCX)) (Extract 31 0 (Var R_RCX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70480)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70480)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001012b3: CMOVNS EDX,ECX *)
(*    1053363: CMOVNS EDX,ECX *)
| 0x1012b3 => Some (3,
	Move (V_TEMP 0x12c00) (UnOp OP_NOT (Var R_SF)) $;
	Move (V_TEMP 0x3dc00) (Extract 31 0 (Var R_RCX)) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move (V_TEMP 0x3dc80) (UnOp OP_NOT (Var (V_TEMP 0x12c00))) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x3dc80))) (
		Jmp (Word 0x1012b6 64)
	) (* else *) (
		Nop
	) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x3dc00)))
)

(* 0x001012b6: CMP EDX,ESI *)
(*    1053366: CMP EDX,ESI *)
| 0x1012b6 => Some (2,
	Move (V_TEMP 0x3ef80) (Extract 31 0 (Var R_RDX)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RSI)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3ef80)) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RSI))) (Word 31 32)) (Word 1 32))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RSI))) (Word 31 32)) (Word 1 32)) (BinOp OP_AND (BinOp OP_RSHIFT (Extract 31 0 (Var R_RSI)) (Word 31 32)) (Word 1 32))) (Word 1 32))))) $;
	Move (V_TEMP 0x3f080) (BinOp OP_MINUS (Var (V_TEMP 0x3ef80)) (Extract 31 0 (Var R_RSI))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f080)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f080)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001012b8: JNC 0x001012db *)
(*    1053368: JNC 0x001012db *)
| 0x1012b8 => Some (2,
	Move (V_TEMP 0x12780) (UnOp OP_NOT (Var R_CF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12780))) (
		Jmp (Word 0x1012db 64)
	) (* else *) (
		Nop
	)
)

(* 0x001012ba: ADD RDI,0x4 *)
(*    1053370: ADD RDI,0x4 *)
| 0x1012ba => Some (4,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Var R_RDI) (Word 0x4 64)) (Var R_RDI)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Var R_RDI) (Word 0x4 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDI) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDI) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x4 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RDI (BinOp OP_PLUS (Var R_RDI) (Word 0x4 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RDI) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RDI) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RDI) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001012be: CMP RDI,R8 *)
(*    1053374: CMP RDI,R8 *)
| 0x1012be => Some (3,
	Move (V_TEMP 0x3f100) (Var R_RDI) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3f100)) (Var R_R8))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f100)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_R8)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_R8)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_R8) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f200) (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_R8)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f200)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001012c1: JNZ 0x001012a8 *)
(*    1053377: JNZ 0x001012a8 *)
| 0x1012c1 => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x1012a8 64)
	) (* else *) (
		Nop
	)
)

(* 0x001012c3: LEA EAX,[RDX + 0x1] *)
(*    1053379: LEA EAX,[RDX + 0x1] *)
| 0x1012c3 => Some (3,
	Move (V_TEMP 0x4780) (BinOp OP_PLUS (Var R_RDX) (Word 0x1 64)) $;
	Move R_RAX (Cast CAST_LOW 64 (BinOp OP_RSHIFT (Var (V_TEMP 0x4780)) (Word 0 64))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX)))
)

(* 0x001012c6: RET *)
(*    1053382: RET *)
| 0x1012c6 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x001012d0: RET *)
(*    1053392: RET *)
| 0x1012d0 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x001012d8: XOR EAX,EAX *)
(*    1053400: XOR EAX,EAX *)
| 0x1012d8 => Some (2,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_RAX (Cast CAST_SIGNED 64 (BinOp OP_XOR (Extract 31 0 (Var R_RAX)) (Extract 31 0 (Var R_RAX)))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Extract 31 0 (Var R_RAX)) (Word 0x0 32))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Extract 31 0 (Var R_RAX)) (Word 0x0 32))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Extract 31 0 (Var R_RAX)) (Word 0xff 32)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001012da: RET *)
(*    1053402: RET *)
| 0x1012da => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x001012db: PUSH RAX *)
(*    1053403: PUSH RAX *)
| 0x1012db => Some (1,
	Move (V_TEMP 0x27d80) (Var R_RAX) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Var (V_TEMP 0x27d80))) LittleE 8)
)

(* 0x001012dc: LEA RCX,[0x102012] *)
(*    1053404: LEA RCX,[0x102012] *)
| 0x1012dc => Some (7,
	Move R_RCX (Word 0x102012 64)
)

(* 0x001012e3: MOV EDX,0x51 *)
(*    1053411: MOV EDX,0x51 *)
| 0x1012e3 => Some (5,
	Move R_RDX (Word 0x51 64)
)

(* 0x001012e8: LEA RSI,[0x102000] *)
(*    1053416: LEA RSI,[0x102000] *)
| 0x1012e8 => Some (7,
	Move R_RSI (Word 0x102000 64)
)

(* 0x001012ef: LEA RDI,[0x102009] *)
(*    1053423: LEA RDI,[0x102009] *)
| 0x1012ef => Some (7,
	Move R_RDI (Word 0x102009 64)
)

(* 0x001012f6: CALL 0x00101030 *)
(*    1053430: CALL 0x00101030 *)
| 0x1012f6 => Some (5,
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x1012fb 64)) LittleE 8) $;
	Jmp (Word 0x101030 64)
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: register_tm_clones
*)


Definition min_ex_so_register_tm_clones_amd64 : program := fun _ a => match a with

(* 0x00101090: LEA RDI,[0x104018] *)
(*    1052816: LEA RDI,[0x104018] *)
| 0x101090 => Some (7,
	Move R_RDI (Word 0x104018 64)
)

(* 0x00101097: LEA RSI,[0x104018] *)
(*    1052823: LEA RSI,[0x104018] *)
| 0x101097 => Some (7,
	Move R_RSI (Word 0x104018 64)
)

(* 0x0010109e: SUB RSI,RDI *)
(*    1052830: SUB RSI,RDI *)
| 0x10109e => Some (3,
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var R_RSI) (Var R_RDI))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSI) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RSI) (Var R_RDI)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RSI) (Var R_RDI)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDI) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RSI (BinOp OP_MINUS (Var R_RSI) (Var R_RDI)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RSI) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RSI) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RSI) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001010a1: MOV RAX,RSI *)
(*    1052833: MOV RAX,RSI *)
| 0x1010a1 => Some (3,
	Move R_RAX (Var R_RSI)
)

(* 0x001010a4: SHR RSI,0x3f *)
(*    1052836: SHR RSI,0x3f *)
| 0x1010a4 => Some (4,
	Move (V_TEMP 0x6e800) (BinOp OP_AND (Word 0x3f 32) (Word 0x3f 32)) $;
	Move (V_TEMP 0x6e880) (Var R_RSI) $;
	Move R_RSI (BinOp OP_RSHIFT (Var R_RSI) (Var (V_TEMP 0x6e800))) $;
	Move (V_TEMP 0x2f780) (BinOp OP_NEQ (Var (V_TEMP 0x6e800)) (Word 0x0 32)) $;
	Move (V_TEMP 0x2f800) (BinOp OP_MINUS (Var (V_TEMP 0x6e800)) (Word 0x1 32)) $;
	Move (V_TEMP 0x2f880) (BinOp OP_RSHIFT (Var (V_TEMP 0x6e880)) (Var (V_TEMP 0x2f800))) $;
	Move (V_TEMP 0x2f900) (BinOp OP_AND (Var (V_TEMP 0x2f880)) (Word 0x1 64)) $;
	Move (V_TEMP 0x2fa00) (BinOp OP_NEQ (Var (V_TEMP 0x2f900)) (Word 0x0 64)) $;
	Move (V_TEMP 0x2fa80) (UnOp OP_NOT (Var (V_TEMP 0x2f780))) $;
	Move (V_TEMP 0x2fb00) (BinOp OP_AND (Var (V_TEMP 0x2fa80)) (Var R_CF)) $;
	Move (V_TEMP 0x2fb80) (BinOp OP_AND (Var (V_TEMP 0x2f780)) (Var (V_TEMP 0x2fa00))) $;
	Move R_CF (BinOp OP_OR (Var (V_TEMP 0x2fb00)) (Var (V_TEMP 0x2fb80))) $;
	Move (V_TEMP 0x2fd00) (BinOp OP_EQ (Var (V_TEMP 0x6e800)) (Word 0x1 32)) $;
	Move (V_TEMP 0x2fe00) (BinOp OP_SLT (Var (V_TEMP 0x6e880)) (Word 0x0 64)) $;
	Move (V_TEMP 0x2fe80) (UnOp OP_NOT (Var (V_TEMP 0x2fd00))) $;
	Move (V_TEMP 0x2ff00) (BinOp OP_AND (Var (V_TEMP 0x2fe80)) (Var R_OF)) $;
	Move (V_TEMP 0x2ff80) (BinOp OP_AND (Var (V_TEMP 0x2fd00)) (Var (V_TEMP 0x2fe00))) $;
	Move R_OF (BinOp OP_OR (Var (V_TEMP 0x2ff00)) (Var (V_TEMP 0x2ff80))) $;
	Move (V_TEMP 0x2c500) (BinOp OP_NEQ (Var (V_TEMP 0x6e800)) (Word 0x0 32)) $;
	Move (V_TEMP 0x2c600) (BinOp OP_SLT (Var R_RSI) (Word 0x0 64)) $;
	Move (V_TEMP 0x2c680) (UnOp OP_NOT (Var (V_TEMP 0x2c500))) $;
	Move (V_TEMP 0x2c700) (BinOp OP_AND (Var (V_TEMP 0x2c680)) (Var R_SF)) $;
	Move (V_TEMP 0x2c780) (BinOp OP_AND (Var (V_TEMP 0x2c500)) (Var (V_TEMP 0x2c600))) $;
	Move R_SF (BinOp OP_OR (Var (V_TEMP 0x2c700)) (Var (V_TEMP 0x2c780))) $;
	Move (V_TEMP 0x2c900) (BinOp OP_EQ (Var R_RSI) (Word 0x0 64)) $;
	Move (V_TEMP 0x2c980) (UnOp OP_NOT (Var (V_TEMP 0x2c500))) $;
	Move (V_TEMP 0x2ca00) (BinOp OP_AND (Var (V_TEMP 0x2c980)) (Var R_ZF)) $;
	Move (V_TEMP 0x2ca80) (BinOp OP_AND (Var (V_TEMP 0x2c500)) (Var (V_TEMP 0x2c900))) $;
	Move R_ZF (BinOp OP_OR (Var (V_TEMP 0x2ca00)) (Var (V_TEMP 0x2ca80))) $;
	Move (V_TEMP 0x2cb80) (BinOp OP_AND (Var R_RSI) (Word 0xff 64)) $;
	Move (V_TEMP 0x2cc00) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2cb80)))) $;
	Move (V_TEMP 0x2cc80) (BinOp OP_AND (Var (V_TEMP 0x2cc00)) (Word 0x1 8)) $;
	Move (V_TEMP 0x2cd80) (BinOp OP_EQ (Var (V_TEMP 0x2cc80)) (Word 0x0 8)) $;
	Move (V_TEMP 0x2ce00) (UnOp OP_NOT (Var (V_TEMP 0x2c500))) $;
	Move (V_TEMP 0x2ce80) (BinOp OP_AND (Var (V_TEMP 0x2ce00)) (Var R_PF)) $;
	Move (V_TEMP 0x2cf00) (BinOp OP_AND (Var (V_TEMP 0x2c500)) (Var (V_TEMP 0x2cd80))) $;
	Move R_PF (BinOp OP_OR (Var (V_TEMP 0x2ce80)) (Var (V_TEMP 0x2cf00)))
)

(* 0x001010a8: SAR RAX,0x3 *)
(*    1052840: SAR RAX,0x3 *)
| 0x1010a8 => Some (4,
	Move (V_TEMP 0x68b00) (BinOp OP_AND (Word 0x3 32) (Word 0x3f 32)) $;
	Move (V_TEMP 0x68b80) (Var R_RAX) $;
	Move R_RAX (BinOp OP_ARSHIFT (Var R_RAX) (Var (V_TEMP 0x68b00))) $;
	Move (V_TEMP 0x2f000) (BinOp OP_NEQ (Var (V_TEMP 0x68b00)) (Word 0x0 32)) $;
	Move (V_TEMP 0x2f080) (BinOp OP_MINUS (Var (V_TEMP 0x68b00)) (Word 0x1 32)) $;
	Move (V_TEMP 0x2f100) (BinOp OP_ARSHIFT (Var (V_TEMP 0x68b80)) (Var (V_TEMP 0x2f080))) $;
	Move (V_TEMP 0x2f180) (BinOp OP_AND (Var (V_TEMP 0x2f100)) (Word 0x1 64)) $;
	Move (V_TEMP 0x2f280) (BinOp OP_NEQ (Var (V_TEMP 0x2f180)) (Word 0x0 64)) $;
	Move (V_TEMP 0x2f300) (UnOp OP_NOT (Var (V_TEMP 0x2f000))) $;
	Move (V_TEMP 0x2f380) (BinOp OP_AND (Var (V_TEMP 0x2f300)) (Var R_CF)) $;
	Move (V_TEMP 0x2f400) (BinOp OP_AND (Var (V_TEMP 0x2f000)) (Var (V_TEMP 0x2f280))) $;
	Move R_CF (BinOp OP_OR (Var (V_TEMP 0x2f380)) (Var (V_TEMP 0x2f400))) $;
	Move (V_TEMP 0x2f580) (BinOp OP_EQ (Var (V_TEMP 0x68b00)) (Word 0x1 32)) $;
	Move (V_TEMP 0x2f600) (UnOp OP_NOT (Var (V_TEMP 0x2f580))) $;
	Move R_OF (BinOp OP_AND (Var (V_TEMP 0x2f600)) (Var R_OF)) $;
	Move (V_TEMP 0x2c500) (BinOp OP_NEQ (Var (V_TEMP 0x68b00)) (Word 0x0 32)) $;
	Move (V_TEMP 0x2c600) (BinOp OP_SLT (Var R_RAX) (Word 0x0 64)) $;
	Move (V_TEMP 0x2c680) (UnOp OP_NOT (Var (V_TEMP 0x2c500))) $;
	Move (V_TEMP 0x2c700) (BinOp OP_AND (Var (V_TEMP 0x2c680)) (Var R_SF)) $;
	Move (V_TEMP 0x2c780) (BinOp OP_AND (Var (V_TEMP 0x2c500)) (Var (V_TEMP 0x2c600))) $;
	Move R_SF (BinOp OP_OR (Var (V_TEMP 0x2c700)) (Var (V_TEMP 0x2c780))) $;
	Move (V_TEMP 0x2c900) (BinOp OP_EQ (Var R_RAX) (Word 0x0 64)) $;
	Move (V_TEMP 0x2c980) (UnOp OP_NOT (Var (V_TEMP 0x2c500))) $;
	Move (V_TEMP 0x2ca00) (BinOp OP_AND (Var (V_TEMP 0x2c980)) (Var R_ZF)) $;
	Move (V_TEMP 0x2ca80) (BinOp OP_AND (Var (V_TEMP 0x2c500)) (Var (V_TEMP 0x2c900))) $;
	Move R_ZF (BinOp OP_OR (Var (V_TEMP 0x2ca00)) (Var (V_TEMP 0x2ca80))) $;
	Move (V_TEMP 0x2cb80) (BinOp OP_AND (Var R_RAX) (Word 0xff 64)) $;
	Move (V_TEMP 0x2cc00) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2cb80)))) $;
	Move (V_TEMP 0x2cc80) (BinOp OP_AND (Var (V_TEMP 0x2cc00)) (Word 0x1 8)) $;
	Move (V_TEMP 0x2cd80) (BinOp OP_EQ (Var (V_TEMP 0x2cc80)) (Word 0x0 8)) $;
	Move (V_TEMP 0x2ce00) (UnOp OP_NOT (Var (V_TEMP 0x2c500))) $;
	Move (V_TEMP 0x2ce80) (BinOp OP_AND (Var (V_TEMP 0x2ce00)) (Var R_PF)) $;
	Move (V_TEMP 0x2cf00) (BinOp OP_AND (Var (V_TEMP 0x2c500)) (Var (V_TEMP 0x2cd80))) $;
	Move R_PF (BinOp OP_OR (Var (V_TEMP 0x2ce80)) (Var (V_TEMP 0x2cf00)))
)

(* 0x001010ac: ADD RSI,RAX *)
(*    1052844: ADD RSI,RAX *)
| 0x1010ac => Some (3,
	Move R_CF (Cast CAST_LOW 1 (Cast CAST_UNSIGNED 8 (BinOp OP_LT (BinOp OP_PLUS (Var R_RSI) (Var R_RAX)) (Var R_RSI)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_PLUS (Var R_RSI) (Var R_RAX)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSI) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSI) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RAX) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RSI (BinOp OP_PLUS (Var R_RSI) (Var R_RAX)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RSI) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RSI) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RSI) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001010af: SAR RSI,0x1 *)
(*    1052847: SAR RSI,0x1 *)
| 0x1010af => Some (3,
	Move (V_TEMP 0x68700) (BinOp OP_AND (Var R_RSI) (Word 0x1 64)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_NEQ (Var (V_TEMP 0x68700)) (Word 0x0 64))) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_RSI (BinOp OP_ARSHIFT (Var R_RSI) (Word 0x1 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RSI) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RSI) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RSI) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001010b2: JZ 0x001010c8 *)
(*    1052850: JZ 0x001010c8 *)
| 0x1010b2 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1010c8 64)
	) (* else *) (
		Nop
	)
)

(* 0x001010b4: MOV RAX,qword ptr [0x00103fd8] *)
(*    1052852: MOV RAX,qword ptr [0x00103fd8] *)
| 0x1010b4 => Some (7,
	Move R_RAX (Load (Var V_MEM64) (Word 0x103fd8 64) LittleE 8)
)

(* 0x001010bb: TEST RAX,RAX *)
(*    1052859: TEST RAX,RAX *)
| 0x1010bb => Some (3,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70580) (BinOp OP_AND (Var R_RAX) (Var R_RAX)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70580)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70580)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70580)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001010be: JZ 0x001010c8 *)
(*    1052862: JZ 0x001010c8 *)
| 0x1010be => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1010c8 64)
	) (* else *) (
		Nop
	)
)

(* 0x001010c0: JMP RAX *)
(*    1052864: JMP RAX *)
| 0x1010c0 => Some (2,
	Jmp (Var R_RAX)
)

(* 0x001010c8: RET *)
(*    1052872: RET *)
| 0x1010c8 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.