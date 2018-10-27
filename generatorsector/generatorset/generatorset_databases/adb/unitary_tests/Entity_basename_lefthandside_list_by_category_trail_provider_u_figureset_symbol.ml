open Make_test_v;;

testing "Entity_basename_lefthandside_list_by_category_trail_provider_v with
   Entity_basename_lefthandside_list_by_category_trail_provider_u_figureset_symbol.ml";; 

(* toplevel 
   #use "Entity_basename_lefthandside_list_by_category_trail_provider_u_figureset_symbol.ml";; 

*)

let tra_dom = [("domain", "figure")];;
let tra_cat = Trail_v.make "category" "symbol" tra_dom;;

let ebl_l = Entity_basename_lefthandside_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
ebl_l
(* : string list *)
=
["coordinate";
 "coordinate_cartesian";
 "coordinate_cylindrical";
 "coordinate_polar";
 "coordinate_spherical";
 "fake";
 "fake_son";
 "figure";
 "point";
 "triangle";
 "triangle_isoceles";
 "triangle_scalene";
 "vector"]
);;

