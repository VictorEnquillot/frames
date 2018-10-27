open Make_test_v;;

testing "Kind_name_entity_basename_doublet_list_by_category_trail_provider_v with
   Kind_name_entity_basename_doublet_list_by_category_trail_provider_u_moleculeset_symbol.ml";; 

(* toplevel 
   #use "Kind_name_entity_basename_doublet_list_by_category_trail_provider_u_moleculeset_symbol.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "symbol";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_kin_nam_ent_dol = Kind_name_entity_basename_doublet_list_by_category_trail_provider_v.provide tra_cat;;

let select_left nam dep1 dep2 wol =
  let dep = List.length (String_v.split_of_character_of_string '_'  wol) in
  String.length wol >= (String.length nam) 
    && (String.sub wol 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_singlet nam dep1 dep2 rcd =
  let dep = List.length (String_v.split_of_character_of_string '_' rcd) in
  String.length rcd >= (String.length nam) 
    && (String.sub rcd 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_doublet ent dep1 dep2 dou =
  let (e, s) = dou in
  let dep = List.length (String_v.split_of_character_of_string '_' e) in
  String.length e >= (String.length ent) 
    && (String.sub e 0 (String.length ent) = ent)
    && dep >= dep1 
    && dep <= dep2 
;;

test_number 1 (
 nam_kin_nam_ent_dol
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
  [("type", "moleculeset");
   ("type", "fragment");
   ("type", "fragment_closed_fromid");
   ("type", "fragment_head_fromid");
   ("type", "fragment_buried_fromid");
   ("type", "fragment_leaf_fromid");
   ("type", "grouping");
   ("type", "grouping_fromid");
   ("type", "molecule");
   ("type", "molecule_forked");
   ("type", "molecule_forked_fromid");
   ("type", "molecule_linear");
   ("type", "molecule_linear_diatomic");
   ("type", "molecule_linear_overdiatomic");
   ("type", "molecule_polymer");
   ("type", "molecule_polymer_fromid");
   ("type", "polypeptide_fromid");
   ("description", "z_ch4_z");
   ("description", "z_coh2_z");
   ("description", "z_cho2m_z");
   ("description", "z_co_z");
   ("description", "z_cs_z");
   ("description", "z_nh3_z")]
);;

