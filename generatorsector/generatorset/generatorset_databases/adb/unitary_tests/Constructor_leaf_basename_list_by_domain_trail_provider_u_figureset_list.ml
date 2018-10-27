open Make_test_v;;

testing "Constructor_leaf_basename_list_by_domain_trail_provider_v
   Constructor_leaf_basename_list_by_domain_trail_provider_u_figureset_list.ml";; 

(* toplevel 
   #use "Constructor_leaf_basename_list_by_domain_trail_provider_u_figureset_list.ml";;

*)

let nam_dos = "figure";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let clb_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
clb_l
(* : string list *)
=
  ["triangle_isoceles_equilateral";
   "triangle_isoceles_right";
   "triangle_isoceles_acute";
   "triangle_isoceles_obtuse";
   "triangle_scalene_right";
   "triangle_scalene_acute";
   "triangle_scalene_obtuse";
   "fake_son_constructor";
   "vector_constructor";
   "point_constructor:ofstring";
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

