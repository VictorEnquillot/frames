open Make_test_v;;

testing "Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_v with
   Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_u_generatorset_item.ml";; 

(* toplevel 
   #use "Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_u_generatorset_item.ml";; 

*)

let nam_dos = "generatorset_item";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_bui_l = Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_bui_l
(* : (string, string) Doublet_list_t.doublet_list *)
 =
  [("triangle_isoceles_equilateral", "list");
   ("triangle_isoceles_right", "list");
   ("triangle_isoceles_acute", "list");
   ("triangle_isoceles_obtuse", "list");
   ("triangle_scalene_right", "list");
   ("triangle_scalene_acute", "list");
   ("triangle_scalene_obtuse", "list");
   ("point_constructor:ofstring", "list");
   ("fake_son_constructor", "list");
   ("vector_constructor", "list");
   ("x:ofstring", "list");
   ("y:ofstring", "list");
   ("z:ofstring", "list");
   ("cylindrical_rho", "list");
   ("cylindrical_phi", "list");
   ("cylindrical_zed", "list");
   ("polar_rho", "list");
   ("polar_theta", "list");
   ("spherical_rho", "list");
   ("spherical_phi", "list");
   ("spherical_theta", "list")]
);;
