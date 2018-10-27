open Make_test_v;;

testing "Database_record_list_by_category_trail_provider_v with
   Database_record_list_by_category_trail_provider_u_moleculeset_symbol.ml";; 

(* toplevel 
   #use "Database_record_list_by_category_trail_provider_u_moleculeset_symbol.ml";; 
*)

let tra_cat = [("category", "symbol"); ("domain", "moleculeset")];;

let rcd_l = Database_record_list_by_category_trail_provider_v.provide tra_cat;;

let select nam dep1 dep2 rcd =
  let w1 = List.hd (String_v.split_of_character_of_string '=' rcd) in
  let str = List.nth (String_v.split_of_character_of_string ' ' w1) 1  in
  let dep = List.length (String_v.split_of_character_of_string '_' str) in
  String.length str >= (String.length nam) 
    && (String.sub str 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

test_number 1 (
rcd_l
(* : string list *)
=
["type moleculeset = fragment grouping molecule ";
 "type fragment = fragment_closed_fromid fragment_head_fromid fragment_buried_fromid fragment_leaf_fromid";
 "type fragment_closed_fromid = string";
 "type fragment_head_fromid = string";
 "type fragment_buried_fromid = string";
 "type fragment_leaf_fromid = string"; "type grouping = grouping_fromid ";
 "type grouping_fromid = string";
 "type molecule = molecule_forked molecule_linear molecule_polymer";
 "type molecule_forked = guanidine molecule_forked_fromid";
 "type molecule_forked_fromid = string";
 "type molecule_linear = molecule_linear_diatomic molecule_linear_overdiatomic";
 "type molecule_linear_diatomic = carbonmonoxide dihydrogen dinitrogen dioxygen hydrogenchloride hydrogenfluoride";
 "type molecule_linear_overdiatomic = hydrogensulfide water propane butane nitromethane";
 "type molecule_polymer = polypeptide_fromid molecule_polymer_fromid";
 "type molecule_polymer_fromid = string"; "type polypeptide_fromid = string";
 "description z_ch4_z   = methane";
 "description z_coh2_z  = methanal or formaldehyde";
 "description z_cho2m_z = formate_anion (Cdss 0_d Om1_s H_s)";
 "description z_co_z    = carbon_monoxide ";
 "description z_cs_z    = carbon_monosulfide ";
 "description z_nh3_z   = ammonia"]
);;

test_number 2 (
List.filter (fun s -> (String.sub s 0 (String.length "description")) = "description") rcd_l
(* : string list *)
=
[ "description z_ch4_z   = methane";
 "description z_coh2_z  = methanal or formaldehyde";
 "description z_cho2m_z = formate_anion (Cdss 0_d Om1_s H_s)";
 "description z_co_z    = carbon_monoxide ";
 "description z_cs_z    = carbon_monosulfide ";
 "description z_nh3_z   = ammonia";
]
);;

(*
test_number 3 (
List.filter (select "molecule" 1 1) rcd_l
(* : string list *)
=
["type moleculeset = fragment grouping molecule_forked molecule_linear molecule_polymer"]
);;

test_number 4 (
List.filter (select "molecule" 2 2) rcd_l
(* : string list *)
=
["type molecule_forked = guanidine molecule_forked_fromid";
 "type molecule_linear = molecule_linear_monoatomic molecule_linear_diatomic molecule_linear_overdiatomic";
 "type molecule_polymer = polypeptide_fromid molecule_polymer_fromid"]
);;

test_number 5 (
List.filter (select "molecule" 3 3) rcd_l
(* : string list *)
=
["type molecule_forked_fromid = string";
 "type molecule_linear_monoatomic = block_none_none_ax0e0_monoatomic";
 "type molecule_linear_diatomic = carbonmonoxide dihydrogen dinitrogen dioxygen hydrogenchloride hydrogenfluoride";
 "type molecule_linear_overdiatomic = propane butane nitromethane";
 "type molecule_polymer_fromid = string"]
);;

test_number 6 (
List.filter (select "molecule" 4 4) rcd_l
(* : string list *)
=
[]
);;
*)
