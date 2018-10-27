open Make_test_v;;

testing "Units_canonical_quantum_v with
       Units_canonical_quantum_u_any.ml"

(* toplevel 
   #use "Units_canonical_quantum_u_any.ml";; 

*)

let ucq = Units_canonical_quantum_v.make "canonical_quantum_action_planck_constant" "";;

test_number 1 (
(ucq : Units_canonical_quantum_t.units_canonical_quantum ) =
  Units_canonical_quantum_t.Canonical_quantum_action_planck_constant
);;
