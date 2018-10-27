open Make_test_v;;

testing "Readee_measure_v with
       Readee_measure_u_any.ml"

(* toplevel 
   #use "Readee_measure_u_any.ml";; 

*)

open Readee_measure_v;;

let mea = Measure_v.make_of_string_of_string_of_string "4.5" "angstrom" "";;

test_number 1 (
(mea : (float, Units_t.units) Doublet_t.doublet ) =
(4.5,
 Units_t.Units_actual
   (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))
);;

let mac = Measure_v.measure_actual_off_measure mea;;

test_number 2 (
(mac : (float, Units_actual_t.units_actual) Doublet_t.doublet ) =
  (4.5, Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)
);;

let rme = readee_measure_of_measure_actual mac;;
 
test_number 3 (
(rme : Readee_measure_t.readee_measure ) =
  Readee_measure_t.Readee_measure
   (4.5, Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)
);;
