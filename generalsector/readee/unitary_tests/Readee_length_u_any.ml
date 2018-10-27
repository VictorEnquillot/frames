open Make_test_v;;

testing "Readee_actual_length_v with
       Readee_actual_length_u_any.ml"

(* toplevel 
   #use "Readee_actual_length_u_any.ml";; 

*)

let ual = Readee_actual_length_v.make "angstrom" "";;

test_number 1 (
(ual : Readee_actual_length_t.units_actual_length *)
= 
  Readee_actual_length_t.Readee_symbol
   (Readee_symbol_t.Readee_length_symbol Readee_length_symbol_t.Angstrom)
);;
