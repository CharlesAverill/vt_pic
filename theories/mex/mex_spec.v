(* Specifications for the Minimum Excludant problem

   https://verifythis.github.io/onsite/archive/2025/challenges/verifyThis2025-Challenge-1.pdf *)

From Lifted Require Export min_ex_lifted.
Require Export Picinae_amd64.
Export X64Notations.

Require Export NArith ZArith Lia.
Open Scope N.

(* The minimum excludant is the smallest non-negative integer that is not present in an array.

   An algorithm that finds the minimum excludant is correct iff its output register (RAX) contains
   the smallest non-negative 64-bit integer that is not present in the region of memory described
   by the array pointer and its length. *)

Definition mex_correct (s : store) (arr : addr) (n : N) : Prop :=
  (* RAX is not present in the array *)
  (forall i,
    i < n ->
    (* This clause only applies when the minimum excludant is smaller than the array size.
       Consider the cause where RAX = n.
       By the pigeonhole principle, if n is returned, it *must* be because all values [0, n-1]
       are present in the array. This is specified in clause 2. *)
    s R_RAX < n ->
    scast 32 64 (s V_MEM64 Ⓓ[arr + i ⊗ 4]) <> s R_RAX) /\
  (* All non-negative integers smaller than RAX are in the array *)
  (forall x, x < s R_RAX ->
    exists i, i < n /\ scast 32 64 (s V_MEM64 Ⓓ[arr + i ⊗ 4]) = x).

(* A minimum excludant routine is safe if it preserves memory *)
Definition mex_safe (s0 s : store) : Prop :=
  s0 V_MEM64 = s V_MEM64.