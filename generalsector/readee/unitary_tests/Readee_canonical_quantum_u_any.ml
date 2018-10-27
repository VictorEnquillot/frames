open Make_test_v;;

testing "Readee_canonical_quantum_v with
       Readee_canonical_quantum_u_any.ml"

(* toplevel 
   #use "Readee_canonical_quantum_u_any.ml";; 

*)

let ucq = Readee_canonical_quantum_v.make "canonical_quantum_action_planck_constant" "";;

test_number 1 (
(ucq : Readee_canonical_quantum_t.units_canonical_quantum_symbol ) =
  Readee_canonical_quantum_t.Canonical_quantum_action_planck_constant
);;
