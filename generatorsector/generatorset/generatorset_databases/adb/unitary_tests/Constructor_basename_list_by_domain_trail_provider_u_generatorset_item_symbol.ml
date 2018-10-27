open Make_test_v;;

testing "Constructor_basename_list_by_domain_trail_provider_v
   Constructor_basename_list_by_domain_trail_provider_u_generatorset_item_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_list_by_domain_trail_provider_u_generatorset_item_symbol.ml";;

*)

let nam_dos = "generatorset";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_con_l = Constructor_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_con_l
(* : string list *)
=
  ["1d";
   "2d";
   "3d";
   "triangle";
   "vector";
   "point";
   "coordinate";
   "triangle_isoceles";
   "triangle_scalene";
   "triangle_isoceles_equilateral";
   "triangle_isoceles_right";
   "triangle_isoceles_acute";
   "triangle_isoceles_obtuse";
   "triangle_scalene_right";
   "triangle_scalene_acute";
   "triangle_scalene_obtuse";
   "coordinate_cartesian";
   "coordinate_cylindrical";
   "coordinate_polar";
   "coordinate_spherical";
   "x";
   "y";
   "z";
   "cylindrical_rho";
   "cylindrical_phi";
   "cylindrical_zed";
   "spherical_rho";
   "spherical_phi";
   "spherical_theta";
   "polar_rho";
   "polar_theta"]
);;


