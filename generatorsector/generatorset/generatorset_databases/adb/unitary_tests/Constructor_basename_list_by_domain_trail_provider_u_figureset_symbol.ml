open Make_test_v;;

testing "Constructor_basename_list_by_domain_trail_provider_v
   Constructor_basename_list_by_domain_trail_provider_u_figureset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_list_by_domain_trail_provider_u_figureset_symbol.ml";;

*)

let nam_dos = "figure";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_con_l = Constructor_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_con_l
(* : string list *)
=
  ["coordinate";
   "coordinate_cartesian";
   "coordinate_cylindrical";
   "coordinate_polar";
   "coordinate_spherical";
   "cylindrical_phi";
   "cylindrical_rho";
   "cylindrical_zed";
   "fake";
   "fake_son";
   "fake_son_constructor";
   "figure";
   "point";
   "point_constructor:ofstring";
   "polar_rho";
   "polar_theta";
   "spherical_phi";
   "spherical_rho";
   "spherical_theta";
   "triangle";
   "triangle_isoceles";
   "triangle_isoceles_acute";
   "triangle_isoceles_equilateral";
   "triangle_isoceles_obtuse";
   "triangle_isoceles_right";
   "triangle_scalene";
   "triangle_scalene_acute";
   "triangle_scalene_obtuse";
   "triangle_scalene_right";
   "vector";
   "vector_constructor";
   "x:ofstring";
   "y:ofstring";
   "z:ofstring"]
);;


