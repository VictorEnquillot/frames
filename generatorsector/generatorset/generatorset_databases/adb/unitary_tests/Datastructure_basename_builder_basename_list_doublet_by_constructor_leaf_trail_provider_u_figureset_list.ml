open Make_test_v;;

testing "Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v with
   Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_u_figureset_list.ml";; 

(* toplevel 
   #use "Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_u_figureset_list.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos[];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let ban_cnl_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;
let tra_cnl_l = List.map (fun c -> Trail_v.make "entity" c tra_cat) ban_cnl_l;;
let dou_dat_bul_l = List.map Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v.provide tra_cnl_l;;

let tri_cdb_l = List.map2 Triplet_v.make_of_left_of_doublet ban_cnl_l dou_dat_bul_l;;

test_number 1 (
tri_cdb_l
(* : (string, string, string list) Triplet_t.triplet list *)
=
[("triangle_isoceles_equilateral", "list", ["point"]);
 ("triangle_isoceles_right", "list", ["point"]);
 ("triangle_isoceles_acute", "list", ["point"]);
 ("triangle_isoceles_obtuse", "list", ["point"]);
 ("triangle_scalene_right", "list", ["point"]);
 ("triangle_scalene_acute", "list", ["point"]);
 ("triangle_scalene_obtuse", "list", ["point"]);
 ("fake_son_constructor", "list", ["string"]);
 ("vector_constructor", "list", ["point"]);
   ("point_constructor:ofstring", "list", ["coordinate_cartesian"]);
   ("x:ofstring", "list", ["float"]);
   ("y:ofstring", "list", ["float"]);
   ("z:ofstring", "list", ["float"]);
   ("cylindrical_rho", "list", ["float"]);
   ("cylindrical_phi", "list", ["float"]);
   ("cylindrical_zed", "list", ["float"]);
   ("spherical_rho", "list", ["float"]);
   ("spherical_phi", "list", ["float"]);
   ("spherical_theta", "list", ["float"]);
   ("polar_rho", "list", ["float"]);
   ("polar_theta", "list", ["float"])]
);;

test_number 2 (
dou_dat_bul_l 
(* : (string, string list) Doublet_t.doublet list *)
=
  [("list", ["point"]);
   ("list", ["point"]);
   ("list", ["point"]);
   ("list", ["point"]);
   ("list", ["point"]);
   ("list", ["point"]);
   ("list", ["point"]);
   ("list", ["string"]);
   ("list", ["point"]);
   ("list", ["coordinate_cartesian"]);
   ("list", ["float"]);
   ("list", ["float"]);
   ("list", ["float"]);
   ("list", ["float"]);
   ("list", ["float"]);
   ("list", ["float"]);
   ("list", ["float"]);
   ("list", ["float"]);
   ("list", ["float"]);
   ("list", ["float"]);
   ("list", ["float"])]
);;

let nam_ent_equ = "triangle_isoceles_equilateral";;
let tra_ent_equ = Trail_v.make "entity" nam_ent_equ tra_cat;;

test_number 3 (
 tra_ent_equ
(* : Trail_t.trail *)
  =
 [("entity", "triangle_isoceles_equilateral"); ("category", "formula");
   ("domain", "figure")]
);;


(* Failure *)


(* let nam_ent_tri = "triangle";; *)
(* let tra_ent_tri = Trail_v.make "entity" nam_ent_tri tra_cat;; *)
(* test_raises_this_exc (Failure *)
(* "Not_found_constructor_leaf_name:righthandside_string_by_constructor_leaf_trail_provider_v.ml:build_n_store") *)
(* Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v.provide tra_ent_tri;; *)

(* let nam_ent_flo = "float";; *)
(* let tra_ent_flo = Trail_v.make "entity" nam_ent_flo tra_cat;; *)
(* test_raises_this_exc (Failure *)
(*  "Not_found_constructor_leaf_name:righthandside_string_by_constructor_leaf_trail_provider_v.ml:build_n_store") Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v.provide tra_ent_flo;; *)

