open Make_test_v;;

testing "Float_symbol_v";;

(* toplevel 
   #use "Float_symbol_u_any.ml";; 
 
*)

let sym_flo = Float_symbol_v.make "float_constructor" "";;

test_number 1 (
sym_flo
=
Float_symbol_t.Float_constructor ""
);;

let nam_flo = Float_symbol_v.name sym_flo;;

test_number 2 (
nam_flo
=
"float_constructor"
);;

