open Make_test_v;;

testing "Database_record_list_by_category_trail_provider_v with
   Database_record_list_by_category_trail_provider_u_chemicalset_formula.ml";; 

(* toplevel 
   #use "Database_record_list_by_category_trail_provider_u_chemicalset_formula.ml";; 

*)

let tra_cat = [("category", "formula"); ("domain", "chemicalset")];;

let select_entity_off_singlet nam dep1 dep2 rcd =
  let wor = List.hd (String_v.split_of_character_of_string '=' rcd) in
  let str = try List.nth (String_v.split_of_character_of_string ' ' wor) 1 
  with Failure "nth" ->
    Error_messages_v.print_fatal_error 
      "Database_record_list_by_category_trail_provider_u_chemicalset_formula.ml"
      "select_entity_off_singlet"
      "wo words before = record"
      rcd "check"
  in
  let dep = List.length (String_v.split_of_character_of_string '_' str) in
  String.length str >= (String.length nam) 
    && (String.sub str 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let fin = Database_filename_by_category_trail_provider_v.provide tra_cat;;

let rcd_l = Database_record_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
fin
(* Filename_p.filename *) 
=
Filename_p.filename "/keep/sources/ocaml_top/setup/frames/chemicalset/chemicalset_code_formulas.set"
);;

test_number 2 (
List.filter (select_entity_off_singlet "atom" 0 7) rcd_l
(* : string list *)
=
[]
);;

test_number 3 (
List.filter (select_entity_off_singlet "block" 0 7) rcd_l
(* : string list *)
=
["type block_none_none_ax1en_diatomic = doublet atom:tag atom:tag";
 "type block_none_none_ax2e0_linear = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_none_ax2e1_bent = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_none_ax2e2_bent = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_none_ax2e3_linear = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_none_ax3e0_trigonalplanar = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_none_ax3e1_trigonalpyramidal = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_none_ax4e1_tetrahedral = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_single_ax1en_diatomic = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_single_ax2e0_linear = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_single_ax2e1_bent = capped_list atom_core:tag atom_onetied:tagz_ccl_s  ";
 "type block_none_single_ax2e2_bent = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_single_ax2e3_linear = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_single_ax3e0_trigonalplanar = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_single_ax3e1_trigonalpyramidal = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_single_ax4e1_tetrahedral = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_conjugated_ax3e0_trigonalplanar = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_double_ax3e0_trigonalplanar = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_triple_ax1en_diatomic = capped_list atom_core:tag atom_onetied:tag";
 "type block_none_triple_ax2e0_linear = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_single_ax2e0_bent = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_single_ax2e2_bent = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_single_ax2e3_linear = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_single_ax3e0_trigonalplanar = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_single_ax3e1_trigonalpyramidal = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_single_ax3e2_tshaped = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_single_ax4e0_tetrahedral = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_single_ax4e1_seesaw = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_conjugated_ax3e0_trigonalplanar = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_double_ax3e0_trigonalplanar = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_triple_ax2e0_linear = capped_list atom_core:tag atom_onetied:tag";
 "type block_conjugated_conjugated_ax2e0_linear = capped_list atom_core:tag atom_onetied:tag";
 "type block_conjugated_double_ax2e0_linear = capped_list atom_core:tag atom_onetied:tag";
 "type block_double_double_ax2e0_linear = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_singlesingle_ax3e1_trigonalpyramidal = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_singlesingle_ax4e0_tetrahedral = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_singledouble_ax3e0_trigonalplanar = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_doublesingle_ax3e0_trigonalplanar = capped_list atom_core:tag atom_onetied:tag";
 "type block_double_singlesingle_ax3e0_trigonalplanar = capped_list atom_core:tag atom_onetied:tag";
 "type block_single_singlesinglesingle_ax4e1_tetrahedral = capped_list atom_core:tag atom_onetied:tag"]
);;

test_number 4 (
List.filter (select_entity_off_singlet "segment" 0 7) rcd_l
(* : string list *)
=
["type segment_zerotied_onetied = list block:tag";
 "type segment_head_rightextended_fromid = list block:tag";
 "type segment_onetied_onetied = list block:tag";
 "type segment_buried_leftextended_fromid = list block:tag";
 "type segment_buried_polymer_fromid = list block:tag"]
);;

test_number 5 (
List.filter (select_entity_off_singlet "fragment" 0 7) rcd_l
(* : string list *)
=
["type fragment_zerotied_zerotied = list block:tag ";
 "type fragment_zerotied_zerotied_fromid = list block:tag";
 "type fragment_closed_leftextended_fromid = list block:tag";
 "type fragment_head_biforked = list block:tag";
 "type fragment_head_triforked = list block:tag";
 "type fragment_head_halfbridged = list block:tag";
 "type fragment_buried_leftextended_fromid = list block:tag";
 "type fragment_onetied_zerotied = list block:tag";
 "type fragment_leaf_fromid = list block:tag";
 "type fragment_leaf_leftextended_fromid = list block:tag";
 "type fragment_leaf_halfbridgetailed = list block:tag"]
);;

test_number 6 (
List.filter (select_entity_off_singlet "molecule" 0 7) rcd_l
(* : string list *)
=
["type molecule_forked = capped_list fragment_head:tag grouping:tag";
 "type molecule_forked_fromid = capped_list fragment_head:tag grouping:tag";
 "type molecule_linear_diatomic = singlet fragment:tag";
 "type molecule_linear_triatomic = singlet fragment:tag";
 "type molecule_linear_tetratomic = singlet fragment:tag";
 "type molecule_linear_pentatomic = singlet fragment:tag";
 "type molecule_linear_overpentatomic = singlet fragment:tag";
 "type molecule_polymer_fromid = list polymer_subunit:tag";
 "type molecule_bridged = capped_list fragment_head:tag grouping:tag";
 "type molecule_bridged_fromid = capped_list fragment_head:tag grouping:tag";
 "type molecule_dendrimer_fromid = capped_list fragment_head:tag grouping:tag"]
);;

