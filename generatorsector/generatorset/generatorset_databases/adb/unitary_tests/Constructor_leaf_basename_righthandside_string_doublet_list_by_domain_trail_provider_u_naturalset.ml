open Make_test_v;;

testing "Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v
   Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_naturalset.ml";; 

(* toplevel 
   #use "Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_u_naturalset.ml";;

*)

let nam_dos = "natural";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let dou_cr_l = Constructor_leaf_basename_righthandside_string_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
dou_cr_l
(* : (string, string) Doublet_t.doublet list *)
=
  [("cylindrical_phi", "list float"); 
   ("cylindrical_rho", "list float");
   ("cylindrical_zed", "list float");
   ("fake_son_constructor", "list string");
   ("point_constructor:ofstring", "list coordinate_cartesian");
   ("polar_rho", "list float"); 
   ("polar_theta", "list float");
   ("spherical_phi", "list float"); 
   ("spherical_rho", "list float");
   ("spherical_theta", "list float");
   ("triangle_isoceles_acute", "list point");
   ("triangle_isoceles_equilateral", "list point");
   ("triangle_isoceles_obtuse", "list point");
   ("triangle_isoceles_right", "list point");
   ("triangle_scalene_acute", "list point");
   ("triangle_scalene_obtuse", "list point");
   ("triangle_scalene_right", "list point");
   ("vector_constructor", "list point"); 
   ("x:ofstring", "list float");
   ("y:ofstring", "list float"); 
   ("z:ofstring", "list float")]
);;

