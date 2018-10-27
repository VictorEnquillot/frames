open Make_test_v;;

testing "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v
   Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_naturalset_formula.ml";; 

(* toplevel 
   #use "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_naturalset_formula.ml";;

*)

let nam_dos = "natural";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol_con = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol_con
(* : (string, string) Doublet_t.doublet list *)
=
  [("triangle_isoceles_equilateral", "doublet point_constructor:ofstring vector");
   ("triangle_isoceles_right", "doublet point_constructor:ofstring vector");
   ("triangle_isoceles_acute", "doublet point_constructor:ofstring vector");
   ("triangle_isoceles_obtuse", "doublet point_constructor:ofstring vector");
   ("triangle_scalene_right", "doublet point_constructor:ofstring vector");
   ("triangle_scalene_acute", "doublet point_constructor:ofstring vector");
   ("triangle_scalene_obtuse", "doublet point_constructor:ofstring vector");
   ("point_constructor:ofstring", "triplet x y z"); ("vector", "duo point_constructor:ofstring");
   ("x:ofstring", "singlet float"); ("y:ofstring", "singlet float");
   ("z:ofstring", "singlet float"); ("cylindrical_rho", "singlet float");
   ("cylindrical_phi", "singlet float");
   ("cylindrical_zed", "singlet float"); ("polar_rho", "singlet float");
   ("polar_theta", "singlet float"); ("spherical_rho", "singlet float");
   ("spherical_phi", "singlet float"); ("spherical_theta", "singlet float")]
);;

