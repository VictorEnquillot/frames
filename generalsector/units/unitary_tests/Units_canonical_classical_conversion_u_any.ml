open Make_test_v;;

testing "Units_canonical_classical_conversion_v with
       Units_canonical_classical_conversion_u_any.ml"

(* toplevel 
   #use "Units_canonical_classical_conversion_u_any.ml";; 

*)

open Units_canonical_classical_conversion_v;;

let uac = Units_actual_v.make "angstrom" "";;

test_number 1 (
(uac : Units_actual_t.units_actual ) =
Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom
);;

let con_uac = conversion_factor_of_units_actual uac;;

test_number 2 (
(con_uac : float ) = 
1.
);;

let ucc = units_canonical_classical_of_units_actual uac;;

test_number 3 (
(ucc : Units_canonical_classical_t.units_canonical_classical ) =
  Units_canonical_classical_t.Canonical_classical_length_angstrom
);;

test_number 4 ( 
uac = units_actual_of_units_canonical_classical ucc
);;

let ual = Units_actual_length_v.make "angstrom" "";;

test_number 5 (
(ual : Units_actual_length_t.units_actual_length ) =
  Units_actual_length_t.Angstrom
);;

let con_ual = conversion_factor_of_units_actual_length ual;;

test_number 6 (
(con_ual : float ) = 
1.0
);;
