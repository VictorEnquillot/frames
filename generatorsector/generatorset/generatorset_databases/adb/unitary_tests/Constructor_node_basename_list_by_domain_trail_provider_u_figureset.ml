open Make_test_v;;

testing "Constructor_node_basename_list_by_domain_trail_provider_v with
   Constructor_node_basename_list_by_domain_trail_provider_u_figureset.ml"

(* toplevel 
   #use "Constructor_node_basename_list_by_domain_trail_provider_u_figureset.ml";;

*)

let nam_dos = "figure";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let ban_cno_l = Constructor_node_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
ban_cno_l
(* : (string, string) Doublet_t.doublet list *)
=
 ["coordinate";
  "coordinate_cartesian";
  "coordinate_cylindrical";
  "coordinate_polar";
  "coordinate_spherical";
  "fake";
  "fake_son";
  "point";
  "triangle";
  "triangle_isoceles";
  "triangle_scalene";
  "vector"]
);;

