open Make_test_v;;

testing "Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v with
   Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_u_figureset_symbol.ml"


(* toplevel 
   #use "Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_u_figureset_symbol.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let tri_ekr_l = Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
tri_ekr_l
=
  [("figure", "constructors", "coordinate point triangle vector fake");
   ("triangle", "constructors", "triangle_isoceles triangle_scalene");
   ("triangle_isoceles", "constructors",
    "triangle_isoceles_equilateral:ofstring triangle_isoceles_right:ofstring triangle_isoceles_acute:ofstring triangle_isoceles_obtuse:ofstring");
   ("triangle_scalene", "constructors",
    "triangle_scalene_right:ofstring triangle_scalene_acute:ofstring triangle_scalene_obtuse:ofstring");
   ("fake", "constructors", "fake_son");
   ("fake_son", "constructors", "fake_son_constructor");
   ("vector", "constructors", "vector_constructor:ofstring");
   ("point", "constructors", "point_constructor:ofstring");
   ("coordinate", "constructors",
    "coordinate_cartesian coordinate_cylindrical coordinate_polar coordinate_spherical");
   ("coordinate_cartesian", "constructors",
    "x:ofstring y:ofstring z:ofstring");
   ("coordinate_cylindrical", "constructors",
    "cylindrical_rho cylindrical_phi cylindrical_zed");
   ("coordinate_spherical", "constructors",
    "spherical_rho spherical_phi spherical_theta");
   ("coordinate_polar", "constructors", "polar_rho polar_theta")]
);;

