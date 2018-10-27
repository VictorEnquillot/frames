open Make_test_v;;

testing "Kind_name_constructor_node_basename_doublet_list_by_domain_trail_provider_v
   Kind_name_constructor_node_basename_doublet_list_by_domain_trail_provider_u_generatorset_item.ml";; 

(* toplevel 
   #use "Kind_name_constructor_node_basename_doublet_list_by_domain_trail_provider_u_generatorset_item.ml";;

*)

let nam_dos = "generatorset_item";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_kin_nam_ent_nod_dol = Kind_name_constructor_node_basename_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_kin_nam_ent_nod_dol
(* : (string, string) Doublet_t.doublet list *)
=
  [("type", "generatorset_item"); ("type", "triangle");
   ("type", "triangle_isoceles"); ("type", "triangle_scalene");
   ("type", "vector"); ("type", "point"); ("type", "coordinate");
   ("type", "coordinate_3d"); ("type", "coordinate_2d");
   ("type", "coordinate_cartesian_3d"); ("type", "coordinate_cylindrical");
   ("type", "coordinate_spherical"); ("type", "coordinate_cartesian_2d");
   ("type", "coordinate_polar")]
);;

