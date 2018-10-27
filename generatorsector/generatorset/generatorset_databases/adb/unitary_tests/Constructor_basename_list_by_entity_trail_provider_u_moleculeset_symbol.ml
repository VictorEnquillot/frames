open Make_test_v;;

testing "Righthandside_string_by_entity_trail_provider_v with
   righthandside_string_by_entity_trail_provider_u_moleculeset_symbol.ml";; 

(* toplevel 
   #use "righthandside_string_by_entity_trail_provider_u_moleculeset_symbol.ml";;

*)

let tra_dos = Trail_v.make "domain" "moleculeset" [];;
let tra_cat = Trail_v.make "category" "symbol" tra_dos;;
let tra_kin_typ = Trail_v.make "kind" "type" tra_cat;;
let tra_kin_con = Trail_v.make "kind" "content" tra_cat;;
let tra_kin_des = Trail_v.make "kind" "description" tra_cat;;

let nam_ent_str_dol_typ = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_kin_typ;;
let nam_ent_str_dol_con = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_kin_con;;
let nam_ent_str_dol_des = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_kin_des;;

let tra_ent_mld_typ = Trail_v.make "entity" "molecule_linear_diatomic" tra_kin_typ;;
let rhs_str_mld_typ = Righthandside_string_by_entity_trail_provider_v.provide tra_ent_mld_typ;;

let tra_ent_gro_typ = Trail_v.make "entity" "grouping_fromid" tra_kin_typ;;
let rhs_str_gro_typ = Righthandside_string_by_entity_trail_provider_v.provide tra_ent_gro_typ;;

let tra_ent_gua_typ = Trail_v.make "entity" "guanidine" tra_kin_typ;;
let rhs_str_gua_typ = Righthandside_string_by_entity_trail_provider_v.provide tra_ent_gua_typ;;

let tra_ent_mld_con = Trail_v.make "entity" "molecule_linear_diatomic" tra_kin_con;;
let rhs_str_mld_con = Righthandside_string_by_entity_trail_provider_v.provide tra_ent_mld_con;;

let tra_ent_gro_con = Trail_v.make "entity" "grouping_fromid" tra_kin_con;;
let rhs_str_gro_con = Righthandside_string_by_entity_trail_provider_v.provide tra_ent_gro_con;;

let tra_ent_gua_con = Trail_v.make "entity" "guanidine" tra_kin_con;;
let rhs_str_gua_con = Righthandside_string_by_entity_trail_provider_v.provide tra_ent_gua_con;;

let tra_ent_mld_des = Trail_v.make "entity" "molecule_linear_diatomic" tra_kin_des;;
let rhs_str_mld_des = Righthandside_string_by_entity_trail_provider_v.provide tra_ent_mld_des;;

let tra_ent_gro_des = Trail_v.make "entity" "grouping_fromid" tra_kin_des;;
let rhs_str_gro_des = Righthandside_string_by_entity_trail_provider_v.provide tra_ent_gro_des;;

let tra_ent_gua_des = Trail_v.make "entity" "guanidine" tra_kin_des;;
let rhs_str_gua_des = Righthandside_string_by_entity_trail_provider_v.provide tra_ent_gua_des;;

test_number 1 (
nam_ent_str_dol_typ
(* : (string, string) Doublet_list_t.doublet_list *)
=
[("moleculeset", "fragment grouping molecule");
 ("fragment", "fragment_closed_fromid fragment_head_fromid fragment_buried_fromid fragment_leaf_fromid");
 ("fragment_closed_fromid", "string"); ("fragment_head_fromid", "string");
 ("fragment_buried_fromid", "string"); ("fragment_leaf_fromid", "string");
 ("grouping", "grouping_fromid"); ("grouping_fromid", "string");
 ("molecule", "molecule_forked molecule_linear molecule_polymer");
 ("molecule_forked", "guanidine molecule_forked_fromid");
 ("molecule_forked_fromid", "string");
 ("molecule_linear", "molecule_linear_diatomic molecule_linear_overdiatomic");
 ("molecule_linear_diatomic", "carbonmonoxide dihydrogen dinitrogen dioxygen hydrogenchloride hydrogenfluoride");
 ("molecule_linear_overdiatomic", "hydrogensulfide water propane butane nitromethane");
 ("molecule_polymer", "polypeptide_fromid molecule_polymer_fromid");
 ("molecule_polymer_fromid", "string"); ("polypeptide_fromid", "string")]
);;

test_number 2 (
rhs_str_mld_typ
(* : string *)
=
"carbonmonoxide dihydrogen dinitrogen dioxygen hydrogenchloride hydrogenfluoride"
);;

test_number 3 (
rhs_str_gro_typ
(* : string *)
=
"string"
);;

test_number 4 (
rhs_str_gua_typ
(* : string *)
=
""
);;

test_number 5 (
nam_ent_str_dol_con
(* : (string, string) Doublet_list_t.doublet_list *)
=
[]
);;

test_number 6 (
rhs_str_mld_con
(* : string *)
=
""
);;

test_number 7 (
rhs_str_gro_con
(* : string *)
=
""
);;

test_number 8 (
rhs_str_gua_con
(* : string *)
=
""
);;

test_number 9 (
nam_ent_str_dol_des
(* : (string, string) Doublet_list_t.doublet_list *)
=
[("z_ch4_z", "methane"); ("z_coh2_z", "methanal or formaldehyde");
 ("z_cho2m_z", "formate_anion (Cdss 0_d Om1_s H_s)");
 ("z_co_z", "carbon_monoxide"); ("z_cs_z", "carbon_monosulfide");
 ("z_nh3_z", "ammonia")]
);;

test_number 10 (
rhs_str_mld_des
(* : string *)
=
""
);;

test_number 11 (
rhs_str_gro_des
(* : string *)
=
""
);;

test_number 12 (
rhs_str_gua_des
(* : string *)
=
""
);;
