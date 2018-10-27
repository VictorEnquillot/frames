open Make_test_v;;

testing "Entity_internal_basename_lefthandside_list_by_category_trail_provider_v with
   Entity_internal_basename_lefthandside_list_by_category_trail_provider_u_naturalset_symbol.ml";; 

(* toplevel 
   #use "Entity_internal_basename_lefthandside_list_by_category_trail_provider_u_naturalset_symbol.ml";; 

*)

let tra_dos = [("domain", "natural")];;
let tra_cat = Trail_v.make "category" "symbol" tra_dos;;

let ebl_l = Entity_internal_basename_lefthandside_list_by_category_trail_provider_v.provide tra_cat;;

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
   "natural";
   "point";
   "triangle";
   "triangle_isoceles";
   "triangle_scalene";
   "vector"]
);;

