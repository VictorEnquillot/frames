open Make_test_v;;

testing "Units_symbol_v with
   Units_symbol_u_any.ml";;

(* toplevel 
   #use "Units_symbol_u_any.ml";; 

*)

let sym_uni = Units_symbol_v.make "angstrom" "";;

test_number 1 (
sym_uni
(* : Units_symbol_t.units *)
= 
Units_symbol_t.Units_length_symbol Units_length_symbol_t.Angstrom
);;

