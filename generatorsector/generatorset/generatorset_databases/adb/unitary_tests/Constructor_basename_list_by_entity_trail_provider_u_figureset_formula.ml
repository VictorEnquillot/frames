open Make_test_v;;

testing "Constructor_basename_list_by_entity_trail_provider_v with
   Constructor_basename_list_by_entity_trail_provider_u_figureset_formula.ml";; 

(* toplevel 
   #use "Constructor_basename_list_by_entity_trail_provider_u_figureset_formula.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos[];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_iso = "triangle_isoceles";;
let tra_ent_iso = Trail_v.make "entity" nam_ent_iso tra_cat;;
let nam_con_l_iso = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_iso;;

let nam_ent_sca = "triangle_scalene";;
let tra_ent_sca = Trail_v.make "entity" nam_ent_sca tra_cat;;
let nam_con_l_sca = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_sca;;

let nam_ent_vec = "vector";;
let tra_ent_vec = Trail_v.make "entity" nam_ent_vec tra_cat;;
let nam_con_l_vec = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_vec;;

let nam_ent_x_3d = "x_3d";;
let tra_ent_x_3d = Trail_v.make "entity" nam_ent_x_3d tra_cat;;
let nam_con_l_x_3d = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_x_3d;;

let nam_ent_flo = "float";;
let tra_ent_flo = Trail_v.make "entity" nam_ent_flo tra_cat;;

test_number 1 (
 tra_ent_iso
(* : Trail_t.trail *)
  =
[("entity", "triangle_isoceles"); ("category", "formula");
 ("domain", "figure")]
);;

test_number 2 (
nam_con_l_iso
(* : string list *)
=
["triangle_isoceles_equilateral"; "triangle_isoceles_right";
 "triangle_isoceles_acute"; "triangle_isoceles_obtuse"]
);;

test_number 3 (
 tra_ent_sca
(* : Trail_t.trail *)
  =
[("entity", "triangle_scalene"); ("category", "formula");
 ("domain", "figure")]
);;

test_number 4 (
nam_con_l_sca
(* : string list *)
=
["triangle_scalene_right"; "triangle_scalene_acute";
 "triangle_scalene_obtuse"]
);;

test_number 5 (
 tra_ent_vec
(* : Trail_t.trail *)
  =
[("entity", "vector"); ("category", "formula"); ("domain", "figure")]
);;

test_number 6 (
nam_con_l_vec
(* : string list *)
=
["vector_3d"; "vector_2d"; "vector_1d"]
);;

test_number 7 (
tra_ent_x_3d 
(* : Trail_t.trail *)
 =
[("entity", "x_3d"); ("category", "formula"); ("domain", "figure")]
);;

test_number 8 (
nam_con_l_x_3d
(* : string list *)
=
[]
);;

test_number 9 (
tra_ent_flo
(* : Trail_t.trail *)
 =
  [("entity", "float"); ("category", "formula");
   ("domain", "figure")]
);;

test_raises_this_exc (Failure("Not_entity_mode_or_leaf:constructor_basename_list_by_entity_trail_provider_v.ml:constructor_basename_list_off_righthandside_string")) Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_flo;;

