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

(* 0x001010f0: ENDBR64 *)
(*    1052912: ENDBR64 *)
| 0x1010f0 => Some (4,
	Nop
)

(* 0x001010f4: CMP byte ptr [0x00104020],0x0 *)
(*    1052916: CMP byte ptr [0x00104020],0x0 *)
| 0x1010f4 => Some (7,
	Move (V_TEMP 0x3e200) (Load (Var V_MEM64) (Word 0x104020 64) LittleE 1) $;
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

(* 0x001010fb: JNZ 0x00101128 *)
(*    1052923: JNZ 0x00101128 *)
| 0x1010fb => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x101128 64)
	) (* else *) (
		Nop
	)
)

(* 0x001010fd: PUSH RBP *)
(*    1052925: PUSH RBP *)
| 0x1010fd => Some (1,
	Move (V_TEMP 0x27d80) (Var R_RBP) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Var (V_TEMP 0x27d80))) LittleE 8)
)

(* 0x001010fe: CMP qword ptr [0x00103fe0],0x0 *)
(*    1052926: CMP qword ptr [0x00103fe0],0x0 *)
| 0x1010fe => Some (8,
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

(* 0x00101106: MOV RBP,RSP *)
(*    1052934: MOV RBP,RSP *)
| 0x101106 => Some (3,
	Move R_RBP (Var R_RSP)
)

(* 0x00101109: JZ 0x00101117 *)
(*    1052937: JZ 0x00101117 *)
| 0x101109 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101117 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010110b: MOV RDI,qword ptr [0x00104018] *)
(*    1052939: MOV RDI,qword ptr [0x00104018] *)
| 0x10110b => Some (7,
	Move R_RDI (Load (Var V_MEM64) (Word 0x104018 64) LittleE 8)
)

(* 0x00101112: CALL 0x00101060 *)
(*    1052946: CALL 0x00101060 *)
| 0x101112 => Some (5,
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x101117 64)) LittleE 8) $;
	Jmp (Word 0x101060 64)
)

(* 0x00101117: CALL 0x00101080 *)
(*    1052951: CALL 0x00101080 *)
| 0x101117 => Some (5,
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x10111c 64)) LittleE 8) $;
	Jmp (Word 0x101080 64)
)

(* 0x0010111c: MOV byte ptr [0x00104020],0x1 *)
(*    1052956: MOV byte ptr [0x00104020],0x1 *)
| 0x10111c => Some (7,
	Move V_MEM64 (Word 0x1 8)
)

(* 0x00101123: POP RBP *)
(*    1052963: POP RBP *)
| 0x101123 => Some (1,
	Move (V_TEMP 0x55480) (Word 0x0 64) $;
	Move (V_TEMP 0x55480) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_RBP (Var (V_TEMP 0x55480))
)

(* 0x00101124: RET *)
(*    1052964: RET *)
| 0x101124 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x00101128: RET *)
(*    1052968: RET *)
| 0x101128 => Some (1,
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

(* 0x0010131c: SUB RSP,0x8 *)
(*    1053468: SUB RSP,0x8 *)
| 0x10131c => Some (4,
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

(* 0x00101320: ADD RSP,0x8 *)
(*    1053472: ADD RSP,0x8 *)
| 0x101320 => Some (4,
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

(* 0x00101324: RET *)
(*    1053476: RET *)
| 0x101324 => Some (1,
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

(* 0x00101080: LEA RDI,[0x104020] *)
(*    1052800: LEA RDI,[0x104020] *)
| 0x101080 => Some (7,
	Move R_RDI (Word 0x104020 64)
)

(* 0x00101087: LEA RAX,[0x104020] *)
(*    1052807: LEA RAX,[0x104020] *)
| 0x101087 => Some (7,
	Move R_RAX (Word 0x104020 64)
)

(* 0x0010108e: CMP RAX,RDI *)
(*    1052814: CMP RAX,RDI *)
| 0x10108e => Some (3,
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

(* 0x00101091: JZ 0x001010a8 *)
(*    1052817: JZ 0x001010a8 *)
| 0x101091 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1010a8 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101093: MOV RAX,qword ptr [0x00103fc8] *)
(*    1052819: MOV RAX,qword ptr [0x00103fc8] *)
| 0x101093 => Some (7,
	Move R_RAX (Load (Var V_MEM64) (Word 0x103fc8 64) LittleE 8)
)

(* 0x0010109a: TEST RAX,RAX *)
(*    1052826: TEST RAX,RAX *)
| 0x10109a => Some (3,
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

(* 0x0010109d: JZ 0x001010a8 *)
(*    1052829: JZ 0x001010a8 *)
| 0x10109d => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1010a8 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010109f: JMP RAX *)
(*    1052831: JMP RAX *)
| 0x10109f => Some (2,
	Jmp (Var R_RAX)
)

(* 0x001010a8: RET *)
(*    1052840: RET *)
| 0x1010a8 => Some (1,
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

(* 0x00101130: ENDBR64 *)
(*    1052976: ENDBR64 *)
| 0x101130 => Some (4,
	Nop
)

(* 0x00101134: JMP 0x001010b0 *)
(*    1052980: JMP 0x001010b0 *)
| 0x101134 => Some (5,
	Jmp (Word 0x1010b0 64)
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: mex0
*)


Definition min_ex_so_mex0_amd64 : program := fun _ a => match a with

(* 0x00101140: XOR ECX,ECX *)
(*    1052992: XOR ECX,ECX *)
| 0x101140 => Some (2,
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

(* 0x00101142: TEST RSI,RSI *)
(*    1052994: TEST RSI,RSI *)
| 0x101142 => Some (3,
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

(* 0x00101145: JZ 0x00101172 *)
(*    1052997: JZ 0x00101172 *)
| 0x101145 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101172 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101147: NOP word ptr [RAX + RAX*0x1] *)
(*    1052999: NOP word ptr [RAX + RAX*0x1] *)
| 0x101147 => Some (9,
	Move (V_TEMP 0x5580) (BinOp OP_TIMES (Var R_RAX) (Word 0x1 64)) $;
	Move (V_TEMP 0x5680) (BinOp OP_PLUS (Var R_RAX) (Var (V_TEMP 0x5580)))
)

(* 0x00101150: XOR EAX,EAX *)
(*    1053008: XOR EAX,EAX *)
| 0x101150 => Some (2,
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

(* 0x00101152: NOP dword ptr CS:[RAX + RAX*0x1] *)
(*    1053010: NOP dword ptr CS:[RAX + RAX*0x1] *)
| 0x101152 => Some (11,
	Move (V_TEMP 0x5580) (BinOp OP_TIMES (Var R_RAX) (Word 0x1 64)) $;
	Move (V_TEMP 0x5680) (BinOp OP_PLUS (Var R_RAX) (Var (V_TEMP 0x5580)))
)

(* 0x0010115d: NOP dword ptr [RAX] *)
(*    1053021: NOP dword ptr [RAX] *)
| 0x10115d => Some (3,
	Nop
)

(* 0x00101160: MOVSXD RDX,dword ptr [RDI + RAX*0x4] *)
(*    1053024: MOVSXD RDX,dword ptr [RDI + RAX*0x4] *)
| 0x101160 => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RAX) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var (V_TEMP 0x4a80)) LittleE 4) $;
	Move R_RDX (Cast CAST_SIGNED 64 (Var (V_TEMP 0x11f80)))
)

(* 0x00101164: CMP RDX,RCX *)
(*    1053028: CMP RDX,RCX *)
| 0x101164 => Some (3,
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

(* 0x00101167: JZ 0x00101180 *)
(*    1053031: JZ 0x00101180 *)
| 0x101167 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101180 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101169: ADD RAX,0x1 *)
(*    1053033: ADD RAX,0x1 *)
| 0x101169 => Some (4,
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

(* 0x0010116d: CMP RSI,RAX *)
(*    1053037: CMP RSI,RAX *)
| 0x10116d => Some (3,
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

(* 0x00101170: JNZ 0x00101160 *)
(*    1053040: JNZ 0x00101160 *)
| 0x101170 => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x101160 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101172: MOV RAX,RCX *)
(*    1053042: MOV RAX,RCX *)
| 0x101172 => Some (3,
	Move R_RAX (Var R_RCX)
)

(* 0x00101175: RET *)
(*    1053045: RET *)
| 0x101175 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x00101180: CMP RSI,RAX *)
(*    1053056: CMP RSI,RAX *)
| 0x101180 => Some (3,
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

(* 0x00101183: JZ 0x00101172 *)
(*    1053059: JZ 0x00101172 *)
| 0x101183 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101172 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101185: ADD RCX,0x1 *)
(*    1053061: ADD RCX,0x1 *)
| 0x101185 => Some (4,
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

(* 0x00101189: CMP RSI,RCX *)
(*    1053065: CMP RSI,RCX *)
| 0x101189 => Some (3,
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

(* 0x0010118c: JNZ 0x00101150 *)
(*    1053068: JNZ 0x00101150 *)
| 0x10118c => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x101150 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010118e: MOV RAX,RCX *)
(*    1053070: MOV RAX,RCX *)
| 0x10118e => Some (3,
	Move R_RAX (Var R_RCX)
)

(* 0x00101191: RET *)
(*    1053073: RET *)
| 0x101191 => Some (1,
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

(* 0x001011a0: PUSH RBP *)
(*    1053088: PUSH RBP *)
| 0x1011a0 => Some (1,
	Move (V_TEMP 0x27d80) (Var R_RBP) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Var (V_TEMP 0x27d80))) LittleE 8)
)

(* 0x001011a1: MOV RBP,RSI *)
(*    1053089: MOV RBP,RSI *)
| 0x1011a1 => Some (3,
	Move R_RBP (Var R_RSI)
)

(* 0x001011a4: PUSH RBX *)
(*    1053092: PUSH RBX *)
| 0x1011a4 => Some (1,
	Move (V_TEMP 0x27d80) (Var R_RBX) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Var (V_TEMP 0x27d80))) LittleE 8)
)

(* 0x001011a5: MOV RBX,RDI *)
(*    1053093: MOV RBX,RDI *)
| 0x1011a5 => Some (3,
	Move R_RBX (Var R_RDI)
)

(* 0x001011a8: MOV RDI,RSI *)
(*    1053096: MOV RDI,RSI *)
| 0x1011a8 => Some (3,
	Move R_RDI (Var R_RSI)
)

(* 0x001011ab: SUB RSP,0x8 *)
(*    1053099: SUB RSP,0x8 *)
| 0x1011ab => Some (4,
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

(* 0x001011af: CALL 0x00101050 *)
(*    1053103: CALL 0x00101050 *)
| 0x1011af => Some (5,
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x1011b4 64)) LittleE 8) $;
	Jmp (Word 0x101050 64)
)

(* 0x001011b4: TEST RBP,RBP *)
(*    1053108: TEST RBP,RBP *)
| 0x1011b4 => Some (3,
	Move R_CF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move R_OF (Cast CAST_LOW 1 (Word 0x0 8)) $;
	Move (V_TEMP 0x70580) (BinOp OP_AND (Var R_RBP) (Var R_RBP)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x70580)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x70580)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x70580)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011b7: JZ 0x001011f2 *)
(*    1053111: JZ 0x001011f2 *)
| 0x1011b7 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1011f2 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011b9: MOV RDI,RBX *)
(*    1053113: MOV RDI,RBX *)
| 0x1011b9 => Some (3,
	Move R_RDI (Var R_RBX)
)

(* 0x001011bc: LEA RCX,[RBX + RBP*0x4] *)
(*    1053116: LEA RCX,[RBX + RBP*0x4] *)
| 0x1011bc => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RBP) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RBX) (Var (V_TEMP 0x4980))) $;
	Move R_RCX (Var (V_TEMP 0x4a80))
)

(* 0x001011c0: MOVSXD RDX,dword ptr [RDI] *)
(*    1053120: MOVSXD RDX,dword ptr [RDI] *)
| 0x1011c0 => Some (3,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_RDI) LittleE 4) $;
	Move R_RDX (Cast CAST_SIGNED 64 (Var (V_TEMP 0x11f80)))
)

(* 0x001011c3: TEST EDX,EDX *)
(*    1053123: TEST EDX,EDX *)
| 0x1011c3 => Some (2,
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

(* 0x001011c5: JS 0x001011d0 *)
(*    1053125: JS 0x001011d0 *)
| 0x1011c5 => Some (2,
	If (Cast CAST_LOW 1 (Var R_SF)) (
		Jmp (Word 0x1011d0 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011c7: CMP RDX,RBP *)
(*    1053127: CMP RDX,RBP *)
| 0x1011c7 => Some (3,
	Move (V_TEMP 0x3f100) (Var R_RDX) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3f100)) (Var R_RBP))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f100)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RBP)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RBP)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RBP) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f200) (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RBP)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f200)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011ca: JNC 0x001011d0 *)
(*    1053130: JNC 0x001011d0 *)
| 0x1011ca => Some (2,
	Move (V_TEMP 0x12780) (UnOp OP_NOT (Var R_CF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12780))) (
		Jmp (Word 0x1011d0 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011cc: MOV byte ptr [RAX + RDX*0x1],0x1 *)
(*    1053132: MOV byte ptr [RAX + RDX*0x1],0x1 *)
| 0x1011cc => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RDX) (Word 0x1 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RAX) (Var (V_TEMP 0x4980))) $;
	Move (V_TEMP 0x6a00) (Word 0x1 8) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var (V_TEMP 0x4a80)) (Cast CAST_LOW 8 (Var (V_TEMP 0x6a00))) LittleE 1)
)

(* 0x001011d0: ADD RDI,0x4 *)
(*    1053136: ADD RDI,0x4 *)
| 0x1011d0 => Some (4,
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

(* 0x001011d4: CMP RCX,RDI *)
(*    1053140: CMP RCX,RDI *)
| 0x1011d4 => Some (3,
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

(* 0x001011d7: JNZ 0x001011c0 *)
(*    1053143: JNZ 0x001011c0 *)
| 0x1011d7 => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x1011c0 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011d9: XOR EDX,EDX *)
(*    1053145: XOR EDX,EDX *)
| 0x1011d9 => Some (2,
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

(* 0x001011db: JMP 0x001011e9 *)
(*    1053147: JMP 0x001011e9 *)
| 0x1011db => Some (2,
	Jmp (Word 0x1011e9 64)
)

(* 0x001011e0: ADD RDX,0x1 *)
(*    1053152: ADD RDX,0x1 *)
| 0x1011e0 => Some (4,
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

(* 0x001011e4: CMP RBP,RDX *)
(*    1053156: CMP RBP,RDX *)
| 0x1011e4 => Some (3,
	Move (V_TEMP 0x3f100) (Var R_RBP) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3f100)) (Var R_RDX))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f100)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RDX)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RDX)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDX) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f200) (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RDX)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f200)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x001011e7: JZ 0x001011f2 *)
(*    1053159: JZ 0x001011f2 *)
| 0x1011e7 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1011f2 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011e9: CMP byte ptr [RAX + RDX*0x1],0x0 *)
(*    1053161: CMP byte ptr [RAX + RDX*0x1],0x0 *)
| 0x1011e9 => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RDX) (Word 0x1 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RAX) (Var (V_TEMP 0x4980))) $;
	Move (V_TEMP 0x11e80) (Load (Var V_MEM64) (Var (V_TEMP 0x4a80)) LittleE 1) $;
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

(* 0x001011ed: JNZ 0x001011e0 *)
(*    1053165: JNZ 0x001011e0 *)
| 0x1011ed => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x1011e0 64)
	) (* else *) (
		Nop
	)
)

(* 0x001011ef: MOV RBP,RDX *)
(*    1053167: MOV RBP,RDX *)
| 0x1011ef => Some (3,
	Move R_RBP (Var R_RDX)
)

(* 0x001011f2: MOV RDI,RAX *)
(*    1053170: MOV RDI,RAX *)
| 0x1011f2 => Some (3,
	Move R_RDI (Var R_RAX)
)

(* 0x001011f5: CALL 0x00101030 *)
(*    1053173: CALL 0x00101030 *)
| 0x1011f5 => Some (5,
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x1011fa 64)) LittleE 8) $;
	Jmp (Word 0x101030 64)
)

(* 0x001011fa: ADD RSP,0x8 *)
(*    1053178: ADD RSP,0x8 *)
| 0x1011fa => Some (4,
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

(* 0x001011fe: MOV RAX,RBP *)
(*    1053182: MOV RAX,RBP *)
| 0x1011fe => Some (3,
	Move R_RAX (Var R_RBP)
)

(* 0x00101201: POP RBX *)
(*    1053185: POP RBX *)
| 0x101201 => Some (1,
	Move (V_TEMP 0x55480) (Word 0x0 64) $;
	Move (V_TEMP 0x55480) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_RBX (Var (V_TEMP 0x55480))
)

(* 0x00101202: POP RBP *)
(*    1053186: POP RBP *)
| 0x101202 => Some (1,
	Move (V_TEMP 0x55480) (Word 0x0 64) $;
	Move (V_TEMP 0x55480) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_RBP (Var (V_TEMP 0x55480))
)

(* 0x00101203: RET *)
(*    1053187: RET *)
| 0x101203 => Some (1,
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

(* 0x00101210: MOV EAX,ESI *)
(*    1053200: MOV EAX,ESI *)
| 0x101210 => Some (2,
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RSI))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX)))
)

(* 0x00101212: TEST ESI,ESI *)
(*    1053202: TEST ESI,ESI *)
| 0x101212 => Some (2,
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

(* 0x00101214: JZ 0x001012a0 *)
(*    1053204: JZ 0x001012a0 *)
| 0x101214 => Some (6,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1012a0 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010121a: XOR EDX,EDX *)
(*    1053210: XOR EDX,EDX *)
| 0x10121a => Some (2,
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

(* 0x0010121c: XOR R8D,R8D *)
(*    1053212: XOR R8D,R8D *)
| 0x10121c => Some (3,
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

(* 0x0010121f: JMP 0x0010124b *)
(*    1053215: JMP 0x0010124b *)
| 0x10121f => Some (2,
	Jmp (Word 0x10124b 64)
)

(* 0x00101228: MOVSXD R9,ECX *)
(*    1053224: MOVSXD R9,ECX *)
| 0x101228 => Some (3,
	Move R_R9 (Cast CAST_SIGNED 64 (Extract 31 0 (Var R_RCX)))
)

(* 0x0010122b: LEA R9,[RDI + R9*0x4] *)
(*    1053227: LEA R9,[RDI + R9*0x4] *)
| 0x10122b => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_R9) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move R_R9 (Var (V_TEMP 0x4a80))
)

(* 0x0010122f: MOV R10D,dword ptr [R9] *)
(*    1053231: MOV R10D,dword ptr [R9] *)
| 0x10122f => Some (3,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_R9) LittleE 4) $;
	Move R_R10 (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x11f80))) $;
	Move R_R10 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_R10)))
)

(* 0x00101232: CMP R10D,ECX *)
(*    1053234: CMP R10D,ECX *)
| 0x101232 => Some (3,
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

(* 0x00101235: JZ 0x0010125c *)
(*    1053237: JZ 0x0010125c *)
| 0x101235 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x10125c 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101237: CMP ECX,EDX *)
(*    1053239: CMP ECX,EDX *)
| 0x101237 => Some (2,
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

(* 0x00101239: JGE 0x00101288 *)
(*    1053241: JGE 0x00101288 *)
| 0x101239 => Some (2,
	Move (V_TEMP 0x12f00) (BinOp OP_EQ (Var R_OF) (Var R_SF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12f00))) (
		Jmp (Word 0x101288 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010123b: MOV dword ptr [RSI],R10D *)
(*    1053243: MOV dword ptr [RSI],R10D *)
| 0x10123b => Some (3,
	Move (V_TEMP 0x6b00) (Extract 31 0 (Var R_R10)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSI) (Cast CAST_LOW 32 (Var (V_TEMP 0x6b00))) LittleE 4)
)

(* 0x0010123e: ADD EDX,0x1 *)
(*    1053246: ADD EDX,0x1 *)
| 0x10123e => Some (3,
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

(* 0x00101241: MOV dword ptr [R9],ECX *)
(*    1053249: MOV dword ptr [R9],ECX *)
| 0x101241 => Some (3,
	Move (V_TEMP 0x6b00) (Extract 31 0 (Var R_RCX)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_R9) (Cast CAST_LOW 32 (Var (V_TEMP 0x6b00))) LittleE 4)
)

(* 0x00101244: MOV R8D,EDX *)
(*    1053252: MOV R8D,EDX *)
| 0x101244 => Some (3,
	Move R_R8 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move R_R8 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_R8)))
)

(* 0x00101247: CMP EDX,EAX *)
(*    1053255: CMP EDX,EAX *)
| 0x101247 => Some (2,
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

(* 0x00101249: JNC 0x00101266 *)
(*    1053257: JNC 0x00101266 *)
| 0x101249 => Some (2,
	Move (V_TEMP 0x12780) (UnOp OP_NOT (Var R_CF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12780))) (
		Jmp (Word 0x101266 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010124b: MOVSXD RCX,EDX *)
(*    1053259: MOVSXD RCX,EDX *)
| 0x10124b => Some (3,
	Move R_RCX (Cast CAST_SIGNED 64 (Extract 31 0 (Var R_RDX)))
)

(* 0x0010124e: LEA RSI,[RDI + RCX*0x4] *)
(*    1053262: LEA RSI,[RDI + RCX*0x4] *)
| 0x10124e => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RCX) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move R_RSI (Var (V_TEMP 0x4a80))
)

(* 0x00101252: MOV ECX,dword ptr [RSI] *)
(*    1053266: MOV ECX,dword ptr [RSI] *)
| 0x101252 => Some (2,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_RSI) LittleE 4) $;
	Move R_RCX (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x11f80))) $;
	Move R_RCX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RCX)))
)

(* 0x00101254: TEST ECX,ECX *)
(*    1053268: TEST ECX,ECX *)
| 0x101254 => Some (2,
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

(* 0x00101256: JS 0x0010125c *)
(*    1053270: JS 0x0010125c *)
| 0x101256 => Some (2,
	If (Cast CAST_LOW 1 (Var R_SF)) (
		Jmp (Word 0x10125c 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101258: CMP ECX,EAX *)
(*    1053272: CMP ECX,EAX *)
| 0x101258 => Some (2,
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

(* 0x0010125a: JC 0x00101228 *)
(*    1053274: JC 0x00101228 *)
| 0x10125a => Some (2,
	If (Cast CAST_LOW 1 (Var R_CF)) (
		Jmp (Word 0x101228 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010125c: ADD EDX,0x1 *)
(*    1053276: ADD EDX,0x1 *)
| 0x10125c => Some (3,
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

(* 0x0010125f: MOV R8D,EDX *)
(*    1053279: MOV R8D,EDX *)
| 0x10125f => Some (3,
	Move R_R8 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move R_R8 (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_R8)))
)

(* 0x00101262: CMP EDX,EAX *)
(*    1053282: CMP EDX,EAX *)
| 0x101262 => Some (2,
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

(* 0x00101264: JC 0x0010124b *)
(*    1053284: JC 0x0010124b *)
| 0x101264 => Some (2,
	If (Cast CAST_LOW 1 (Var R_CF)) (
		Jmp (Word 0x10124b 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101266: MOV ECX,EAX *)
(*    1053286: MOV ECX,EAX *)
| 0x101266 => Some (2,
	Move R_RCX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX))) $;
	Move R_RCX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RCX)))
)

(* 0x00101268: XOR EDX,EDX *)
(*    1053288: XOR EDX,EDX *)
| 0x101268 => Some (2,
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

(* 0x0010126a: JMP 0x00101279 *)
(*    1053290: JMP 0x00101279 *)
| 0x10126a => Some (2,
	Jmp (Word 0x101279 64)
)

(* 0x00101270: ADD RDX,0x1 *)
(*    1053296: ADD RDX,0x1 *)
| 0x101270 => Some (4,
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

(* 0x00101274: CMP RDX,RCX *)
(*    1053300: CMP RDX,RCX *)
| 0x101274 => Some (3,
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

(* 0x00101277: JZ 0x001012a0 *)
(*    1053303: JZ 0x001012a0 *)
| 0x101277 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1012a0 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101279: CMP dword ptr [RDI + RDX*0x4],EDX *)
(*    1053305: CMP dword ptr [RDI + RDX*0x4],EDX *)
| 0x101279 => Some (3,
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

(* 0x0010127c: JZ 0x00101270 *)
(*    1053308: JZ 0x00101270 *)
| 0x10127c => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101270 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010127e: MOV EAX,EDX *)
(*    1053310: MOV EAX,EDX *)
| 0x10127e => Some (2,
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX)))
)

(* 0x00101280: RET *)
(*    1053312: RET *)
| 0x101280 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x00101288: LEA RCX,[RDI + R8*0x4] *)
(*    1053320: LEA RCX,[RDI + R8*0x4] *)
| 0x101288 => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_R8) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move R_RCX (Var (V_TEMP 0x4a80))
)

(* 0x0010128c: MOV ESI,dword ptr [RCX] *)
(*    1053324: MOV ESI,dword ptr [RCX] *)
| 0x10128c => Some (2,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_RCX) LittleE 4) $;
	Move R_RSI (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x11f80))) $;
	Move R_RSI (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RSI)))
)

(* 0x0010128e: MOV dword ptr [RCX],R10D *)
(*    1053326: MOV dword ptr [RCX],R10D *)
| 0x10128e => Some (3,
	Move (V_TEMP 0x6b00) (Extract 31 0 (Var R_R10)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RCX) (Cast CAST_LOW 32 (Var (V_TEMP 0x6b00))) LittleE 4)
)

(* 0x00101291: MOV dword ptr [R9],ESI *)
(*    1053329: MOV dword ptr [R9],ESI *)
| 0x101291 => Some (3,
	Move (V_TEMP 0x6b00) (Extract 31 0 (Var R_RSI)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_R9) (Cast CAST_LOW 32 (Var (V_TEMP 0x6b00))) LittleE 4)
)

(* 0x00101294: JMP 0x00101244 *)
(*    1053332: JMP 0x00101244 *)
| 0x101294 => Some (2,
	Jmp (Word 0x101244 64)
)

(* 0x001012a0: RET *)
(*    1053344: RET *)
| 0x1012a0 => Some (1,
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

(* 0x001012b0: TEST ESI,ESI *)
(*    1053360: TEST ESI,ESI *)
| 0x1012b0 => Some (2,
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

(* 0x001012b2: JZ 0x001012f8 *)
(*    1053362: JZ 0x001012f8 *)
| 0x1012b2 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1012f8 64)
	) (* else *) (
		Nop
	)
)

(* 0x001012b4: MOV EDX,dword ptr [RDI] *)
(*    1053364: MOV EDX,dword ptr [RDI] *)
| 0x1012b4 => Some (2,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_RDI) LittleE 4) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x11f80))) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX)))
)

(* 0x001012b6: MOV EAX,ESI *)
(*    1053366: MOV EAX,ESI *)
| 0x1012b6 => Some (2,
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RSI))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX)))
)

(* 0x001012b8: LEA R8,[RDI + RAX*0x4] *)
(*    1053368: LEA R8,[RDI + RAX*0x4] *)
| 0x1012b8 => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RAX) (Word 0x4 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move R_R8 (Var (V_TEMP 0x4a80))
)

(* 0x001012bc: TEST EDX,EDX *)
(*    1053372: TEST EDX,EDX *)
| 0x1012bc => Some (2,
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

(* 0x001012be: JG 0x001012f8 *)
(*    1053374: JG 0x001012f8 *)
| 0x1012be => Some (2,
	Move (V_TEMP 0x13100) (UnOp OP_NOT (Var R_ZF)) $;
	Move (V_TEMP 0x13180) (BinOp OP_EQ (Var R_OF) (Var R_SF)) $;
	Move (V_TEMP 0x13280) (BinOp OP_AND (Var (V_TEMP 0x13100)) (Var (V_TEMP 0x13180))) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x13280))) (
		Jmp (Word 0x1012f8 64)
	) (* else *) (
		Nop
	)
)

(* 0x001012c0: JZ 0x001012da *)
(*    1053376: JZ 0x001012da *)
| 0x1012c0 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1012da 64)
	) (* else *) (
		Nop
	)
)

(* 0x001012c2: JMP 0x001012fb *)
(*    1053378: JMP 0x001012fb *)
| 0x1012c2 => Some (2,
	Jmp (Word 0x1012fb 64)
)

(* 0x001012c8: MOV ECX,dword ptr [RDI] *)
(*    1053384: MOV ECX,dword ptr [RDI] *)
| 0x1012c8 => Some (2,
	Move (V_TEMP 0x11f80) (Load (Var V_MEM64) (Var R_RDI) LittleE 4) $;
	Move R_RCX (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x11f80))) $;
	Move R_RCX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RCX)))
)

(* 0x001012ca: LEA EAX,[RDX + 0x1] *)
(*    1053386: LEA EAX,[RDX + 0x1] *)
| 0x1012ca => Some (3,
	Move (V_TEMP 0x4780) (BinOp OP_PLUS (Var R_RDX) (Word 0x1 64)) $;
	Move R_RAX (Cast CAST_LOW 64 (BinOp OP_RSHIFT (Var (V_TEMP 0x4780)) (Word 0 64))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX)))
)

(* 0x001012cd: CMP EAX,ECX *)
(*    1053389: CMP EAX,ECX *)
| 0x1012cd => Some (2,
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

(* 0x001012cf: JL 0x001012f0 *)
(*    1053391: JL 0x001012f0 *)
| 0x1012cf => Some (2,
	Move (V_TEMP 0x12e00) (BinOp OP_NEQ (Var R_OF) (Var R_SF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12e00))) (
		Jmp (Word 0x1012f0 64)
	) (* else *) (
		Nop
	)
)

(* 0x001012d1: TEST ECX,ECX *)
(*    1053393: TEST ECX,ECX *)
| 0x1012d1 => Some (2,
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

(* 0x001012d3: CMOVNS EDX,ECX *)
(*    1053395: CMOVNS EDX,ECX *)
| 0x1012d3 => Some (3,
	Move (V_TEMP 0x12c00) (UnOp OP_NOT (Var R_SF)) $;
	Move (V_TEMP 0x3dc00) (Extract 31 0 (Var R_RCX)) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RDX))) $;
	Move (V_TEMP 0x3dc80) (UnOp OP_NOT (Var (V_TEMP 0x12c00))) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x3dc80))) (
		Jmp (Word 0x1012d6 64)
	) (* else *) (
		Nop
	) $;
	Move R_RDX (Cast CAST_UNSIGNED 64 (Var (V_TEMP 0x3dc00)))
)

(* 0x001012d6: CMP EDX,ESI *)
(*    1053398: CMP EDX,ESI *)
| 0x1012d6 => Some (2,
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

(* 0x001012d8: JNC 0x001012fb *)
(*    1053400: JNC 0x001012fb *)
| 0x1012d8 => Some (2,
	Move (V_TEMP 0x12780) (UnOp OP_NOT (Var R_CF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12780))) (
		Jmp (Word 0x1012fb 64)
	) (* else *) (
		Nop
	)
)

(* 0x001012da: ADD RDI,0x4 *)
(*    1053402: ADD RDI,0x4 *)
| 0x1012da => Some (4,
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

(* 0x001012de: CMP RDI,R8 *)
(*    1053406: CMP RDI,R8 *)
| 0x1012de => Some (3,
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

(* 0x001012e1: JNZ 0x001012c8 *)
(*    1053409: JNZ 0x001012c8 *)
| 0x1012e1 => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x1012c8 64)
	) (* else *) (
		Nop
	)
)

(* 0x001012e3: LEA EAX,[RDX + 0x1] *)
(*    1053411: LEA EAX,[RDX + 0x1] *)
| 0x1012e3 => Some (3,
	Move (V_TEMP 0x4780) (BinOp OP_PLUS (Var R_RDX) (Word 0x1 64)) $;
	Move R_RAX (Cast CAST_LOW 64 (BinOp OP_RSHIFT (Var (V_TEMP 0x4780)) (Word 0 64))) $;
	Move R_RAX (Cast CAST_UNSIGNED 64 (Extract 31 0 (Var R_RAX)))
)

(* 0x001012e6: RET *)
(*    1053414: RET *)
| 0x1012e6 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x001012f0: RET *)
(*    1053424: RET *)
| 0x1012f0 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x001012f8: XOR EAX,EAX *)
(*    1053432: XOR EAX,EAX *)
| 0x1012f8 => Some (2,
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

(* 0x001012fa: RET *)
(*    1053434: RET *)
| 0x1012fa => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x001012fb: PUSH RAX *)
(*    1053435: PUSH RAX *)
| 0x1012fb => Some (1,
	Move (V_TEMP 0x27d80) (Var R_RAX) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Var (V_TEMP 0x27d80))) LittleE 8)
)

(* 0x001012fc: LEA RCX,[0x102012] *)
(*    1053436: LEA RCX,[0x102012] *)
| 0x1012fc => Some (7,
	Move R_RCX (Word 0x102012 64)
)

(* 0x00101303: MOV EDX,0x54 *)
(*    1053443: MOV EDX,0x54 *)
| 0x101303 => Some (5,
	Move R_RDX (Word 0x54 64)
)

(* 0x00101308: LEA RSI,[0x102000] *)
(*    1053448: LEA RSI,[0x102000] *)
| 0x101308 => Some (7,
	Move R_RSI (Word 0x102000 64)
)

(* 0x0010130f: LEA RDI,[0x102009] *)
(*    1053455: LEA RDI,[0x102009] *)
| 0x10130f => Some (7,
	Move R_RDI (Word 0x102009 64)
)

(* 0x00101316: CALL 0x00101040 *)
(*    1053462: CALL 0x00101040 *)
| 0x101316 => Some (5,
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x10131b 64)) LittleE 8) $;
	Jmp (Word 0x101040 64)
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: min_ex.so
function: register_tm_clones
*)


Definition min_ex_so_register_tm_clones_amd64 : program := fun _ a => match a with

(* 0x001010b0: LEA RDI,[0x104020] *)
(*    1052848: LEA RDI,[0x104020] *)
| 0x1010b0 => Some (7,
	Move R_RDI (Word 0x104020 64)
)

(* 0x001010b7: LEA RSI,[0x104020] *)
(*    1052855: LEA RSI,[0x104020] *)
| 0x1010b7 => Some (7,
	Move R_RSI (Word 0x104020 64)
)

(* 0x001010be: SUB RSI,RDI *)
(*    1052862: SUB RSI,RDI *)
| 0x1010be => Some (3,
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

(* 0x001010c1: MOV RAX,RSI *)
(*    1052865: MOV RAX,RSI *)
| 0x1010c1 => Some (3,
	Move R_RAX (Var R_RSI)
)

(* 0x001010c4: SHR RSI,0x3f *)
(*    1052868: SHR RSI,0x3f *)
| 0x1010c4 => Some (4,
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

(* 0x001010c8: SAR RAX,0x3 *)
(*    1052872: SAR RAX,0x3 *)
| 0x1010c8 => Some (4,
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

(* 0x001010cc: ADD RSI,RAX *)
(*    1052876: ADD RSI,RAX *)
| 0x1010cc => Some (3,
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

(* 0x001010cf: SAR RSI,0x1 *)
(*    1052879: SAR RSI,0x1 *)
| 0x1010cf => Some (3,
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

(* 0x001010d2: JZ 0x001010e8 *)
(*    1052882: JZ 0x001010e8 *)
| 0x1010d2 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1010e8 64)
	) (* else *) (
		Nop
	)
)

(* 0x001010d4: MOV RAX,qword ptr [0x00103fd8] *)
(*    1052884: MOV RAX,qword ptr [0x00103fd8] *)
| 0x1010d4 => Some (7,
	Move R_RAX (Load (Var V_MEM64) (Word 0x103fd8 64) LittleE 8)
)

(* 0x001010db: TEST RAX,RAX *)
(*    1052891: TEST RAX,RAX *)
| 0x1010db => Some (3,
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

(* 0x001010de: JZ 0x001010e8 *)
(*    1052894: JZ 0x001010e8 *)
| 0x1010de => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1010e8 64)
	) (* else *) (
		Nop
	)
)

(* 0x001010e0: JMP RAX *)
(*    1052896: JMP RAX *)
| 0x1010e0 => Some (2,
	Jmp (Var R_RAX)
)

(* 0x001010e8: RET *)
(*    1052904: RET *)
| 0x1010e8 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.