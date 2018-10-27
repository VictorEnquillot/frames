
open Make_test_v;;

testing "Constructor_node_basename_list_by_category_trail_provider_v with
   Constructor_node_basename_list_by_category_trail_provider_u_naturalset_formula.ml";; 

(* toplevel 
   #use "Constructor_node_basename_list_by_category_trail_provider_u_naturalset_formula.ml";; 

*)

let nam_dos = "natural";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_l = Constructor_node_basename_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_l
(* : string list *)
=
 ["triangle_isoceles_equilateral"; "triangle_isoceles_right";
   "triangle_isoceles_acute"; "triangle_isoceles_obtuse";
   "triangle_scalene_right"; "triangle_scalene_acute";
   "triangle_scalene_obtuse"; "point_3d"; "point_2d"; "point_1d";
   "vector_3d"; "vector_2d"; "vector_1d"; "x_3d"; "x_2d"; "x_1d"; "y_3d";
   "y_2d"; "z_3d"; "cylindrical_rho"; "cylindrical_phi"; "cylindrical_zed";
   "polar_rho"; "polar_theta"; "spherical_rho"; "spherical_phi";
   "spherical_theta"; "coordinate_1d"]
);;

