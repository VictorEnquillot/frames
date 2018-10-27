open Make_test_v;;

testing "Figure_symbol_v with
   Figure_symbol_u_triangle_w.ml";;

(* toplevel 
   #use "Figure_symbol_u_triangle_w.ml";; 

 *)

open Figure_symbol_v;;

let s = "W";;
let nam = "figure_set_body_triangle_scalene_acute_constructor";;

let sym_fig_fsa = figure_set_body_triangle_scalene_acute_constructor s;; 

test_number 1 (
(sym_fig_fsa : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_set_symbol
   (Figure_set_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_triangle_symbol
       (Figure_set_body_triangle_symbol_t.Figure_set_body_triangle_scalene_symbol
         (Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_acute_symbol
           (Figure_set_body_triangle_scalene_acute_symbol_t.Figure_set_body_triangle_scalene_acute_constructor
             "W")))))
);;

test_number 2 (
make_of_topson_notleaf nam s  = sym_fig_fsa
);; 

test_number 3 (
make nam s = sym_fig_fsa
);; 

let nam_fsa = name sym_fig_fsa;;

test_number 4 (
(nam_fsa : string ) = nam 
);;

let str_fsa = string_off sym_fig_fsa;;

test_number 5 (
str_fsa = s
);;
