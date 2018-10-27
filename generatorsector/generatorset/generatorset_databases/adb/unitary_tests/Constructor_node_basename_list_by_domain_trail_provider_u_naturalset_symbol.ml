open Make_test_v;;

testing "Constructor_node_basename_list_by_domain_trail_provider_v
   Constructor_node_basename_list_by_domain_trail_provider_u_naturalset.ml";; 

(* toplevel 
   #use "Constructor_node_basename_list_by_domain_trail_provider_u_naturalset.ml";;

*)

let nam_dos = "natural";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_ent_l = Constructor_node_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
true
);;
(***
nam_ent_l
(* : string list *)
=
 ["natural"; "triangle"; "triangle_isoceles"; "triangle_scalene"; "vector"; "point"; "coordinate"; "coordinate_cartesian"; "coordinate_cylindrical"; "coordinate_spherical"; "coordinate_polar"]
);;
**)
