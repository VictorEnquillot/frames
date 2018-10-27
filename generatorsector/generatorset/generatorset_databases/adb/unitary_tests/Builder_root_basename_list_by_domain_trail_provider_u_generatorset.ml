open Make_test_v;;

testing "Builder_root_basename_list_by_domain_trail_provider_v with
   Builder_root_basename_list_by_domain_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Builder_root_basename_list_by_domain_trail_provider_u_generatorset.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset" [];;

let nam_bui_roo_l = Builder_root_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_bui_roo_l
(* : string list *)
  =
  ["triangle_isoceles_equilateral";
   "triangle_isoceles_right";
   "triangle_isoceles_acute";
   "triangle_isoceles_obtuse";
   "triangle_scalene_right";
   "triangle_scalene_acute";
   "triangle_scalene_obtuse";
   "vector_constructor";
   "vector_fake";
   "point_constructor:ofstring";
   "point_fake";
   "x:ofstring";
   "y:ofstring";
   "z:ofstring";
   "cylindrical_rho";
   "cylindrical_phi";
   "cylindrical_zed";
   "spherical_rho";
   "spherical_phi";
   "spherical_theta";
   "polar_rho";
   "polar_theta"]
);;

