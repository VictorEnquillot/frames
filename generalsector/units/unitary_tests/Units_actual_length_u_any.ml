open Make_test_v;;

testing "Units_actual_length_v with
       Units_actual_length_u_any.ml"

(* toplevel 
   #use "Units_actual_length_u_any.ml";; 

*)

let ual = Units_actual_length_v.make "angstrom" "";;

test_number 1 (
(ual : Units_actual_length_t.units_actual_length ) =
  Units_actual_length_t.Angstrom
);;
