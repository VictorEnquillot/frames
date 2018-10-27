open Make_test_v;;

testing "Constructor_basename_lefthandside_list_by_category_trail_provider_v
   Constructor_basename_lefthandside_list_by_category_trail_provider_u_figureset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_lefthandside_list_by_category_trail_provider_u_figureset_symbol.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol = Constructor_basename_lefthandside_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol
(* : (string, string) Doublet_t.doublet list *)
=
  ["coordinate";
   "coordinate_cartesian";
   "coordinate_cylindrical";
   "coordinate_polar";
   "coordinate_spherical";
   "fake";
   "fake_son";
   "figure";
   "point";
   "triangle";
   "triangle_isoceles";
   "triangle_scalene";
   "vector"]
);;

