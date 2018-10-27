open Make_test_v;;

testing "Constructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_provider_v with
   Constructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_provider_u_generatorset_item.ml"


(* toplevel 
   #use "Constructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_provider_u_generatorset_item.ml";;

*)

let nam_dos = "generatorset_item";;
let nam_cat = "formula";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let tri_ckr_l = Constructor_leaf_basename_kind_basename_righthandside_string_triplet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
tri_ckr_l
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
  [("triangle_isoceles_equilateral", "builders", "list point");
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

