(* Proofs for mex0 from the Minimum Excludant challenge

  https://verifythis.github.io/onsite/archive/2025/challenges/verifyThis2025-Challenge-1.pdf
*)

From VtPic Require Import mex_spec.

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
    | 0x101140 => Some (
      models x64typctx s0 /\
      s R_RDI = arr /\
      s R_RSI = n /\
      4 * n < 2^64 /\
      mex_safe s0 s
    )
    (* Outer invariant *)
    | 0x101150 => Some (
      models x64typctx s0 /\
      s R_RDI = arr /\
      s R_RSI = n /\
      4 * n < 2^64 /\
      mex_safe s0 s /\
      v s < n /\
      (* All non-negative integers less than v are present in the array *)
      forall x, x < v s ->
        exists j, j < n /\ scast 32 64 (s V_MEM64 Ⓓ[arr + j ⊗ 4]) = x
    )
    (* Inner invariant *)
    | 0x101160 => Some (
      models x64typctx s0 /\
      s R_RDI = arr /\
      s R_RSI = n /\
      4 * n < 2^64 /\
      mex_safe s0 s /\
      i s < n /\
      v s < n /\
      (* All non-negative integers less than v are present in the array *)
      (forall x, x < v s ->
        exists j, j < n /\ scast 32 64 (s V_MEM64 Ⓓ[arr + j ⊗ 4]) = x) /\
      (* v is not present between positions 0 and i-1 *)
      forall j, j < i s -> scast 32 64 (s V_MEM64 Ⓓ[arr + j ⊗ 4]) <> v s
    )
    (* Postcondition *)
    | 0x101175 | 0x101191 => Some (mex_correct s arr n /\ mex_safe s0 s)
    | _ => None
    end | _ => None end.
End Mex0Invariants.

Create HintDb mex0hints.
Hint Unfold mem arr n v i mex_correct mex_safe : mex0hints.

Local Ltac step := time x64_step; autounfold with mex0hints.

Definition mex0_exit (t:trace) :=
  match t with (Addr a,s)::_ => match a with
  | 0x101175 | 0x101191 => true
  | _ => false
  end | _ => false end.

Theorem mex0_partial_correctness:
  forall s t s' x'
    (ENTRY: startof t (x',s') = (Addr 0x101140, s))
    (MDL: models x64typctx s)
    (LEN: 4 * n s < 2^64),
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
  destruct PRE as (MDL0 & RDI & RSI & LEN & Safety). {
    repeat step.
    (* Postcondition: length = 0 *) {
      apply N.eqb_eq in BC. rewrite BC, N.lxor_nilpotent. psimpl.
      split; [|assumption]. split. lia.
      change (scast _ _ _ mod _) with 0. lia.
    } (* Outer invariant *) {
      psimpl. rewrite N.lxor_nilpotent.
      repeat (split; [easy|]).
      apply N.eqb_neq in BC.
      change (scast _ _ _ mod _) with 0. split; lia.
    }
  }

  (* Outer loop -> Inner loop *)
  destruct PRE as (MDL0 & RDI & RSI & LEN & Safety & NPos & OuterInv). {
    repeat step. psimpl.
    repeat (split; [easy|]).
    rewrite N.lxor_nilpotent.
    change (scast _ _ _ mod _) with 0.
    unfold v, n in *. split. lia. split. lia.
    split. now apply OuterInv.
    lia.
  }

  (* Inner loop -> Inner loop *)
  destruct PRE as (MDL0 & RDI & RSI & LEN & Safety & IN & VN & OuterInv & InnerInv).
  repeat step.

  (* Break out of inner+outer loop, postcondition *) {
    apply N.eqb_eq in BC, BC0.
    rewrite N.mod_small in BC by apply ofZ_bound.
    split. split.
      intros. apply InnerInv. now unfold i; rewrite <- BC0.
    intros. now apply OuterInv.
    now psimpl.
  }

  (* No suitable element found, return n *) {
    apply N.eqb_eq in BC, BC1. psimpl.
    rewrite N.mod_small in BC by apply ofZ_bound.
    split; [|assumption].
    unfold v, i, n in *. rewrite <- BC1. psimpl.
    rewrite msub_nowrap in BC1 by (psimpl; lia).
    psimpl in BC1. rewrite <- BC1 in *. clear BC1.
    split.
      intros. lia.
    intros. assert (x < s0 R_RSI - 1 \/ x = s0 R_RSI - 1) by lia. destruct H0.
      now apply OuterInv.
      exists (s R_RAX). split. lia. rewrite getmem_mod_l in BC. now rewrite BC.
  }

  (* Break out of inner loop, hit outer invariant *) {
    psimpl. repeat (split; [easy|]). unfold v, n, i in *.
    apply N.eqb_neq in BC0, BC1. apply N.eqb_eq in BC.
    rewrite N.mod_small. rewrite msub_nowrap in BC1. psimpl in BC1.
    split. lia.
    intros. destruct (N.eq_dec x (s R_RCX)). subst.
      exists (s R_RAX). split. lia.
      unfold scast in *. rewrite mod_pow2_ofZ in BC by reflexivity.
      rewrite getmem_mod_l in BC. apply BC.
      apply OuterInv. unfold v, n in *. lia.
    psimpl. lia.
    enough (s0 R_RSI < 2^64). lia.
    pose proof (models_var R_RSI MDL0). now simpl in H.
  }

  (* v is absent from the array, return v *) {
    psimpl. apply N.eqb_eq in BC0.
    split; [|assumption]. unfold v, i, n in *.
    rewrite msub_nowrap in BC0 by (psimpl; lia). psimpl in BC0.
    split.
      intros. assert (i0 < s R_RAX \/ i0 = s R_RAX) by lia. destruct H1.
        now apply InnerInv.
        subst. unfold scast in *. rewrite mod_pow2_ofZ in BC by reflexivity.
        rewrite getmem_mod_l in BC.
        now apply N.eqb_neq.
    auto.
  }

  (* Loop around, hit inner invariant again *) {
    psimpl. unfold v, i, n in *.
    repeat (split; [easy|]).
    split.
      apply N.eqb_neq in BC0.
      rewrite msub_nowrap in BC0. psimpl in BC0.
      rewrite N.mod_small by lia. lia.
      pose proof (models_var R_RSI MDL1). simpl in H. psimpl. lia.
    split. assumption.
    split.
      intros. now apply OuterInv.
    intros. rewrite N.mod_small in H.
    assert (j < s R_RAX \/ j = s R_RAX) by lia. destruct H0.
      now apply InnerInv.
      subst. rewrite getmem_mod_l in BC. unfold scast in BC.
      rewrite mod_pow2_ofZ in BC by reflexivity. now apply N.eqb_neq in BC.
    pose proof (models_var R_RSI MDL0). simpl in H0. lia.
  }
Qed.