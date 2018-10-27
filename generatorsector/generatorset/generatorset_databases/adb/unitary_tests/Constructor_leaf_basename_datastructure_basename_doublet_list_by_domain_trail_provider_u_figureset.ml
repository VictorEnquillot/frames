open Make_test_v;;

testing "Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_v with
   Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_u_figureset.ml";; 

(* toplevel 
   #use "Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_u_figureset.ml";; 

*)

let nam_dos = "figure";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_bui_l = Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_bui_l
(* : (string, string) Doublet_list_t.doublet_list *)
 =
   [("fake_son_constructor", "list");
   ("point_constructor:ofstring", "trio");
   ("triangle_isoceles_acute:ofstring", "doublet");
   ("triangle_isoceles_equilateral:ofstring", "doublet");
   ("triangle_isoceles_obtuse:ofstring", "doublet");
   ("triangle_isoceles_right:ofstring", "doublet");
   ("triangle_scalene_acute:ofstring", "doublet");
   ("triangle_scalene_obtuse:ofstring", "doublet");
   ("triangle_scalene_right:ofstring", "doublet");
   ("vector_constructor:ofstring", "duo");
   ("cylindrical_phi", "doublet");
   ("cylindrical_rho", "doublet");
   ("cylindrical_zed", "doublet");
   ("polar_rho", "doublet");
   ("polar_theta", "doublet");
   ("spherical_phi", "doublet");
   ("spherical_rho", "doublet");
   ("spherical_theta", "doublet");
   ("x:ofstring", "doublet");
   ("y:ofstring", "doublet");
   ("z:ofstring", "doublet")]
);;
