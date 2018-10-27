open Make_test_v;;

testing "Constructor_basename_leaf_list_by_domain_trail_provider_v with
   Constructor_basename_leaf_list_by_domain_trail_provider_u_figureset.ml";; 

(* toplevel 
   #use "Constructor_basename_leaf_list_by_domain_trail_provider_u_figureset.ml";; 

*)

let tra_dos = Trail_v.make "domain" "figure" [];;

let nam_lea_l = Constructor_basename_leaf_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
tra_dos
(* : Trail_t.trail *)
= 
[("domain", "figure")]
);;

test_number 2 (
nam_lea_l
=
["triangle_isoceles_equilateral";
 "triangle_isoceles_right";
 "triangle_isoceles_acute";
 "triangle_isoceles_obtuse";
 "triangle_scalene_right";
 "triangle_scalene_acute";
 "triangle_scalene_obtuse";
 "vector_3d";
 "vector_2d";
 "vector_1d";
 "point_3d";
 "point_2d";
 "point_1d";
 "x_3d";
 "y_3d";
 "z_3d";
 "cylindrical_rho";
 "cylindrical_phi";
 "cylindrical_zed";
 "spherical_rho";
 "spherical_phi";
 "spherical_theta";
 "x_2d";
 "y_2d";
 "polar_rho";
 "polar_theta";
 "coordinate_1d"]
);;
