open Make_test_v;;

testing "Kind_name_constructor_leaf_basename_doublet_list_by_domain_trail_provider_v
   Kind_name_constructor_leaf_basename_doublet_list_by_domain_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Kind_name_constructor_leaf_basename_doublet_list_by_domain_trail_provider_u_generatorset.ml";;

*)

let nam_dos = "generatorset";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_kin_nam_ent_nod_dol = Kind_name_constructor_leaf_basename_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_kin_nam_ent_nod_dol
(* : (string, string) Doublet_t.doublet list *)
  =
  [("type", "triangle_isoceles_equilateral");
   ("type", "triangle_isoceles_right"); ("type", "triangle_isoceles_acute");
   ("type", "triangle_isoceles_obtuse"); ("type", "triangle_scalene_right");
   ("type", "triangle_scalene_acute"); ("type", "triangle_scalene_obtuse");
   ("type", "point_constructor:ofstring"); ("type", "point_fake");
   ("type", "vector_constructor"); ("type", "vector_fake");
   ("type", "x:ofstring"); ("type", "y:ofstring"); ("type", "z:ofstring");
   ("type", "cylindrical_rho"); ("type", "cylindrical_phi");
   ("type", "cylindrical_zed"); ("type", "polar_rho");
   ("type", "polar_theta"); ("type", "spherical_rho");
   ("type", "spherical_phi"); ("type", "spherical_theta")]
);;

