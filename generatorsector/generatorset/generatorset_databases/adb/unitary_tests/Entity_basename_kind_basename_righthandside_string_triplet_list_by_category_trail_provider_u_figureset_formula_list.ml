open Make_test_v;;

testing "Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v with
   Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_u_figureset_formula_list.ml"


(* toplevel 
   #use "Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_u_figureset_formula_list.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let tri_ekr_l = Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
tri_ekr_l
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

