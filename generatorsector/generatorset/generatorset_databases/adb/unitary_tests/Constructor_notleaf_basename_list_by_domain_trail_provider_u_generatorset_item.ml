open Make_test_v;;

testing "Constructor_notleaf_basename_list_by_domain_trail_provider_v with
   Constructor_notleaf_basename_list_by_domain_trail_provider_u_generatorset_item.ml"

(* toplevel 
   #use "Constructor_notleaf_basename_list_by_domain_trail_provider_u_generatorset_item.ml";;

*)

let nam_dos = "generatorset_item";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let ban_cno_l = Constructor_notleaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
ban_cno_l
(* : (string, string) Doublet_t.doublet list *)
=
  ["generatorset_item";
   "coordinate";
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

