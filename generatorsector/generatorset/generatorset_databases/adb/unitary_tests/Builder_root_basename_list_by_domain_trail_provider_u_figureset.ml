open Make_test_v;;

testing "Builder_root_basename_list_by_domain_trail_provider_v with
   Builder_root_basename_list_by_domain_trail_provider_u_figureset.ml";; 

(* toplevel 
   #use "Builder_root_basename_list_by_domain_trail_provider_u_figureset.ml";; 

*)

let tra_dos = Trail_v.make "domain" "figure" [];;

let nam_bui_roo_l = Builder_root_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_bui_roo_l
(* : string list *)
  =
  ["triangle_isoceles_equilateral:ofstring";
   "triangle_isoceles_right:ofstring";
   "triangle_isoceles_acute:ofstring";
   "triangle_isoceles_obtuse:ofstring";
   "triangle_scalene_right:ofstring";
   "triangle_scalene_acute:ofstring";
   "triangle_scalene_obtuse:ofstring";
   "fake_son_constructor";
   "vector_constructor:ofstring";
   "point_constructor:ofstring";
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

