open Make_test_v;;

testing "Measure_actual_length_v with
       Measure_actual_length_u_any.ml"

(* toplevel 
   #use "Measure_actual_length_u_any.ml";; 

*)

let ual = Units_actual_length_v.make "angstrom" "";;

test_number 1 (
(ual : Units_actual_length_t.units_actual_length ) =
  Units_actual_length_t.Angstrom
);;

let mal = Measure_actual_length_v.make 4.5 ual;;

test_number 2 (
(mal :
  (float, Units_actual_length_t.units_actual_length) Doublet_t.doublet ) =
  (4.5, Units_actual_length_t.Angstrom)
);;
