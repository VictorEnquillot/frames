open Make_test_v;;

testing "Point tag_v with
   point_tag_u_any.ml";;

(* toplevel 
   #use "point_tag_u_any.ml";; 

 *)

let nam_dos = "figureset";;
let idx_dos = 1;;
let soi_dos = Sole_index_v.make idx_dos [];;

let str_tir = "triangle_isosceles_right";;
let sym_tir = Triangle_symbol_v.make str_tir "Tir";;
let idx_tir = 1;;
let soi_tir = Sole_index_v.make idx_tir soi_dos;;
let tag_tir = Triangle_tag_v.make sym_tir soi_tir;;

let str_psu = "point_3d";;
let sym_psu = Point_symbol_v.make str_psu "Tir Summit";;
let idx_psu = 1;;
let soi_psu = Sole_index_v.make idx_psu soi_tir;;
let tag_psu = Point_tag_v.make sym_psu soi_psu;;
let nam_psu = Point_tag_v.name tag_psu;;

let str_v3d = "vector_3d";;
let sym_v3d = Vector_symbol_v.make str_v3d "Tir Basis";;
let idx_v3d = 2;;
let soi_v3d = Sole_index_v.make idx_v3d soi_tir;;
let tag_v3d = Vector_tag_v.make sym_v3d soi_v3d;;
let nam_v3d = Vector_tag_v.name tag_v3d;;

let str_pbb = "point_3d";;
let sym_pbb = Point_symbol_v.make str_pbb "Tir Basis Begining";;
let idx_pbb = 1;;
let soi_pbb = Sole_index_v.make idx_pbb soi_v3d;;
let tag_pbb = Point_tag_v.make sym_pbb soi_pbb;;
let nam_pbb = Point_tag_v.name tag_pbb;;

let str_pbe = "point_3d";;
let sym_pbe = Point_symbol_v.make str_pbe "Tir Basis End";;
let idx_pbe = 2;;
let soi_pbe = Sole_index_v.make idx_pbe soi_v3d;;
let tag_pbe = Point_tag_v.make sym_pbe soi_pbe;;
let nam_pbe = Point_tag_v.name tag_pbe;;

test_number 1 (
tag_tir 
(* : string *)
= 
  (Triangle_symbol_t.Triangle_isosceles_symbol
    Triangle_isosceles_symbol_t.Triangle_isosceles_right,
   [1; 1])
);;

test_number 2 (
tag_v3d 
(* : string *)
= 
(Vector_symbol_t.Vector_3d, [2; 1; 1])
);;

test_number 3 (
tag_psu
(* Point_symbol_t.point_symbol Tag_t.tag *)
 =
  (Point_symbol_t.Point_3d, [1; 1; 1])
);;

test_number 4 (
tag_pbb
(* Point_symbol_t.point_symbol Tag_t.tag *)
 =
  (Point_symbol_t.Point_3d, [1; 2; 1; 1])
);;

test_number 5 (
tag_pbe
(* Point_symbol_t.point_symbol Tag_t.tag *)
 =
  (Point_symbol_t.Point_3d, [2; 2; 1; 1])
);;

