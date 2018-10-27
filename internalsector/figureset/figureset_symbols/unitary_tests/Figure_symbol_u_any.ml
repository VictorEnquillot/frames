open Make_test_v;;

testing "Figure_symbol_v with
   Figure_symbol_u_any.ml";;

(* toplevel 
   #use "Figure_symbol_u_any.ml";; 

 *)

let sym_tir = Figure_symbol_v.make "triangle_isosceles_right" "";;

test_number 1 (
sym_tir
(* : Figure_symbol_t.triangle_symbol *)
=
  Figure_symbol_t.Triangle_isosceles_symbol
   (Triangle_isosceles_symbol_t.Triangle_isosceles_right "")
);;

let nam_tir = Figure_symbol_v.name sym_tir;;

test_number 2 (
nam_tir 
(* : string *)
= 
"triangle_isosceles_right"
);;

let str_tir = Figure_symbol_v.string_off sym_tir;;
test_number 3 (
str_tir
=
""
);;
