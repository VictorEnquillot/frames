open Make_test_v;;

testing "Constructor_basename_list_by_entity_trail_provider_v with
   Constructor_basename_list_by_entity_trail_provider_u_moleculeset_formula.ml";; 

(* toplevel 
   #use "Constructor_basename_list_by_entity_trail_provider_u_moleculeset_formula.ml";;

*)

let tra_dos = Trail_v.make "domain" "moleculeset" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let tra_kin_typ = Trail_v.make "kind" "type" tra_cat;;
let tra_kin_con = Trail_v.make "kind" "content" tra_cat;;
let tra_kin_des = Trail_v.make "kind" "description" tra_cat;;

let tra_ent_mol_con = Trail_v.make "entity" "molecule" tra_kin_con;;
let tra_ent_mol_des = Trail_v.make "entity" "molecule" tra_kin_des;;
let tra_ent_mol_typ = Trail_v.make "entity" "molecule" tra_kin_typ;;

let tra_ent_gro_con = Trail_v.make "entity" "grouping_fromid" tra_kin_con;;
let tra_ent_gro_des = Trail_v.make "entity" "grouping_fromid" tra_kin_des;;
let tra_ent_gro_typ = Trail_v.make "entity" "grouping_fromid" tra_kin_typ;;

let tra_ent_gua_con = Trail_v.make "entity" "guanidine" tra_kin_con;;
let tra_ent_gua_des = Trail_v.make "entity" "guanidine" tra_kin_des;;
let tra_ent_gua_typ = Trail_v.make "entity" "guanidine" tra_kin_typ;;

let tra_ent_mld_con = Trail_v.make "entity" "molecule_linear_diatomic" tra_kin_con;;
let tra_ent_mld_des = Trail_v.make "entity" "molecule_linear_diatomic" tra_kin_des;;
let tra_ent_mld_typ = Trail_v.make "entity" "molecule_linear_diatomic" tra_kin_typ;;

let con_l_gro_con = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_gro_con;;
let con_l_gro_des = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_gro_des;;
let con_l_gro_typ = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_gro_typ;;

let con_l_gua_con = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_gua_con;;
let con_l_gua_des = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_gua_des;;
let con_l_gua_typ = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_gua_typ;;

let con_l_mld_con = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_mld_con;;
let con_l_mld_des = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_mld_des;;
let con_l_mld_typ = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_mld_typ;;

let con_l_mol_con = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_mol_con;;
let con_l_mol_des = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_mol_des;;
let con_l_mol_typ = Constructor_basename_list_by_entity_trail_provider_v.provide tra_ent_mol_typ;;

test_number 1 (
con_l_mol_typ
(* : string *)
=
["molecule_forked"; "molecule_linear"; "molecule_polymer"]
);;

test_number 2 (
con_l_mld_typ
(* : string *)
=
["capped_list"; "fragment_head:tag"; "grouping:tag"]
);;

test_number 3 (
con_l_gro_typ
(* : string *)
=
["capped_list"; "fragment:tag"; "grouping:tag"]
);;

test_number 4 (
con_l_gua_typ
(* : string *)
=
[]
);;

test_number 5 (
con_l_mld_con
(* : string *)
=
[]
);;

test_number 6 (
con_l_mol_con
(* : string *)
=
[]
);;

test_number 7 (
con_l_gro_con
(* : string *)
=
[]
);;

test_number 8 (
con_l_gua_con
(* : string *)
=
["z_nh2_s_c_sd"; "s_nh2_z"; "d_nh_z"]
);;

test_number 9 (
con_l_mol_des
(* : string *)
=
[]
);;

test_number 10 (
con_l_mld_des
(* : string *)
=
[]
);;

test_number 11 (
con_l_gro_des
(* : string *)
=
[]
);;

test_number 12 (
con_l_gua_des
(* : string *)
=
[]
);;
