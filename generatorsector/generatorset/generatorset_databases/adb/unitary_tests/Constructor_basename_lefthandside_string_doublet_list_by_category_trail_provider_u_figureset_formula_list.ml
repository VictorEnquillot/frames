open Make_test_v;;

testing "Constructor_basename_lefthandside_string_doublet_list_by_category_trail_provider_v
   Constructor_basename_lefthandside_string_doublet_list_by_category_trail_provider_u_figureset_formula_list.ml";; 

(* toplevel 
   #use "Constructor_basename_lefthandside_string_doublet_list_by_category_trail_provider_u_figureset_formula_list.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol_con = Constructor_basename_lefthandside_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol_con
(* : (string, string) Doublet_t.doublet list *)
=
  [("triangle_isoceles_equilateral", "builders");
   ("triangle_isoceles_right", "builders");
   ("triangle_isoceles_acute", "builders");
   ("triangle_isoceles_obtuse", "builders");
   ("triangle_scalene_right", "builders");
   ("triangle_scalene_acute", "builders");
   ("triangle_scalene_obtuse", "builders");
   ("point_constructor:ofstring", "builders");
   ("fake_son_constructor", "builders"); ("vector_constructor", "builders");
   ("x:ofstring", "builders"); ("y:ofstring", "builders");
   ("z:ofstring", "builders"); ("cylindrical_rho", "builders");
   ("cylindrical_phi", "builders"); ("cylindrical_zed", "builders");
   ("polar_rho", "builders"); ("polar_theta", "builders");
   ("spherical_rho", "builders"); ("spherical_phi", "builders");
   ("spherical_theta", "builders")]
);;

