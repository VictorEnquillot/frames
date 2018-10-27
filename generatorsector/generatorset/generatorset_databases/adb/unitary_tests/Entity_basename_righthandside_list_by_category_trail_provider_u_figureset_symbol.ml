open Make_test_v;;

testing "Entity_basename_righthandside_list_by_category_trail_provider_v with
   Entity_basename_righthandside_list_by_category_trail_provider_u_figureset_symbol.ml";; 

(* toplevel 
   #use "Entity_basename_righthandside_list_by_category_trail_provider_u_figureset_symbol.ml";; 

*)

let tra_dos = [("domain", "figure")];;
let tra_cat = Trail_v.make "category" "symbol" tra_dos;;

let ebr_l = Entity_basename_righthandside_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
ebr_l
(* : string list *)
=
  ["coordinate";
   "point";
   "triangle";
   "vector";
   "fake";
   "triangle_isoceles";
   "triangle_scalene";
   "triangle_isoceles_equilateral:ofstring";
   "triangle_isoceles_right:ofstring";
   "triangle_isoceles_acute:ofstring";
   "triangle_isoceles_obtuse:ofstring";
   "triangle_scalene_right:ofstring";
   "triangle_scalene_acute:ofstring";
   "triangle_scalene_obtuse:ofstring";
   "fake_son";
   "fake_son_constructor";
   "vector_constructor:ofstring";
   "point_constructor:ofstring";
   "coordinate_cartesian";
   "coordinate_cylindrical";
   "coordinate_polar";
   "coordinate_spherical";
   "x:ofstring";
   "y:ofstring";
   "z:ofstring";
   "cylindrical_rho";
   "cylindrical_phi";
   "cylindrical_zed";
   "spherical_rho";
   "spherical_phi";
   "spherical_theta";
   "polar_rho";
   "polar_theta"]
);;

