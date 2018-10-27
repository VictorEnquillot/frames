open Make_test_v;;

testing "Entity_basename_lefthandside_list_by_category_trail_provider_v with
   Entity_basename_lefthandside_list_by_category_trail_provider_u_generatorset_formula_list.ml";; 

(* toplevel 
   #use "Entity_basename_lefthandside_list_by_category_trail_provider_u_generatorset_formula_list.ml";; 

*)

let tra_dos = [("domain", "generatorset")];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let ebl_l = Entity_basename_lefthandside_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
ebl_l
(* : string list *)
=
  ["cylindrical_phi";
   "cylindrical_rho";
   "cylindrical_zed";
   "fake_son_constructor";
   "point_constructor:ofstring";
   "polar_rho";
   "polar_theta";
   "spherical_phi";
   "spherical_rho";
   "spherical_theta";
   "triangle_isoceles_acute";
   "triangle_isoceles_equilateral";
   "triangle_isoceles_obtuse";
   "triangle_isoceles_right";
   "triangle_scalene_acute";
   "triangle_scalene_obtuse";
   "triangle_scalene_right";
   "vector_constructor";
   "x:ofstring";
   "y:ofstring";
   "z:ofstring"]
);;

