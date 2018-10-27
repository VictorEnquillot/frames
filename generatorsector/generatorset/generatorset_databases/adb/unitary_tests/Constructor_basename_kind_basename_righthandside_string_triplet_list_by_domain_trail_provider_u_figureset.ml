open Make_test_v;;

testing "Constructor_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_provider_v with
   Constructor_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_provider_u_figureset.ml"


(* toplevel 
   #use "Constructor_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_provider_u_figureset.ml";;

*)

let nam_dos = "figure";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let tri_ckr_l = Constructor_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
tri_ckr_l
(* : (string, string) Doublet_t.doublet list *)
=
[("figure", "constructors", "coordinate point triangle vector fake");
 ("triangle", "constructors", "triangle_isoceles triangle_scalene");
 ("triangle_isoceles", "constructors",
  "triangle_isoceles_equilateral triangle_isoceles_right triangle_isoceles_acute triangle_isoceles_obtuse");
 ("triangle_scalene", "constructors",
  "triangle_scalene_right triangle_scalene_acute triangle_scalene_obtuse");
 ("fake", "constructors", "fake_son");
 ("fake_son", "constructors", "fake_son_constructor");
 ("vector", "constructors", "vector_constructor");
 ("point", "constructors", "point_constructor:ofstring");
 ("coordinate", "constructors",
  "coordinate_cartesian coordinate_cylindrical coordinate_polar coordinate_spherical");
 ("coordinate_cartesian", "constructors", "x:ofstring y:ofstring z:ofstring");
 ("coordinate_cylindrical", "constructors",
  "cylindrical_rho cylindrical_phi cylindrical_zed");
 ("coordinate_spherical", "constructors",
  "spherical_rho spherical_phi spherical_theta");
 ("coordinate_polar", "constructors", "polar_rho polar_theta");
 ("spherical_rho", "description", "distance to origin");
 ("spherical_phi", "description", "angular coordinate in xy plane");
 ("spherical_psi", "description", "angular coordinate to z axis");
 ("cylindrical_rho", "description", "distance to z axis");
 ("cylindrical_phi", "description", "angular coordinate in xy plane");
 ("cylindrical_zed", "description", "projection on z axis");
 ("triangle_isoceles_equilateral", "builders", "list point");
 ("triangle_isoceles_right", "builders", "list point");
 ("triangle_isoceles_acute", "builders", "list point");
 ("triangle_isoceles_obtuse", "builders", "list point");
 ("triangle_scalene_right", "builders", "list point");
 ("triangle_scalene_acute", "builders", "list point");
 ("triangle_scalene_obtuse", "builders", "list point");
 ("point_constructor:ofstring", "builders", "list coordinate_cartesian");
 ("fake_son_constructor", "builders", "list string");
 ("vector_constructor", "builders", "list point");
 ("x:ofstring", "builders", "list float");
 ("y:ofstring", "builders", "list float");
 ("z:ofstring", "builders", "list float");
 ("cylindrical_rho", "builders", "list float");
 ("cylindrical_phi", "builders", "list float");
 ("cylindrical_zed", "builders", "list float");
 ("polar_rho", "builders", "list float");
 ("polar_theta", "builders", "list float");
 ("spherical_rho", "builders", "list float");
 ("spherical_phi", "builders", "list float");
 ("spherical_theta", "builders", "list float")]
);;

