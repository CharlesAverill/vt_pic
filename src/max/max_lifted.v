(* Automatically generated with pcode2coq
arch: amd64
file: max.so
function: __do_global_dtors_aux
*)

Require Import Picinae_amd64.
Require Import NArith.
Require Import Lia.
Open Scope N.

Definition max_so___do_global_dtors_aux_amd64 : program := fun _ a => match a with

(* 0x001010b0: ENDBR64 *)
(*    1052848: ENDBR64 *)
| 0x1010b0 => Some (4,
	Nop
)

(* 0x001010b4: CMP byte ptr [0x00104008],0x0 *)
(*    1052852: CMP byte ptr [0x00104008],0x0 *)
| 0x1010b4 => Some (7,
	Move (V_TEMP 0x3e200) (Load (Var V_MEM64) (Word 0x104008 64) LittleE 1) $;
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

(* 0x001010bb: JNZ 0x001010e8 *)
(*    1052859: JNZ 0x001010e8 *)
| 0x1010bb => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x1010e8 64)
	) (* else *) (
		Nop
	)
)

(* 0x001010bd: PUSH RBP *)
(*    1052861: PUSH RBP *)
| 0x1010bd => Some (1,
	Move (V_TEMP 0x27d80) (Var R_RBP) $;
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Var (V_TEMP 0x27d80))) LittleE 8)
)

(* 0x001010be: CMP qword ptr [0x00103fc8],0x0 *)
(*    1052862: CMP qword ptr [0x00103fc8],0x0 *)
| 0x1010be => Some (8,
	Move (V_TEMP 0x3eb00) (Load (Var V_MEM64) (Word 0x103fc8 64) LittleE 8) $;
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

(* 0x001010c6: MOV RBP,RSP *)
(*    1052870: MOV RBP,RSP *)
| 0x1010c6 => Some (3,
	Move R_RBP (Var R_RSP)
)

(* 0x001010c9: JZ 0x001010d7 *)
(*    1052873: JZ 0x001010d7 *)
| 0x1010c9 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1010d7 64)
	) (* else *) (
		Nop
	)
)

(* 0x001010cb: MOV RDI,qword ptr [0x00104000] *)
(*    1052875: MOV RDI,qword ptr [0x00104000] *)
| 0x1010cb => Some (7,
	Move R_RDI (Load (Var V_MEM64) (Word 0x104000 64) LittleE 8)
)

(* 0x001010d2: CALL 0x00101030 *)
(*    1052882: CALL 0x00101030 *)
| 0x1010d2 => Some (5,
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x1010d7 64)) LittleE 8) $;
	Jmp (Word 0x101030 64)
)

(* 0x001010d7: CALL 0x00101040 *)
(*    1052887: CALL 0x00101040 *)
| 0x1010d7 => Some (5,
	Move R_RSP (BinOp OP_MINUS (Var R_RSP) (Word 0x8 64)) $;
	Move V_MEM64 (Store (Var V_MEM64) (Var R_RSP) (Cast CAST_LOW 64 (Word 0x1010dc 64)) LittleE 8) $;
	Jmp (Word 0x101040 64)
)

(* 0x001010dc: MOV byte ptr [0x00104008],0x1 *)
(*    1052892: MOV byte ptr [0x00104008],0x1 *)
| 0x1010dc => Some (7,
	Move V_MEM64 (Word 0x1 8)
)

(* 0x001010e3: POP RBP *)
(*    1052899: POP RBP *)
| 0x1010e3 => Some (1,
	Move (V_TEMP 0x55480) (Word 0x0 64) $;
	Move (V_TEMP 0x55480) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Move R_RBP (Var (V_TEMP 0x55480))
)

(* 0x001010e4: RET *)
(*    1052900: RET *)
| 0x1010e4 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
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

(* Automatically generated with pcode2coq
arch: amd64
file: max.so
function: _fini
*)


Definition max_so__fini_amd64 : program := fun _ a => match a with

(* 0x00101134: SUB RSP,0x8 *)
(*    1052980: SUB RSP,0x8 *)
| 0x101134 => Some (4,
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

(* 0x00101138: ADD RSP,0x8 *)
(*    1052984: ADD RSP,0x8 *)
| 0x101138 => Some (4,
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

(* 0x0010113c: RET *)
(*    1052988: RET *)
| 0x10113c => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: max.so
function: _init
*)


Definition max_so__init_amd64 : program := fun _ a => match a with

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

(* 0x00101004: MOV RAX,qword ptr [0x00103fe0] *)
(*    1052676: MOV RAX,qword ptr [0x00103fe0] *)
| 0x101004 => Some (7,
	Move R_RAX (Load (Var V_MEM64) (Word 0x103fe0 64) LittleE 8)
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
file: max.so
function: deregister_tm_clones
*)


Definition max_so_deregister_tm_clones_amd64 : program := fun _ a => match a with

(* 0x00101040: LEA RDI,[0x104008] *)
(*    1052736: LEA RDI,[0x104008] *)
| 0x101040 => Some (7,
	Move R_RDI (Word 0x104008 64)
)

(* 0x00101047: LEA RAX,[0x104008] *)
(*    1052743: LEA RAX,[0x104008] *)
| 0x101047 => Some (7,
	Move R_RAX (Word 0x104008 64)
)

(* 0x0010104e: CMP RAX,RDI *)
(*    1052750: CMP RAX,RDI *)
| 0x10104e => Some (3,
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

(* 0x00101051: JZ 0x00101068 *)
(*    1052753: JZ 0x00101068 *)
| 0x101051 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101068 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101053: MOV RAX,qword ptr [0x00103fd8] *)
(*    1052755: MOV RAX,qword ptr [0x00103fd8] *)
| 0x101053 => Some (7,
	Move R_RAX (Load (Var V_MEM64) (Word 0x103fd8 64) LittleE 8)
)

(* 0x0010105a: TEST RAX,RAX *)
(*    1052762: TEST RAX,RAX *)
| 0x10105a => Some (3,
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

(* 0x0010105d: JZ 0x00101068 *)
(*    1052765: JZ 0x00101068 *)
| 0x10105d => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101068 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010105f: JMP RAX *)
(*    1052767: JMP RAX *)
| 0x10105f => Some (2,
	Jmp (Var R_RAX)
)

(* 0x00101068: RET *)
(*    1052776: RET *)
| 0x101068 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: max.so
function: frame_dummy
*)


Definition max_so_frame_dummy_amd64 : program := fun _ a => match a with

(* 0x001010f0: ENDBR64 *)
(*    1052912: ENDBR64 *)
| 0x1010f0 => Some (4,
	Nop
)

(* 0x001010f4: JMP 0x00101070 *)
(*    1052916: JMP 0x00101070 *)
| 0x1010f4 => Some (5,
	Jmp (Word 0x101070 64)
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: max.so
function: max
*)


Definition max_so_max_amd64 : program := fun _ a => match a with

(* 0x00101100: XOR EAX,EAX *)
(*    1052928: XOR EAX,EAX *)
| 0x101100 => Some (2,
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

(* 0x00101102: SUB RSI,0x1 *)
(*    1052930: SUB RSI,0x1 *)
| 0x101102 => Some (4,
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var R_RSI) (Word 0x1 64))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSI) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RSI) (Word 0x1 64)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RSI) (Word 0x1 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x1 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RSI (BinOp OP_MINUS (Var R_RSI) (Word 0x1 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RSI) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RSI) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RSI) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101106: JZ 0x00101131 *)
(*    1052934: JZ 0x00101131 *)
| 0x101106 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x101131 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101108: NOP dword ptr [RAX + RAX*0x1] *)
(*    1052936: NOP dword ptr [RAX + RAX*0x1] *)
| 0x101108 => Some (8,
	Move (V_TEMP 0x5580) (BinOp OP_TIMES (Var R_RAX) (Word 0x1 64)) $;
	Move (V_TEMP 0x5680) (BinOp OP_PLUS (Var R_RAX) (Var (V_TEMP 0x5580)))
)

(* 0x00101110: MOV RDX,qword ptr [RDI + RSI*0x8] *)
(*    1052944: MOV RDX,qword ptr [RDI + RSI*0x8] *)
| 0x101110 => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RSI) (Word 0x8 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move (V_TEMP 0x12000) (Load (Var V_MEM64) (Var (V_TEMP 0x4a80)) LittleE 8) $;
	Move R_RDX (Var (V_TEMP 0x12000))
)

(* 0x00101114: CMP RDX,qword ptr [RDI + RAX*0x8] *)
(*    1052948: CMP RDX,qword ptr [RDI + RAX*0x8] *)
| 0x101114 => Some (4,
	Move (V_TEMP 0x4980) (BinOp OP_TIMES (Var R_RAX) (Word 0x8 64)) $;
	Move (V_TEMP 0x4a80) (BinOp OP_PLUS (Var R_RDI) (Var (V_TEMP 0x4980))) $;
	Move (V_TEMP 0x12000) (Load (Var V_MEM64) (Var (V_TEMP 0x4a80)) LittleE 8) $;
	Move (V_TEMP 0x3f880) (Var (V_TEMP 0x12000)) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var R_RDX) (Var (V_TEMP 0x3f880)))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RDX) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RDX) (Var (V_TEMP 0x3f880))) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RDX) (Var (V_TEMP 0x3f880))) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f880)) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f980) (BinOp OP_MINUS (Var R_RDX) (Var (V_TEMP 0x3f880))) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f980)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f980)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f980)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x00101118: JLE 0x00101128 *)
(*    1052952: JLE 0x00101128 *)
| 0x101118 => Some (2,
	Move (V_TEMP 0x12f80) (BinOp OP_NEQ (Var R_OF) (Var R_SF)) $;
	Move (V_TEMP 0x13080) (BinOp OP_OR (Var R_ZF) (Var (V_TEMP 0x12f80))) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x13080))) (
		Jmp (Word 0x101128 64)
	) (* else *) (
		Nop
	)
)

(* 0x0010111a: ADD RAX,0x1 *)
(*    1052954: ADD RAX,0x1 *)
| 0x10111a => Some (4,
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

(* 0x0010111e: CMP RSI,RAX *)
(*    1052958: CMP RSI,RAX *)
| 0x10111e => Some (3,
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

(* 0x00101121: JNZ 0x00101114 *)
(*    1052961: JNZ 0x00101114 *)
| 0x101121 => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x101114 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101123: RET *)
(*    1052963: RET *)
| 0x101123 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

(* 0x00101128: SUB RSI,0x1 *)
(*    1052968: SUB RSI,0x1 *)
| 0x101128 => Some (4,
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var R_RSI) (Word 0x1 64))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSI) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RSI) (Word 0x1 64)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var R_RSI) (Word 0x1 64)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Word 0x1 64) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move R_RSI (BinOp OP_MINUS (Var R_RSI) (Word 0x1 64)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var R_RSI) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var R_RSI) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var R_RSI) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x0010112c: CMP RAX,RSI *)
(*    1052972: CMP RAX,RSI *)
| 0x10112c => Some (3,
	Move (V_TEMP 0x3f100) (Var R_RAX) $;
	Move R_CF (Cast CAST_LOW 1 (BinOp OP_LT (Var (V_TEMP 0x3f100)) (Var R_RSI))) $;
	Move R_OF (Cast CAST_LOW 1 (Cast CAST_LOW 8 (BinOp OP_AND (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (Var (V_TEMP 0x3f100)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RSI)) (Word 63 64)) (Word 1 64))) (BinOp OP_XOR (BinOp OP_XOR (BinOp OP_AND (BinOp OP_RSHIFT (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RSI)) (Word 63 64)) (Word 1 64)) (BinOp OP_AND (BinOp OP_RSHIFT (Var R_RSI) (Word 63 64)) (Word 1 64))) (Word 1 64))))) $;
	Move (V_TEMP 0x3f200) (BinOp OP_MINUS (Var (V_TEMP 0x3f100)) (Var R_RSI)) $;
	Move R_SF (Cast CAST_LOW 1 (BinOp OP_SLT (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move R_ZF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x3f200)) (Word 0x0 64))) $;
	Move (V_TEMP 0x2c280) (BinOp OP_AND (Var (V_TEMP 0x3f200)) (Word 0xff 64)) $;
	Move (V_TEMP 0x2c300) (Cast CAST_LOW 8 (UnOp OP_POPCOUNT (Var (V_TEMP 0x2c280)))) $;
	Move (V_TEMP 0x2c380) (BinOp OP_AND (Var (V_TEMP 0x2c300)) (Word 0x1 8)) $;
	Move R_PF (Cast CAST_LOW 1 (BinOp OP_EQ (Var (V_TEMP 0x2c380)) (Word 0x0 8)))
)

(* 0x0010112f: JNZ 0x00101110 *)
(*    1052975: JNZ 0x00101110 *)
| 0x10112f => Some (2,
	Move (V_TEMP 0x12880) (UnOp OP_NOT (Var R_ZF)) $;
	If (Cast CAST_LOW 1 (Var (V_TEMP 0x12880))) (
		Jmp (Word 0x101110 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101131: RET *)
(*    1052977: RET *)
| 0x101131 => Some (1,
	Move (V_TEMP 0x288) (Load (Var V_MEM64) (Var R_RSP) LittleE 8) $;
	Move R_RSP (BinOp OP_PLUS (Var R_RSP) (Word 0x8 64)) $;
	Jmp (Var (V_TEMP 0x288))
)

| _ => None
end.

(* Automatically generated with pcode2coq
arch: amd64
file: max.so
function: register_tm_clones
*)


Definition max_so_register_tm_clones_amd64 : program := fun _ a => match a with

(* 0x00101070: LEA RDI,[0x104008] *)
(*    1052784: LEA RDI,[0x104008] *)
| 0x101070 => Some (7,
	Move R_RDI (Word 0x104008 64)
)

(* 0x00101077: LEA RSI,[0x104008] *)
(*    1052791: LEA RSI,[0x104008] *)
| 0x101077 => Some (7,
	Move R_RSI (Word 0x104008 64)
)

(* 0x0010107e: SUB RSI,RDI *)
(*    1052798: SUB RSI,RDI *)
| 0x10107e => Some (3,
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

(* 0x00101081: MOV RAX,RSI *)
(*    1052801: MOV RAX,RSI *)
| 0x101081 => Some (3,
	Move R_RAX (Var R_RSI)
)

(* 0x00101084: SHR RSI,0x3f *)
(*    1052804: SHR RSI,0x3f *)
| 0x101084 => Some (4,
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

(* 0x00101088: SAR RAX,0x3 *)
(*    1052808: SAR RAX,0x3 *)
| 0x101088 => Some (4,
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

(* 0x0010108c: ADD RSI,RAX *)
(*    1052812: ADD RSI,RAX *)
| 0x10108c => Some (3,
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

(* 0x0010108f: SAR RSI,0x1 *)
(*    1052815: SAR RSI,0x1 *)
| 0x10108f => Some (3,
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

(* 0x00101092: JZ 0x001010a8 *)
(*    1052818: JZ 0x001010a8 *)
| 0x101092 => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1010a8 64)
	) (* else *) (
		Nop
	)
)

(* 0x00101094: MOV RAX,qword ptr [0x00103fd0] *)
(*    1052820: MOV RAX,qword ptr [0x00103fd0] *)
| 0x101094 => Some (7,
	Move R_RAX (Load (Var V_MEM64) (Word 0x103fd0 64) LittleE 8)
)

(* 0x0010109b: TEST RAX,RAX *)
(*    1052827: TEST RAX,RAX *)
| 0x10109b => Some (3,
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

(* 0x0010109e: JZ 0x001010a8 *)
(*    1052830: JZ 0x001010a8 *)
| 0x10109e => Some (2,
	If (Cast CAST_LOW 1 (Var R_ZF)) (
		Jmp (Word 0x1010a8 64)
	) (* else *) (
		Nop
	)
)

(* 0x001010a0: JMP RAX *)
(*    1052832: JMP RAX *)
| 0x1010a0 => Some (2,
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