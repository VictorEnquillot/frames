open Make_test_v;;

testing "Constructor_basename_list_by_entity_trail_provider_v with
   Constructor_basename_list_by_entity_trail_provider_u_naturalset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_list_by_entity_trail_provider_u_naturalset_symbol.ml";; 

*)

let nam_dos = "natural";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos[];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_iso = "triangle_isoceles";;
let tra_ent_iso = Trail_v.make "entity" nam_ent_iso tra_cat;;
let wor_ent_l_iso = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_iso;;

test_number 1 (
 tra_ent_iso
(* : Trail_t.trail *)
  =
[("entity", "triangle_isoceles"); ("category", "symbol");
 ("domain", "natural")]
);;

test_number 2 (
wor_ent_l_iso
(* : string list *)
=
["triangle_isoceles_equilateral"; "triangle_isoceles_right";
 "triangle_isoceles_acute"; "triangle_isoceles_obtuse"]
);;

let nam_ent_sca = "triangle_scalene";;
let tra_ent_sca = Trail_v.make "entity" nam_ent_sca tra_cat;;
let wor_ent_l_sca = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_sca;;

test_number 3 (
 tra_ent_sca
(* : Trail_t.trail *)
  =
[("entity", "triangle_scalene"); ("category", "symbol");
 ("domain", "natural")]
);;

test_number 4 (
wor_ent_l_sca
(* : string list *)
=
  ["triangle_scalene_right"; "triangle_scalene_acute";
   "triangle_scalene_obtuse"]
);;
