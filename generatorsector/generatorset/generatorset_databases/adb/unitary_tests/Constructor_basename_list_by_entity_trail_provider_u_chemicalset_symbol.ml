open Make_test_v;;

testing "Constructor_basename_list_by_entity_trail_provider_v with
   Constructor_basename_list_by_entity_trail_provider_u_chemicalset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_list_by_entity_trail_provider_u_chemicalset_symbol.ml";; 

*)

let tra_dos = Trail_v.make "domain" "chemicalset" [];;
let tra_cat = Trail_v.make "category" "symbol" tra_dos;;
let tra_ato = Trail_v.make "entity" "atom" tra_cat;;
let tra_atz = Trail_v.make "entity" "atom_zerotied" tra_ato;;
let tra_azr = Trail_v.make "entity" "atom_zerotied_raregas" tra_atz;;
let tra_frg = Trail_v.make "entity" "fragment_head" tra_cat;;

let wor_ato_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ato;;
let wor_atz_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_atz;;
let wor_azr_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_azr;;
let wor_frg_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_frg;;

test_number 1 (
wor_ato_l 
(* : string list *)
=
["atom_zerotied"; "atom_onetied"; "atom_core"]
);;

test_number 2 (
wor_atz_l 
(* : string list *)
=
["atom_zerotied_anion"; "atom_zerotied_cation"; "atom_zerotied_raregas";
 "atom_zerotied_halfbridge"]
);;

test_number 3 (
wor_azr_l
(* : string list *)
= 
["ar"; "he"; "kr"; "ne"; "xe"]
);;

test_number 4 (
wor_frg_l
(* : string list *)
= 
["block_zerotied_forktied"; "fragment_head_forked";
 "fragment_head_halfbridged"; "fragment_head_rightextended_fromid"]
);;
