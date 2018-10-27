open Make_test_v;;

testing "Measure_v with
   Measure_u_any.ml";;

(* toplevel 
   #use "Measure_u_any.ml";; 

*)

let val_flo = Float_value_v.float_value_of_string_of_float "length" 10.5;;
let uni = Units_v.make "angstrom" "length";;
let mea = Measure_v.make val_flo uni;;

test_number 1 (
 mea 
(* : Measure_t.measure *)
=
(Float_value_t.Float_constructor ("length", 10.5),
 Units_t.Units_length Units_length_t.Angstrom)
);;
