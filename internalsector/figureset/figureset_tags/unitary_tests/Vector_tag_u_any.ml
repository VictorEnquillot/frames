open Make_test_v;;

testing "Vector_tag_v with
   vector_tag_u_any.ml";;

(* toplevel 
   #use "Vector_tag_u_any.ml";;
 
 *)

let nam_dos = "figureset";;
let idx_dos = 1;;
let soi_dos = Sole_index_v.make idx_dos [];;

let str_tir = "triangle_isosceles_right";;
let sym_tir = Triangle_symbol_v.make str_tir "TIR";;
let idx_tir = 1;;
let soi_tir = Sole_index_v.make idx_tir soi_dos;;
let tag_tir = Triangle_tag_v.make soi_tir str_tir "TIR";;

let str_v3d = "vector_3d";;
let sym_v3d = Vector_symbol_v.make str_v3d "V3D";;
let idx_v3d = 2;;
let soi_v3d = Sole_index_v.make idx_v3d soi_tir;;
let tag_v3d = Vector_tag_v.make soi_v3d str_v3d "V3D";;
let nam_v3d = Vector_tag_v.name tag_v3d;;

test_number 1 (
tag_tir 
(* : string *)
= 
  (Triangle_symbol_t.Triangle_isosceles_symbol
    Triangle_isosceles_symbol_t.Triangle_isosceles_right,
   [1; 1])
);;

test_number 2 (
sym_v3d
(* : Vector_tag_t.vector_tag *)
=
Vector_symbol_t.Vector_3d
);;

test_number 3 (
tag_v3d 
(* : string *)
= 
(Vector_symbol_t.Vector_3d, [2; 1; 1])
);;

test_number 4 (
nam_v3d 
(* : string *)
= 
"(Vector_3d, [2; 1; 1])"
);;

