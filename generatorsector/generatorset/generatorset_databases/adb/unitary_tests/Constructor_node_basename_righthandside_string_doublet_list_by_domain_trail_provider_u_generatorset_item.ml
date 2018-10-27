open Make_test_v;;

testing "Constructor_node_basename_righthandside_string_doublet_list_by_domain_trail_provider_v
   Constructor_node_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_generatorset_item.ml";; 

(* toplevel 
   #use "Constructor_node_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_generatorset_item.ml";;

*)

let nam_dos = "generatorset_item";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let dou_cr_l = Constructor_node_basename_righthandside_string_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
dou_cr_l
(* : (string, string) Doublet_t.doublet list *)
=
  [("coordinate", "coordinate_cartesian coordinate_cylindrical coordinate_polar coordinate_spherical");
   ("coordinate_cartesian", "x:ofstring y:ofstring z:ofstring");
   ("coordinate_cylindrical",
    "cylindrical_rho cylindrical_phi cylindrical_zed");
   ("coordinate_polar", "polar_rho polar_theta");
   ("coordinate_spherical", "spherical_rho spherical_phi spherical_theta");
   ("fake", "fake_son"); ("fake_son", "fake_son_constructor");
   ("generatorset_item", "coordinate point triangle vector fake");
   ("point", "point_constructor:ofstring");
   ("triangle", "triangle_isoceles triangle_scalene");
   ("triangle_isoceles",
    "triangle_isoceles_equilateral triangle_isoceles_right triangle_isoceles_acute triangle_isoceles_obtuse");
   ("triangle_scalene",
    "triangle_scalene_right triangle_scalene_acute triangle_scalene_obtuse");
   ("vector", "vector_constructor")]
);;

