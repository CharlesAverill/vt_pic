(* Proofs for max from the Maximum in Array challenge

  https://verifythis.github.io/onsite/archive/2011/report-cost-competition-2011.pdf
*)

From Lifted Require Import max_lifted.
Require Import Picinae_amd64.
Import X64Notations.

Require Import NArith ZArith Lia.
Open Scope N.

Lemma max_welltyped : welltyped_prog x64typctx max_so_max_amd64.
Proof. Picinae_typecheck. Qed.

(* The index returned by max points to an element maximal in the array *)
Definition max_correct (s : store) (arr : addr) (n : N) : Prop :=
  (* Degenerate case *)
  (n = 1 /\ s R_RAX = 0) \/
  (s R_RAX < n /\
    forall i, i < n -> s V_MEM64 Ⓠ[arr + i * 8] <= s V_MEM64 Ⓠ[arr + s R_RAX * 8]).

Section MaxInvariants.
  Variable s0 : store. (* Initial CPU state *)

  Definition mem := s0 V_MEM64.  (* Initial memory state *)

  Definition arr := s0 R_RDI.    (* Array argument *)
  Definition n   := s0 R_RSI.    (* Length argument *)

  Definition x (s : store) := s R_RAX.
  Definition y (s : store) := s R_RSI.

  Definition max_invs (t:trace) :=
    match t with (Addr a,s)::_ => match a with
    (* Entrypoint *)
    | 0x101100 => Some (
      models x64typctx s0 /\
      s R_RDI = arr /\
      s R_RSI = n /\
      0 < 4 * n < 2^64
    )
    (* Outer invariant *)
    | 0x101110 => Some (
      models x64typctx s0 /\
      s R_RDI = arr /\
      0 < 4 * n < 2^64 /\
      x s <= y s < n /\
      (* All elements in between 0 and x or y and n are <= arr[x] or arr[y] *)
      (forall i, i < x s \/ y s < i < n ->
        s V_MEM64 Ⓠ[arr + i * 8] <= s V_MEM64 Ⓠ[arr + x s * 8] \/
        s V_MEM64 Ⓠ[arr + i * 8] <= s V_MEM64 Ⓠ[arr + y s * 8])
    )
    (* Inner invariant *)
    | 0x101114 => Some (
      models x64typctx s0 /\
      s R_RDI = arr /\
      0 < 4 * n < 2^64 /\
      x s <= y s < n /\
      (* RDX contains arr[y] *)
      s R_RDX = s V_MEM64 Ⓠ[arr + y s * 8] /\
      (* All elements in between 0 and x or y and n are <= arr[x] or arr[y] *)
      (forall i, i < x s \/ y s < i < n ->
        s V_MEM64 Ⓠ[arr + i * 8] <= s V_MEM64 Ⓠ[arr + x s * 8] \/
        s V_MEM64 Ⓠ[arr + i * 8] <= s V_MEM64 Ⓠ[arr + y s * 8])
    )
    (* Postcondition *)
    | 0x101123 | 0x101131 => Some (max_correct s arr n)
    | _ => None
    end | _ => None end.
End MaxInvariants.

Create HintDb maxhints.
Hint Unfold mem arr n x y max_correct : maxhints.

Local Ltac step := time x64_step; autounfold with maxhints.

Definition max_exit (t:trace) :=
  match t with (Addr a,s)::_ => match a with
  | 0x101123 | 0x101131 => true
  | _ => false
  end | _ => false end.

Theorem mex0_partial_correctness:
  forall s t s' x'
    (ENTRY: startof t (x',s') = (Addr 0x101100, s))
    (MDL: models x64typctx s)
    (LEN: 0 < 4 * n s < 2^64),
  satisfies_all max_so_max_amd64 (max_invs s) max_exit ((x',s')::t).
Proof.
  intros. apply prove_invs.

  (* Base case *)
  simpl. rewrite ENTRY. step. now split.

  (* Set up induction *)
  intros. erewrite startof_prefix in ENTRY; try eassumption.
  eapply models_at_invariant; try eassumption. apply max_welltyped. intro MDL1.
  clear - PRE MDL1. rename t1 into t. rename s into s0. rename s1 into s.

  (* Start induction *)
  destruct_inv 64 PRE.

  (* Entry -> Outer loop *)
  destruct PRE as (MDL0 & RDI & RSI & LEN). {
    repeat step.
    (* Postcondition: length = 1 *) {
      apply N.eqb_eq in BC. rewrite N.lxor_nilpotent. left.
      change (scast _ _ _ mod _) with 0. now split.
    } (* Outer invariant *) {
      unfold x, y. psimpl. rewrite N.lxor_nilpotent.
      change (scast _ _ _) with 0. psimpl.
      unfold arr, n in *. repeat split; try lia; auto.
      rewrite msub_nowrap; psimpl; lia.
      intros. rewrite msub_nowrap in H by (psimpl; lia).
        psimpl in H. lia.
    }
  }

  (* Outer loop -> Inner loop *)
  destruct PRE as (MDL0 & RDI & LEN & XYN & Inv). {
    repeat step.
    (* Inner invariant *)
    unfold n, x, y in *. psimpl. repeat split; lia || auto.
(*     intros. destruct (Left i H).
      exists (s R_RAX). split. lia. assumption.
      exists (s R_RSI). now split.
    intros. destruct (Right i H).
      exists (s R_RAX). split. lia. assumption.
      exists (s R_RSI). now split. *)
  }

  (* Inner loop -> Inner loop *)
  destruct PRE as (MDL0 & RDI & LEN & XYN & RDX & Inv). {
    repeat step; psimpl; unfold x, y, n in *.
    (* x = y, return *) {
      right. apply N.eqb_eq in BC0. rewrite <- BC0 in *. clear BC0.
      psimpl. split. lia. intros.
      admit.
    }
    (* Inner invariant *) {
      repeat split; auto; try lia.
      rewrite N.mod_small by lia.
        destruct (N.eq_dec (s R_RAX) (s R_RSI)). rewrite <- e in *. clear e.
          rewrite N.eqb_refl in BC. psimpl in BC. destruct negb in BC; discriminate. lia.
      intros. rewrite N.mod_small in H by lia. destruct H.
      - admit.
      - specialize (Inv i ltac:(now right)). case Inv; intro; clear Inv.
          admit.
          now right.
    }
    (* x = n, return *) {
      apply N.eqb_eq in BC0. repeat rewrite N.mod_small in BC0 by lia.
      rewrite <- BC0 in *. clear BC0. right. split. lia.
      intros. admit.
    }
    (* Break inner loop, outer invariant *) {
      repeat split; lia || auto.
        admit.
        rewrite msub_nowrap; psimpl. lia. admit.
      intros. destruct H.
        destruct (Inv i ltac:(now left)). now left.
        admit.
      admit.
    }
Admitted.
