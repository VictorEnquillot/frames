open Make_test_v;;

testing "Point symbol_v with
   Point_symbol_u_any.ml";;

(* toplevel 
   #use "Point_symbol_u_any.ml";; 

 *)

let sym_poi = Point_symbol_v.make "point_constructor" "Summit";;

test_number 1 (
sym_poi
(* : Point_symbol_t.point_symbol *)
= 
Point_symbol_t.Point_constructor "Summit"
);;

let nam_poi = Point_symbol_v.name sym_poi;;

test_number 2 (
nam_poi
(* : string *)
= 
"point_constructor"
);;

let str_poi = Point_symbol_v.string_off sym_poi;;

test_number 3 (
str_poi
(* : string *)
= 
"Summit"
);;

