open Make_test_v;;

testing "Constructor_node_basename_list_by_category_trail_provider_v with
   Constructor_node_basename_list_by_category_trail_provider_u_moleculeset_symbol.ml";; 

(* toplevel 
   #use "Constructor_node_basename_list_by_category_trail_provider_u_moleculeset_symbol.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;
let tra_kin_typ = Trail_v.make "kind" "type" tra_cat;;
let tra_kin_tpr = Trail_v.make "kind" "type_private" tra_cat;;
let tra_kin_con = Trail_v.make "kind" "content" tra_cat;;
let tra_kin_des = Trail_v.make "kind" "description" tra_cat;;

let nam_ent_l_typ = Constructor_node_basename_list_by_category_trail_provider_v.provide tra_kin_typ;;
let nam_ent_l_tpr = Constructor_node_basename_list_by_category_trail_provider_v.provide tra_kin_tpr;;
let nam_ent_l_con = Constructor_node_basename_list_by_category_trail_provider_v.provide tra_kin_con;;
let nam_ent_l_des = Constructor_node_basename_list_by_category_trail_provider_v.provide tra_kin_des;;

test_number 1 (
nam_ent_l_typ
(* : string list *)
=
  ["moleculeset"; "fragment"; "fragment_closed_fromid";
   "fragment_head_fromid"; "fragment_buried_fromid"; "fragment_leaf_fromid";
   "grouping"; "grouping_fromid"; "molecule"; "molecule_forked";
   "molecule_forked_fromid"; "molecule_linear"; "molecule_linear_diatomic";
   "molecule_linear_overdiatomic"; "molecule_polymer";
   "molecule_polymer_fromid"; "polypeptide_fromid"]
);;

test_number 2 (
nam_ent_l_tpr
(* : string list *)
=
[]
);;

test_number 3 (
nam_ent_l_con
(* : string list *)
  =
[]
);;

test_number 4 (
nam_ent_l_des
(* : string list *)
  =
  ["z_ch4_z"; "z_coh2_z"; "z_cho2m_z"; "z_co_z"; "z_cs_z"; "z_nh3_z"]
);;
