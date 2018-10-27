open Make_test_v;;

testing "Constructor_basename_lefthandside_list_by_category_trail_provider_v
   Constructor_basename_lefthandside_list_by_category_trail_provider_u_naturalset_formula_list.ml";; 

(* toplevel 
   #use "Constructor_basename_lefthandside_list_by_category_trail_provider_u_naturalset_formula_list.ml";;

*)

let nam_dos = "natural";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol = Constructor_basename_lefthandside_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol
(* : (string, string) Doublet_t.doublet list *)
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

