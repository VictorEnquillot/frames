open Make_test_v;;

testing "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v
   Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_moleculeset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_moleculeset_symbol.ml";;

*)

let nam_dos = "moleculeset";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;
let tra_kin_typ = Trail_v.make "kind" "type" tra_cat;;
let tra_kin_con = Trail_v.make "kind" "content" tra_cat;;
let tra_kin_des = Trail_v.make "kind" "description" tra_cat;;

let nam_ent_str_dol_typ = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_kin_typ;;
let nam_ent_str_dol_con = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_kin_con;;
let nam_ent_str_dol_des = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_kin_des;;

test_number 1 (
nam_ent_str_dol_typ
(* : (string, string) Doublet_t.doublet list *)
=
[("moleculeset", "fragment grouping molecule");
 ("fragment",
  "fragment_closed_fromid fragment_head_fromid fragment_buried_fromid fragment_leaf_fromid");
 ("fragment_closed_fromid", "string"); ("fragment_head_fromid", "string");
 ("fragment_buried_fromid", "string"); ("fragment_leaf_fromid", "string");
 ("grouping", "grouping_fromid"); ("grouping_fromid", "string");
 ("molecule", "molecule_forked molecule_linear molecule_polymer");
 ("molecule_forked", "guanidine molecule_forked_fromid");
 ("molecule_forked_fromid", "string");
 ("molecule_linear", "molecule_linear_diatomic molecule_linear_overdiatomic");
 ("molecule_linear_diatomic",
  "carbonmonoxide dihydrogen dinitrogen dioxygen hydrogenchloride hydrogenfluoride");
 ("molecule_linear_overdiatomic",
  "hydrogensulfide water propane butane nitromethane");
 ("molecule_polymer", "polypeptide_fromid molecule_polymer_fromid");
 ("molecule_polymer_fromid", "string"); ("polypeptide_fromid", "string")]

);;

test_number 2 (
nam_ent_str_dol_con
(* : (string, string) Doublet_t.doublet list *)
=
[]
);;

test_number 3 (
nam_ent_str_dol_des
(* : (string, string) Doublet_t.doublet list *)
=
  [("z_ch4_z", "methane"); ("z_coh2_z", "methanal or formaldehyde");
   ("z_cho2m_z", "formate_anion (Cdss 0_d Om1_s H_s)");
   ("z_co_z", "carbon_monoxide"); ("z_cs_z", "carbon_monosulfide");
   ("z_nh3_z", "ammonia")]
);;
