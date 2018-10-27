open Make_test_v;;

testing "Calculation_name_by_units_canonical_provider_v with
       Calculation_name_by_units_canonical_provider_u_any.ml"

(* toplevel 
   #use "Calculation_name_by_units_canonical_provider_u_any.ml";; 

*)

let uca = Units_canonical_v.make "canonical_quantum_action_planck_constant" "";;

test_number 1 (
(uca : Units_canonical_t.units_canonical) =
  Units_canonical_t.Units_canonical_quantum
  Units_canonical_quantum_t.Canonical_quantum_action_planck_constant
);;

let nam_cal = Calculation_name_by_units_canonical_provider_v.provide uca;;

test_number 2 (
(nam_cal : string ) = 
"quantum"
);;
