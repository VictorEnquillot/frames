open Make_test_v;;

testing "Figure_set_body_triangle_scalene_acute_symbol_v with
   Figure_set_body_triangle_scalene_acute_symbol_u_triangle_w.ml";;

(* toplevel 
   #use "Figure_set_body_triangle_scalene_acute_symbol_u_triangle_w.ml";; 

 *)

open Figure_set_body_triangle_scalene_acute_symbol_v;;

let s = "W";;
let nam = "figure_set_body_triangle_scalene_acute_constructor";;

let sym_fsa = figure_set_body_triangle_scalene_acute_constructor s;; 

test_number 1 (
(sym_fsa :
  Figure_set_body_triangle_scalene_acute_symbol_t.figure_set_body_triangle_scalene_acute_symbol ) =
  Figure_set_body_triangle_scalene_acute_symbol_t.Figure_set_body_triangle_scalene_acute_constructor
   "W"
);;

test_number 2 (
make_of_topson_ofstring nam s = sym_fsa
);; 

test_number 3 (
make nam s = sym_fsa
);; 

let nam_fsa = name sym_fsa;;

test_number 4 (
(nam_fsa : string ) = nam 
);;

let str_fsa = string_off sym_fsa;;

test_number 5 (
str_fsa = s
);;
