open Make_test_v;;

testing "Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v with
   Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_u_generatorset_formula_list.ml";; 

(* toplevel 
   #use "Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_u_generatorset_formula_list.ml";;

*)

let nam_dos = "generatorset";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos[];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_equ = "triangle_isoceles_equilateral";;
let tra_ent_equ = Trail_v.make "entity" nam_ent_equ tra_cat;;

test_number 1 (
 tra_ent_equ
(* : Trail_t.trail *)
  =
 [("entity", "triangle_isoceles_equilateral"); ("category", "formula");
   ("domain", "generatorset")]
);;

let nam_das_l_equ = Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v.provide tra_ent_equ;;

test_number 2 (
nam_das_l_equ
(* : (string, string list) Doublet_t.doublet *)
=
("list", ["point"])
);;

let nam_ent_vec = "vector_constructor";;
let tra_ent_vec = Trail_v.make "entity" nam_ent_vec tra_cat;;

test_number 3 (
 tra_ent_vec
(* : Trail_t.trail *)
  =
[("entity", "vector_constructor"); ("category", "formula");
 ("domain", "generatorset")]
);;

let nam_das_l_vec = Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v.provide tra_ent_vec;;

test_number 4 (
nam_das_l_vec
(* : (string, string list) Doublet_t.doublet *)
= 
("list", ["point"])
);;

let nam_ent_rho = "cylindrical_rho";;
let tra_ent_rho = Trail_v.make "entity" nam_ent_rho tra_cat;;

test_number 5 (
 tra_ent_rho
(* : Trail_t.trail *)
  =
[("entity", "cylindrical_rho"); ("category", "formula");
 ("domain", "generatorset")]
);;

let nam_das_l_rho = Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v.provide tra_ent_rho;;

test_number 6 (
nam_das_l_rho
(* : (string, string list) Doublet_t.doublet *)
= 
("list", ["float"])
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

