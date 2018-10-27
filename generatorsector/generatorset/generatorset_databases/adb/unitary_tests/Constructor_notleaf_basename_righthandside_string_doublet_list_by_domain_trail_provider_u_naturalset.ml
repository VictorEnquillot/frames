open Make_test_v;;

testing "Constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v
   Constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_naturalset.ml";; 

(* toplevel 
   #use "Constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_naturalset.ml";;

*)

let nam_dos = "natural";;
let nam_cat = "symbol";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let clb_l = Constructor_notleaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
clb_l
(* : string list *)
=
  [("coordinate",
    "coordinate_cartesian coordinate_cylindrical coordinate_polar coordinate_spherical");
   ("coordinate_cartesian", "x:ofstring y:ofstring z:ofstring");
   ("coordinate_cylindrical",
    "cylindrical_rho cylindrical_phi cylindrical_zed");
   ("coordinate_polar", "polar_rho polar_theta");
   ("coordinate_spherical", "spherical_rho spherical_phi spherical_theta");
   ("fake", "fake_son"); ("fake_son", "fake_son_constructor");
   ("natural", "coordinate point triangle vector fake");
   ("point", "point_constructor:ofstring");
   ("triangle", "triangle_isoceles triangle_scalene");
   ("triangle_isoceles",
    "triangle_isoceles_equilateral triangle_isoceles_right triangle_isoceles_acute triangle_isoceles_obtuse");
   ("triangle_scalene",
    "triangle_scalene_right triangle_scalene_acute triangle_scalene_obtuse");
   ("vector", "vector_constructor")]
);;

