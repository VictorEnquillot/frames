open Make_test_v;;

testing "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v
   Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_figureset_formula_list.ml";; 

(* toplevel 
   #use "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_figureset_formula_list.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol_con = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol_con
(* : (string, string) Doublet_t.doublet list *)
=
  [("triangle_isoceles_equilateral", "list point");
   ("triangle_isoceles_right", "list point");
   ("triangle_isoceles_acute", "list point");
   ("triangle_isoceles_obtuse", "list point");
   ("triangle_scalene_right", "list point");
   ("triangle_scalene_acute", "list point");
   ("triangle_scalene_obtuse", "list point");
   ("point_constructor:ofstring", "list coordinate_cartesian");
   ("fake_son_constructor", "list string");
   ("vector_constructor", "list point");
   ("x:ofstring", "list float");
   ("y:ofstring", "list float");
   ("z:ofstring", "list float");
   ("cylindrical_rho", "list float");
   ("cylindrical_phi", "list float");
   ("cylindrical_zed", "list float");
   ("polar_rho", "list float");
   ("polar_theta", "list float");
   ("spherical_rho", "list float");
   ("spherical_phi", "list float");
   ("spherical_theta", "list float")]
);;

