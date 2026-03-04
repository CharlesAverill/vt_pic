(* Proofs for the Minimum Excludant challenge

  https://verifythis.github.io/onsite/archive/2025/challenges/verifyThis2025-Challenge-1.pdf
*)

From Lifted Require Import min_ex_lifted.
Require Import Picinae_amd64.
Import X64Notations.

Require Import NArith ZArith Lia.
Open Scope N.

(* The minimum excludant is the smallest non-negative integer that is not present in an array.

   An algorithm that finds the minimum excludant is correct iff its output register (RAX) contains
   the smallest non-negative 64-bit integer that is not present in the region of memory described
   by the array pointer and its length. *)

Definition mex_correct (s : store) (arr : addr) (n : N) : Prop :=
  (* RAX is not present in the array *)
  (forall i, i < n -> scast 32 64 (s V_MEM64 Ⓓ[arr + i ⊗ 4]) <> s R_RAX) /\
  (* All non-negative integers smaller than RAX are in the array *)
  (forall x, x < s R_RAX ->
    exists i, i < n /\ scast 32 64 (s V_MEM64 Ⓓ[arr + i ⊗ 4]) = x).

(* Naive Implementation *)
Lemma mex0_welltyped : welltyped_prog x64typctx min_ex_so_mex0_amd64.
Proof. Picinae_typecheck. Qed.

Section Mex0Invariants.
  Variable s0 : store. (* Initial CPU state *)

  Definition mem := s0 V_MEM64.  (* Initial memory state *)

  Definition arr := s0 R_RDI.    (* Array argument *)
  Definition n   := s0 R_RSI.    (* Length argument *)

  Definition v (s : store) := s R_RCX. (* Outer loop counter *)
  Definition i (s : store) := s R_RAX. (* Inner loop counter *)

  Definition mex0_invs (t:trace) :=
    match t with (Addr a,s)::_ => match a with
    (* Entrypoint *)
    | 0x101120 => Some (models x64typctx s0 /\ s R_RDI = arr /\ s R_RSI = n)
    (* Outer invariant *)
    | 0x101130 => Some (
      models x64typctx s0 /\
      s R_RDI = arr /\ s R_RSI = n /\
      v s < n /\
      (* All non-negative integers less than v are present in the array *)
      forall x, x < v s ->
        exists j, j < n /\ scast 32 64 (s V_MEM64 Ⓓ[arr + j ⊗ 4]) = x
    )
    (* Inner invariant *)
    | 0x101140 => Some (
      models x64typctx s0 /\
      s R_RDI = arr /\ s R_RSI = n /\
      i s <= v s < n /\
      (* All non-negative integers less than v are present in the array *)
      (forall x, x < v s ->
        exists j, j < n /\ scast 32 64 (s V_MEM64 Ⓓ[arr + j ⊗ 4]) = x) /\
      (* v is not present between positions 0 and i-1 *)
      forall j, j < i s -> scast 32 64 (s V_MEM64 Ⓓ[arr + j ⊗ 4]) <> v s
    )
    (* Postcondition *)
    | 0x101155 | 0x101171 => Some (mex_correct s arr n)
    | _ => None
    end | _ => None end.
End Mex0Invariants.

Create HintDb mex0hints.
Hint Unfold mem arr n v i : mex0hints.

Local Ltac step := time x64_step; autounfold with mex0hints.

Definition mex0_exit (t:trace) :=
  match t with (Addr a,s)::_ => match a with
  | 0x101155 | 0x101171 => true
  | _ => false
  end | _ => false end.

Theorem mex0_partial_correctness:
  forall s t s' x'
         (ENTRY: startof t (x',s') = (Addr 0x101120, s))
         (MDL: models x64typctx s)
         (RSI32: s R_RSI = s R_RSI mod 2^32),
  satisfies_all min_ex_so_mex0_amd64 (mex0_invs s) mex0_exit ((x',s')::t).
Proof.
  intros. apply prove_invs.

  (* Base case *)
  simpl. rewrite ENTRY. step. now split.

  (* Set up induction *)
  intros. erewrite startof_prefix in ENTRY; try eassumption.
  eapply models_at_invariant; try eassumption. apply mex0_welltyped. intro MDL1.
  clear - PRE MDL1. rename t1 into t. rename s into s0. rename s1 into s.

  (* Start induction *)
  destruct_inv 64 PRE.

  (* Entry -> Outer loop *)
  destruct PRE as (MDL0 & RDI & RSI). {
    repeat step.
    (* Postcondition: length = 0 *) {
      apply N.eqb_eq in BC. rewrite BC, N.lxor_nilpotent.
      split. lia.
      change (scast _ _ _ mod _) with 0. lia.
    } (* Outer invariant *) {
      psimpl. rewrite N.lxor_nilpotent.
      repeat (split; [easy|]).
      apply N.eqb_neq in BC.
      change (scast _ _ _ mod _) with 0. split; lia.
    }
  }

  (* Outer loop -> Inner loop *)
  destruct PRE as (MDL0 & RDI & RSI & NPos & OuterInv). {
    repeat step. psimpl.
    repeat (split; [easy|]).
    rewrite N.lxor_nilpotent.
    change (scast _ _ _ mod _) with 0. split.
    split. lia. assumption. split.
      now apply OuterInv.
    lia.
  }

  (* Inner loop -> Inner loop *)
  destruct PRE as (MDL0 & RDI & RSI & NPos & OuterInv & InnerInv).
  repeat step.

  (* Break out of inner+outer loop, postcondition *) {
    apply N.eqb_eq in BC, BC0.
    rewrite N.mod_small in BC by apply ofZ_bound.
    split.
      intros. apply InnerInv. now unfold i; rewrite <- BC0.
    intros. now apply OuterInv.
  }

  (* Postcondition *) {
    apply N.eqb_eq in BC, BC1.
    rewrite N.mod_small in BC by apply ofZ_bound.
    split.
      intros. unfold v, i, n in *. rewrite <- BC1. psimpl.
      rewrite msub_nowrap in BC1 by (psimpl; lia).
      psimpl in BC1. rewrite <- BC1 in *. clear BC1.
      admit.
    intros. rewrite <- BC1 in *. psimpl in H. apply OuterInv. unfold v. rewrite <- BC1.
    admit.
  }

  (* Break out of inner loop, hit outer invariant *) {
    psimpl. repeat (split; [easy|]). unfold v, n, i in NPos.
    apply N.eqb_neq in BC0, BC1. apply N.eqb_eq in BC.
    rewrite N.mod_small. rewrite msub_nowrap in BC1. psimpl in BC1.
    split. lia.
    intros. destruct (N.eq_dec x (s R_RCX)). subst.
      exists (s R_RAX). split. lia.
      unfold scast in *. rewrite mod_pow2_ofZ in BC by reflexivity.
      now rewrite getmem_mod_l in BC.
      apply OuterInv. unfold v, n in *. lia.
    psimpl. lia.
    enough (s0 R_RSI < 2^64). lia.
    pose proof (models_var R_RSI MDL0). now simpl in H.
  }

  (* Postcondition *) {
    apply N.eqb_eq in BC0.
    split.
      intros. apply InnerInv. unfold i in *.
      rewrite msub_nowrap in BC0. psimpl in BC0. rewrite <- BC0.
      admit.
      psimpl. lia.
    intros. now apply OuterInv.
  }

  (* Loop around, hit inner invariant again *) {
    psimpl. unfold i in InnerInv. unfold v in OuterInv.
    repeat (split; [easy|]). unfold i, v, n in *.
    split.
      rewrite N.mod_small. admit. admit.
    split.
      intros. now apply OuterInv.
    intros. apply InnerInv. admit.
  }
Admitted.