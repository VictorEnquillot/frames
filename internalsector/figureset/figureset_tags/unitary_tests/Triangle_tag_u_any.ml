open Make_test_v;;

testing "Triangle_tag_v with
   triangle_tag_u_any.ml";;

(* toplevel 
   #use "Triangle_tag_u_any.ml";; 

 *)

let nam_dos = "figureset";;
let idx_dos = 1;;
let soi_dos = Sole_index_v.make idx_dos [];;

let str_tir = "triangle_isosceles_right";;
let sym_tir = Triangle_symbol_v.make str_tir "T";;

test_number 1 (
sym_tir
(* : Triangle_tag_t.triangle_tag *)
=
  Triangle_symbol_t.Triangle_isosceles_symbol
   Triangle_isosceles_symbol_t.Triangle_isosceles_right
);;

let idx_tir = 1;;
let soi_tir = Sole_index_v.make idx_tir soi_dos;;
let tag_tir = Triangle_tag_v.make sym_tir soi_tir;;

test_number 2 (
tag_tir 
(* : string *)
= 
  (Triangle_symbol_t.Triangle_isosceles_symbol
    Triangle_isosceles_symbol_t.Triangle_isosceles_right,
   [1; 1])
);;

let nam_tir = Triangle_tag_v.name tag_tir;;

test_number 3 (
nam_tir 
(* : string *)
= 
"(triangle_isosceles_right, [1; 1])"
);;

