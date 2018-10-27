open Make_test_v;;

testing "Units_v with
       Units_u_any.ml"

(* toplevel 
   #use "Units_u_any.ml";; 

*)

open Units_v;;

let ual = Units_actual_length_v.make "angstrom" "";;

test_number 1 (
(ual : Units_actual_length_t.units_actual_length ) =
  Units_actual_length_t.Angstrom
);;

let uac_len = Units_actual_v.units_actual_of_units_actual_length ual;;

test_number 2 (
(uac_len : Units_actual_t.units_actual ) =
  Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom
);;

let uni_len = Units_v.units_of_units_actual_length ual;;

test_number 3 (
(uni_len : Units_t.units ) =
  Units_t.Units_actual
   (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)
);;

let sof = "angstrom";;

test_number 4 (
uni_len =  Units_v.units_of_units_actual_length (Units_actual_length_v.make sof "")
);;

let sna_len = Units_v.shortname uni_len;;

test_number 5 (
(sna_len : string ) = 
"angstrom"
);;

let kin_len = Units_v.kind uni_len;;

test_number 6 (
(kin_len : string ) = 
"actual"
);;

let uni_ulb = Units_v.make "canonical_quantum_length_bohr" "";;

test_number 7 (
(uni_ulb : Units_t.units ) =
  Units_t.Units_canonical
   (Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr)
);;

let kin_ulb = Units_v.kind uni_ulb;;

test_number 8 (
(kin_ulb : string ) = 
"canonical"
);;

let sna_ulb = Units_v.shortname uni_ulb;;

test_number 9 (
(sna_ulb : string ) = 
"bohr"
);;

let uac = Units_conversion_v.units_to_units_actual_of_units uni_ulb;;

test_number 10 (
(uac : Units_actual_t.units_actual ) =
  Units_actual_t.Units_actual_length Units_actual_length_t.Bohr
);;
