open Make_test_v;;

testing "Constructor_basename_list_by_entity_trail_provider_v with
   Constructor_basename_list_by_entity_trail_provider_u_chemicalset_formula.ml";; 

(* toplevel 
   #use "Constructor_basename_list_by_entity_trail_provider_u_chemicalset_formula.ml";; 
*)

let tra_dos = Trail_v.make "domain" "chemicalset" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let tra_che = Trail_v.make "entity" "chemicalset" tra_cat;;
let tra_blo = Trail_v.make "entity" "block_none_none_ax1en_diatomic" tra_cat;;
let tra_seg = Trail_v.make "entity" "segment_zerotied_onetied" tra_cat;;
let tra_fra = Trail_v.make "entity" "fragment_zerotied_zerotied" tra_cat;;
let tra_gro = Trail_v.make "entity" "grouping_fragment_tree" tra_cat;;
let tra_mol = Trail_v.make "entity" "molecule_forked" tra_cat;;

let wor_che_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_che;;
let wor_blo_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_blo;;
let wor_seg_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_seg;;
let wor_fra_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_fra;;
let wor_gro_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_gro;;
let wor_mol_l = Constructor_basename_list_by_entity_trail_provider_v.provide tra_mol;;

test_number 1 (
wor_che_l 
(* : string list *)
=
  ["block"; "cluster"; "coffer"; "fragment"; "grouping"; "molecule";
   "polypeptide_subunit"; "segment"]
);;

test_number 2 (
wor_blo_l 
  (* : string list *)
  =
["doublet"; "atom:tag"; "atom:tag"]
);;

test_number 3 (
wor_seg_l 
  (* : string list *)
  =
["list"; "block:tag"]
);;

test_number 4 (
wor_fra_l 
  (* : string list *)
  =
["list"; "block:tag"]
);;

test_number 5 (
wor_mol_l 
  (* : string list *)
  =
["capped_list"; "fragment_head:tag"; "grouping:tag"]
);;

