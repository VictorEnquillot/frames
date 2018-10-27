open Make_test_v;;

testing "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v
   Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_figureset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_figureset_symbol.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol
(* : (string, string) Doublet_t.doublet list *)
=
  [("figure", "coordinate point triangle vector fake");
   ("triangle", "triangle_isoceles triangle_scalene");
   ("triangle_isoceles",
    "triangle_isoceles_equilateral:ofstring triangle_isoceles_right:ofstring triangle_isoceles_acute:ofstring triangle_isoceles_obtuse:ofstring");
   ("triangle_scalene",
    "triangle_scalene_right:ofstring triangle_scalene_acute:ofstring triangle_scalene_obtuse:ofstring");
   ("fake", "fake_son"); ("fake_son", "fake_son_constructor");
   ("vector", "vector_constructor:ofstring");
   ("point", "point_constructor:ofstring");
   ("coordinate",
    "coordinate_cartesian coordinate_cylindrical coordinate_polar coordinate_spherical");
   ("coordinate_cartesian", "x:ofstring y:ofstring z:ofstring");
   ("coordinate_cylindrical",
    "cylindrical_rho cylindrical_phi cylindrical_zed");
   ("coordinate_spherical", "spherical_rho spherical_phi spherical_theta");
   ("coordinate_polar", "polar_rho polar_theta")]
);;

