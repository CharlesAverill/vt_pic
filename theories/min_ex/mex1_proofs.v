(* Proofs for mex1 from the Minimum Excludant challenge

  https://verifythis.github.io/onsite/archive/2025/challenges/verifyThis2025-Challenge-1.pdf
*)

From VtPic Require Import mex_spec.

(* Boolean Marks Implementation *)

(* mex1 calls malloc, an external function that we will include in our trusted computing base.

   We actually don't need to specify its behavior (for this proof), because there is nothing
   special about the addresses we're reading from in the allocated range. Picinae makes no claims
   about ownership or validity of memory addresses.

   Therefore, we just need to know that it returns, and that RAX is the address we care about.
   We'll provide entry points (so we can avoid stepping into the internal code) and *dummy* exit
   points, because the object file these programs were lifted from dynamically links to glibc,
   so these entry points are actually PLT entries, which means they're just trampolines to the
   real functions in the dynamically-linked libc binary, which means we can fudge the exit points. *)
Notation malloc_entry := 0x101050.
Notation malloc_exit  := 0x1011b4.

Notation free_entry := 0x101030.
Notation free_exit  := 0x1011fa.

(* Because the lifted functions don't include any code for malloc or free, we'll also have to inject
   fake dummy code at the above addresses, as Picinae will need to step there. *)
Definition mex1_bin : program := fun s a =>
  match a with
  | malloc_entry
  | free_entry => Some (1, Nop)
  | _ => min_ex_so_mex1_amd64 s a
  end.

Lemma mex1_welltyped : welltyped_prog x64typctx mex1_bin.
Proof. Picinae_typecheck. Qed.

Section Mex1Invariants.
  Variable s0 : store. (* Initial CPU state *)

  Definition mem := s0 V_MEM64.  (* Initial memory state *)

  Definition arr := s0 R_RDI.    (* Array argument *)
  Definition n   := s0 R_RSI.    (* Length argument *)

  Definition seen (s : store) := s R_RAX. (* Boolean marks *)
  Definition arr' (s : store) := s R_RDI. (* Moving pointer for first loop *)
  Definition arr_end (s : store) :=       (* End of moving pointer *)
    arr ⊕ 4 * n.
  Definition x (s : store) := s R_RDX.    (* arr[i] in first loop *)

  Definition mex1_invs T (Inv Post: inv_type T) (NoInv:T) (s:store) (a:addr) : T :=
    match a with
    (* malloc *)
    | malloc_entry => Inv 0 True
    | malloc_exit => Post 0 (
        models x64typctx s0 /\
        s R_RBX = arr /\
        s R_RBP = n /\
        4 * n < 2^64 /\
        mex_safe s0 s
    )
    (* free *)
    | free_entry => Inv 1 True
    | free_exit => Post 1 (
        models x64typctx s0 /\
        s R_RBP = n /\
        4 * n < 2^64 /\
        mex_safe s0 s
    )

    (* Entrypoint *)
    | 0x1011a0 => Inv 2 (
      models x64typctx s0 /\
      s R_RDI = arr /\
      s R_RSI = n /\
      4 * n < 2^64 /\
      mex_safe s0 s
    )
    (* First loop *)
    | 0x1011c0 => Inv 2 (
      models x64typctx s0 /\
      4 * n < 2^64 /\
      (* mex_safe s0 s /\ *)
      (* All non-negative values in subarray arr[0, i) are marked in seen *)
      exists k, arr ⊕ k = arr' s /\
        forall j, j < k -> s V_MEM64 Ⓓ[seen s + j] = 1
    )
    (* Postcondition *)
    | 0x101203 => Post 2 (mex_correct s arr n /\ mex_safe s0 s)
    | _ => NoInv
    end.

    Definition exits0 := make_exits 0 mex1_bin mex1_invs.
    Definition invs0 := make_invs 0 mex1_bin mex1_invs.
    Definition exits1 := make_exits 1 mex1_bin mex1_invs.
    Definition invs1 := make_invs 1 mex1_bin mex1_invs.
    Definition exits2 := make_exits 2 mex1_bin mex1_invs.
    Definition invs2 := make_invs 2 mex1_bin mex1_invs.
End Mex1Invariants.

Create HintDb mex1hints.
Hint Unfold mem arr n seen arr' arr_end x : mex1hints.

Local Ltac step := time x64_step; autounfold with mex1hints.

Definition malloc_spec : Prop :=
  forall s t xs'
    (ENTRY: startof t xs' = (Addr malloc_entry, s))
    (MDL: models x64typctx s),
  satisfies_all mex1_bin (invs0 s) (exits0 s) (xs' :: t).

Definition free_spec : Prop :=
  forall s t xs'
    (ENTRY: startof t xs' = (Addr free_entry, s))
    (MDL: models x64typctx s),
  satisfies_all mex1_bin (invs1 s) (exits1 s) (xs' :: t).

(* TODO : I want to pass these as assumptions to the partial correctness proof
          and then propagate through the invariant set. But they depend on invs[0-1].
          Maybe I could pass them as higher-order functions? Figure out later. *)
Axiom mspec : malloc_spec.
Axiom fspec : free_spec.

Ltac x64_call thm wt n :=
    let MDL1 := fresh "MDL1" in
    let s1 := fresh "s1" in
    set (s1 := update _ _ _);
    eapply models_after_steps;
    [assumption|apply wt|];
    intro MDL1; eapply (perform_call n);
    [reflexivity|solve [intros;
                 eapply thm; 
                 try reflexivity; eauto] || fail "Incorrect call site"|reflexivity|];
    let a := fresh "a" in
    let s' := fresh "s'" in
    let t2 := fresh "t2" in
    let ENTRY := fresh "ENTRY" in
    let XP := fresh "XP" in
    let UT := fresh "UT" in
    let PRE := fresh "PRE" in
    intros
        a' s' t2 ENTRY XP UT PRE
    ; unfold s1 in PRE; psimpl in PRE;
    let MDL' := fresh "MDL'" in
    assert (models x64typctx s') as MDL' by
        (eapply preservation_exec_prog;
         eauto using wt);
    unfold archtyps in *;
    match goal with
    | [|- context[?t2 ++ ?t0 ++ (Addr ?x, ?s) :: ?t]] =>
        let t' := fresh "t'" in
        set (t' := t2++t0++(Addr x, s)::t) in *; clearbody s1;
        let MDL := fresh "MDL" in
        rename MDL' into MDL;
        destruct_inv 64 PRE
    end.

Theorem mex1_partial_correctness:
  forall s t s' x'
    (ENTRY: startof t (x',s') = (Addr 0x1011a0, s))
    (MDL: models x64typctx s)
    (LEN: 4 * n s < 2^64),
  satisfies_all mex1_bin (invs2 s) (exits2 s) ((x',s')::t).
Proof.
  intros. apply prove_invs.

  (* Base case *)
  simpl. rewrite ENTRY. step. now split.

  (* Set up induction *)
  intros. erewrite startof_prefix in ENTRY; try eassumption.
  eapply models_at_invariant; try eassumption. apply mex1_welltyped. intro MDL1.
  clear - PRE MDL1. rename t1 into t. rename s into s0. rename s1 into s.

  (* Start induction *)
  destruct_inv 64 PRE.

  (* Entry -> malloc -> first loop *)
  destruct PRE as (MDL0 & RDI & RSI & LEN & Safety). {
    (* Step until we get to the malloc call site *)
    repeat (step; lazymatch goal with [|- context[0x101050]] => fail | _ => idtac end). step.
    (* Call malloc *)
    x64_call mspec mex1_welltyped 0. unfold n, mex_safe in PRE. psimpl in PRE.
    (* Cleanup *)
    destruct PRE as (MDL0' & RBX & RDI' & LEN' & Safety').
    (* Continue to check for length = 0 *)
    step. step. { (* length = 0, step to free call *)
      repeat (step; lazymatch goal with [|- context[0x1011f5]] => fail | _ => idtac end). step. step.
      (* Call free *)
      x64_call fspec mex1_welltyped 1. unfold n, mex_safe in PRE. psimpl in PRE.
      destruct PRE as (MDL0'' & RBP & LEN'' & Safety'').
      repeat step.
      (* Postcondition *)
      unfold mex_correct, mex_safe. psimpl. admit.
    }

    (* Length <> 0, go to first loop *) {
      repeat step. psimpl.
      repeat (split; [easy|]).
      exists 0. psimpl. unfold arr, n in *. psimpl in RBX.
      rewrite <- RDI', <- RBX, <- RDI in *.
      split.
      

  