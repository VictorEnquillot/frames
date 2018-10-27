open Make_test_v;;

testing "Word_word_string_triplet_list_by_category_trail_provider_v with
   Word_word_string_triplet_list_by_category_trail_provider_u_chemicalset_symbol.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_category_trail_provider_u_chemicalset_symbol.ml";; 

*)

let tra_cat = [("category", "symbol"); ("domain", "chemicalset")];;
let wws_trl = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

let select_entity_off_doublet ent dep1 dep2 dou =
  let (e, s) = dou in
  let dep = List.length (String_v.split_of_character_of_string '_' e) in
  String.length e >= (String.length ent) 
    && (String.sub e 0 (String.length ent) = ent)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_triplet ent dep1 dep2 tri =
  let (k, e, s) = tri in
  (k = "type")
    && (select_entity_off_doublet ent dep1 dep2 (e, s))
;;

test_number 1 (
List.filter (select_entity_off_triplet "chemical" 1 1) wws_trl
(* : (string, string list) Doublet_list_t.doublet_list *)
=
[("type", "chemicalset",
  "atom block bond bridge chain cluster coffer fragment grouping mendeleev molecule polypeptide_subunit segment")]
);;

test_number 2 (
List.filter (select_entity_off_triplet "atom" 0 1) wws_trl
=
[("type", "atom", "atom_zerotied atom_onetied atom_core")]
);;

test_number 3 (
List.filter (select_entity_off_triplet "atom_core" 0 2) wws_trl
=
[("type", "atom_core",
  "atom_core_twotied atom_core_threetied atom_core_fourtied atom_core_fivetied atom_core_sixtied")]
);;

test_number 4 (
List.filter (select_entity_off_triplet "block" 0 2) wws_trl
=
[("type", "block", "block_zerotied block_onetied");
 ("type", "block_zerotied",
  "block_zerotied_zerotied block_zerotied_onetied block_zerotied_forktied");
 ("type", "block_onetied",
  "block_onetied_zerotied block_onetied_onetied block_onetied_forktied")]
);;

test_number 5 (
List.filter (select_entity_off_triplet "fragment" 0 2) wws_trl
(* : (string, string, string) Triplet_t.triplet list *)
=
[("type", "fragment",
  "fragment_closed fragment_head fragment_buried fragment_leaf");
 ("type", "fragment_closed",
  "block_zerotied_zerotied fragment_zerotied_zerotied fragment_zerotied_zerotied_fromid fragment_closed_leftextended_fromid");
 ("type", "fragment_head",
  "block_zerotied_forktied fragment_head_forked fragment_head_halfbridged fragment_head_rightextended_fromid");
 ("type", "fragment_buried",
  "block_onetied_forktied fragment_buried_biforked fragment_buried_triforked fragment_buried_fromid fragment_buried_leftextended_fromid");
 ("type", "fragment_leaf",
  "block_onetied_zerotied fragment_onetied_zerotied fragment_leaf_fromid fragment_leaf_leftextended_fromid fragment_leaf_halfbridgetailed")]
);;

test_number 6 (
List.filter (select_entity_off_triplet "segment" 0 2) wws_trl
(* : (string, string, string) Triplet_t.triplet list *)
=
[("type", "segment", "segment_head segment_buried");
 ("type", "segment_head",
  "block_zerotied_onetied segment_zerotied_onetied segment_rightextended_fromid");
 ("type", "segment_buried",
  "block_onetied_onetied segment_onetied_onetied segment_leftextended_fromid segment_polymer_fromid")]
);;

test_number 7 (
List.filter (select_entity_off_triplet "grouping" 0 2) wws_trl
(* : (string, string, string) Triplet_t.triplet list *)
 =
[("type", "grouping",
  "empty fragment_leaf fragment_tree polypeptide_sidegroup grouping_fromid");
 ("type", "grouping_bridged",
  "benzale benzole_trp benzyl indole metheneimidazole metheneindole dimethonecarbonhydroxyldimethone dimethone phenol g_pyrrole pyrrole_trp methenephenol");
 ("type", "grouping_fromid", "string")]
);;

test_number 8 (
List.filter (select_entity_off_triplet "molecule" 0 2) wws_trl
(* : (string, string, string) Triplet_t.triplet list *)
 =
[("type", "molecule",
  "molecule_bridged molecule_dendrimer molecule_forked molecule_linear molecule_polymer");
 ("type", "molecule_forked", "guanidine molecule_forked_fromid");
 ("type", "molecule_polymer",
  "polypeptide_fromid nucleicacid_fromid molecule_polymer_fromid");
 ("type", "molecule_bridged",
  "benzene phenol pyrrole molecule_bridged_fromid");
 ("type", "molecule_dendrimer", "molecule_dendrimer_fromid")]
);;

