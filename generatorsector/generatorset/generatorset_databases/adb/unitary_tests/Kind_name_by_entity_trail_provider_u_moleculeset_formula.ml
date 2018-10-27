open Make_test_v;;

testing "Kind_name_by_entity_trail_provider_v with
   Kind_name_by_entity_trail_provider_u_moleculeset_formula.ml";; 

(* toplevel 
   #use "Kind_name_by_entity_trail_provider_u_moleculeset_formula.ml";; 

*)

let nam_dos = "moleculeset";;
let tra_cat = [("category", "formula"); ("domain", nam_dos)];;
let tra_ent_mld = Trail_v.make "entity" "molecule_linear_diatomic" tra_cat;;

let wws_trl = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
[("type", "moleculeset", "grouping molecule");
 ("type", "grouping_fromid", "capped_list fragment:tag grouping:tag");
 ("type", "molecule_forked_fromid",
  "capped_list fragment_head:tag grouping:tag");
 ("type", "molecule_linear_diatomic",
  "capped_list fragment_head:tag grouping:tag");
 ("type", "molecule_linear_overdiatomic",
  "capped_list fragment_head:tag grouping:tag");
 ("type", "molecule_polymer_fromid", "list polymer_subunit:tag");
 ("type", "polypeptide_fromid", "list polypeptide_subunit:tag")]
);;

test_number 2 (
Kind_name_by_entity_trail_provider_v.provide tra_ent_mld
(* : (string, string list) Doublet_list_t.doublet_list *)
  =
"type"
);;

