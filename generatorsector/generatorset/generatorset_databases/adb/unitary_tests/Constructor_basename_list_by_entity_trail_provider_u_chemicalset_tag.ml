open Make_test_v;;

testing "Constructor_basename_list_by_entity_trail_provider_v with
   Constructor_basename_list_by_entity_trail_provider_u_chemicalset_tag.ml";; 

(* toplevel 
   #use "Constructor_basename_list_by_entity_trail_provider_u_chemicalset_tag.ml";; 
*)

let tra_dos = Trail_v.make "domain" "chemicalset" [];;
let tra_cat = Trail_v.make "category" "tag" tra_dos;;

let tra_ato = Trail_v.make "entity" "atom" tra_cat;;
let tra_blo = Trail_v.make "entity" "block" tra_cat;;
let tra_seg = Trail_v.make "entity" "segment" tra_cat;;
let tra_fra = Trail_v.make "entity" "fragment" tra_cat;;
let tra_gro = Trail_v.make "entity" "grouping" tra_cat;;
let tra_mol = Trail_v.make "entity" "molecule" tra_cat;;

let wor_ato_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ato;;
let wor_blo_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_blo;;
let wor_seg_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_seg;;
let wor_fra_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_fra;;
let wor_gro_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_gro;;
let wor_mol_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_mol;;

test_number 1 (
 wor_blo_l 
  (* : string list *)
=
["block_zerotied"; "block_onetied"]
);;

test_number 2 (
wor_seg_l 
  (* : string list *)
  =
["segment_head"; "segment_buried"]
);;

test_number 3 (
wor_fra_l 
  (* : string list *)
  =
["fragment_closed"; "fragment_head"; "fragment_buried"; "fragment_leaf"]
);;

test_number 4 (
 wor_mol_l 
  (* : string list *)
=
["molecule_bridged"; "molecule_dendrimer"; "molecule_forked";
 "molecule_linear"; "molecule_polymer"]
);;

