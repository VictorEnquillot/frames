open Make_test_v;;

testing "Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v
   Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_figureset.ml";; 

(* toplevel 
   #use "Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_figureset.ml";;

*)

let nam_dos = "figure";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let dou_cr_l = Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
dou_cr_l
(* : (string, string) Doublet_t.doublet list *)
=
 [("cylindrical_phi", "doublet float string");
   ("cylindrical_rho", "doublet float string");
   ("cylindrical_zed", "doublet float string");
   ("fake_son_constructor", "list string");
   ("point_constructor:ofstring", "trio coordinate");
   ("polar_rho", "doublet float string");
   ("polar_theta", "doublet float string");
   ("spherical_phi", "doublet float string");
   ("spherical_rho", "doublet float string");
   ("spherical_theta", "doublet float string");
   ("triangle_isoceles_acute:ofstring", "doublet point vector");
   ("triangle_isoceles_equilateral:ofstring", "doublet point vector");
   ("triangle_isoceles_obtuse:ofstring", "doublet point vector");
   ("triangle_isoceles_right:ofstring", "doublet point vector");
   ("triangle_scalene_acute:ofstring", "doublet point vector");
   ("triangle_scalene_obtuse:ofstring", "doublet point vector");
   ("triangle_scalene_right:ofstring", "doublet point vector");
   ("vector_constructor:ofstring", "duo point");
   ("x:ofstring", "doublet float string");
   ("y:ofstring", "doublet float string");
   ("z:ofstring", "doublet float string")]
);;

