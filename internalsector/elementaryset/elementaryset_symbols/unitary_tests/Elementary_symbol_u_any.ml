open Make_test_v;;

testing "Elementary_symbol_v with
   Elementary_symbol_u_any.ml";;

(* toplevel 
   #use "Elementary_symbol_u_any.ml";; 

*)

let sym_ele = Elementary_symbol_v.make "angstrom" "";;

test_number 1 (
sym_ele
(* : Elementary_symbol_t.elementary *)
= 
  Elementary_symbol_t.Units_symbol
   (Units_symbol_t.Units_length_symbol Units_length_symbol_t.Angstrom)
);;

