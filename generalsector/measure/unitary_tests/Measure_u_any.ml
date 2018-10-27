open Make_test_v;;

testing "Measure_v with
       Measure_u_any.ml"

(* toplevel 
   #use "Measure_u_any.ml";; 

*)

open Measure_v;;

let uni = Units_v.make "angstrom" "";;

test_number 1 (
(uni : Units_t.units ) =
Units_t.Units_actual
  (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)
);;

let mea = Measure_v.make 4.5 uni;;

test_number 2 (
( mea : (float, Units_t.units) Doublet_t.doublet ) =
  (4.5,
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))
);;

test_number 3 (
mea = make_of_string_of_string_of_string "4.5" "angstrom" ""
);;

let mac = measure_actual_off_measure mea;;

test_number 4 (
(mac : (float, Units_actual_t.units_actual) Doublet_t.doublet ) =
(4.5, Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)
);;

let nam_cal = "classical";;
let mca_cla = measure_canonical_of_measure_of_calculation_name mea nam_cal;;
 
test_number 5 (
(mca_cla : (float, Units_canonical_t.units_canonical) Doublet_t.doublet ) =
  (8.50376756054278,
   Units_canonical_t.Units_canonical_classical
    Units_canonical_classical_t.Canonical_classical_length_angstrom)
);;

let mea_cla = measure_of_measure_canonical mca_cla;;

test_number 6 (
(mea_cla : (float, Units_t.units) Doublet_t.doublet ) =
  (8.50376756054278,
   Units_t.Units_canonical
    (Units_canonical_t.Units_canonical_classical
      Units_canonical_classical_t.Canonical_classical_length_angstrom))
);;

let mea_act = measure_actual_of_measure_canonical mca_cla;;

test_number 7 ( 
(mea_act : (float, Units_actual_t.units_actual) Doublet_t.doublet ) =
  (8.50376756054278,
   Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)
);;

let nam_cal = "quantum";;
let mca_qua = Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal;;

test_number 8 (
(mca_qua : (float, Units_canonical_t.units_canonical) Doublet_t.doublet ) =
  (16.0697917163866,
   Units_canonical_t.Units_canonical_quantum
    Units_canonical_quantum_t.Canonical_quantum_length_bohr)
);;

let mca_qua = measure_canonical_of_measure_of_calculation_name mea_cla nam_cal;;

test_number 9 (
(mca_qua : (float, Units_canonical_t.units_canonical) Doublet_t.doublet ) =
  (16.0697917163866,
   Units_canonical_t.Units_canonical_quantum
    Units_canonical_quantum_t.Canonical_quantum_length_bohr)
);;

let mea_qua = measure_of_measure_canonical mca_qua;;

test_number 10 (
(mea_qua : (float, Units_t.units) Doublet_t.doublet ) =
  (16.0697917163866,
   Units_t.Units_canonical
    (Units_canonical_t.Units_canonical_quantum
      Units_canonical_quantum_t.Canonical_quantum_length_bohr))
);;

let nam_cal = "classical";;
let mca_cla = measure_canonical_of_measure_of_calculation_name mea_qua nam_cal;;

let nam_mea = name mea;;
test_number 11 (
(nam_mea : string ) = 
"(4.500000, angstrom)"
);;

let sna_mea = shortname mea;;
test_number 12 (
(sna_mea : string ) = 
"4.5 ang"
);;

let dim_mea = dimension mea;;
test_number 13 (
(dim_mea : string ) = 
"length"
);;
