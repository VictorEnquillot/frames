open Make_test_v;;

testing "Constructor_node_basename_list_by_category_trail_provider_v with
   Constructor_node_basename_list_by_category_trail_provider_u_chemicalset_formula.ml";; 

(* toplevel 
   #use "Constructor_node_basename_list_by_category_trail_provider_u_chemicalset_formula.ml";; 

*)

let nam_dos = "chemicalset";;
let tra_cat_sym = [("category", "symbol"); ("domain", nam_dos)];;
let tra_cat_for = [("category", "formula"); ("domain", nam_dos)];;

let select_entity_off_singlet nam dep1 dep2 rcd =
  let dep = List.length (String_v.split_of_character_of_string '_' rcd) in
  String.length rcd >= (String.length nam) 
    && (String.sub rcd 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let symbol_ent_nam_l = Constructor_node_basename_list_by_category_trail_provider_v.provide tra_cat_sym;;
let formula_ent_nam_l = Constructor_node_basename_list_by_category_trail_provider_v.provide tra_cat_for;;

test_number 1 (
List.filter (select_entity_off_singlet "atom" 0 7 ) symbol_ent_nam_l
(* string list *)
=
["atom"; "atom_zerotied"; "atom_zerotied_anion";
 "atom_zerotied_anion_minusone"; "atom_zerotied_anion_minustwo";
 "atom_zerotied_cation"; "atom_zerotied_cation_plusone";
 "atom_zerotied_cation_plustwo"; "atom_zerotied_cation_plusthree";
 "atom_zerotied_raregas"; "atom_zerotied_halfbridge"; "atom_onetied";
 "atom_onetied_single"; "atom_onetied_conjugated_ax1en_diatomic";
 "atom_onetied_double"; "atom_onetied_triple"; "atom_core";
 "atom_core_twotied"; "atom_core_singlesingle"; "atom_core_singlesingle_ax1";
 "atom_core_singlesingle_ax1en_diatomic";
 "atom_core_singlesingle_ax1en_diatomic_fromid";
 "atom_core_singlesingle_ax2"; "atom_core_singlesingle_ax2e0_linear";
 "atom_core_singlesingle_ax2e0_bent"; "atom_core_singlesingle_ax2e3_linear";
 "atom_core_singleconjugated"; "atom_core_singledouble";
 "atom_core_singletriple_ax2"; "atom_core_singletriple_ax2e0_linear";
 "atom_core_conjugatedconjugated"; "atom_core_conjugatedconjugated_ax2";
 "atom_core_conjugatedconjugated_ax2e0_linear"; "atom_core_conjugateddouble";
 "atom_core_conjugateddouble_ax2"; "atom_core_conjugateddouble_ax2e0_linear";
 "atom_core_doubledouble"; "atom_core_doubledouble_ax2";
 "atom_core_doubledouble_ax2_linear"; "atom_core_threetied";
 "atom_core_threetied_singlesinglesingle";
 "atom_core_threetied_singlesingledouble";
 "atom_core_threetied_singleconjugatedconjugated";
 "atom_core_threetied_conjugatedconjugatedconjugated";
 "atom_core_threetied_doubledoubledouble"; "atom_core_singledoublesingle";
 "atom_core_singledoublesingle_ax3";
 "atom_core_singledoublesingle_ax3e0_trigonalplanar";
 "atom_core_doublesinglesingle_ax3e0_trigonalplanar"; "atom_core_fourtied";
 "atom_core_singlesinglesinglesingle_ax4e1_tetrahedral";
 "atom_core_fivetied"; "atom_core_sixtied"]
);;

test_number 2 (
List.filter (select_entity_off_singlet "atom" 0 7 ) formula_ent_nam_l
=
[]
);;

test_number 3 (
List.filter (select_entity_off_singlet "block" 0 7 ) formula_ent_nam_l
(* : string list *)
  =
["block_none_none_ax1en_diatomic"; "block_none_none_ax2e0_linear";
 "block_none_none_ax2e1_bent"; "block_none_none_ax2e2_bent";
 "block_none_none_ax2e3_linear"; "block_none_none_ax3e0_trigonalplanar";
 "block_none_none_ax3e1_trigonalpyramidal";
 "block_none_none_ax4e1_tetrahedral"; "block_none_single_ax1en_diatomic";
 "block_none_single_ax2e0_linear"; "block_none_single_ax2e1_bent";
 "block_none_single_ax2e2_bent"; "block_none_single_ax2e3_linear";
 "block_none_single_ax3e0_trigonalplanar";
 "block_none_single_ax3e1_trigonalpyramidal";
 "block_none_single_ax4e1_tetrahedral";
 "block_none_conjugated_ax3e0_trigonalplanar";
 "block_none_double_ax3e0_trigonalplanar";
 "block_none_triple_ax1en_diatomic"; "block_none_triple_ax2e0_linear";
 "block_single_single_ax2e0_bent"; "block_single_single_ax2e2_bent";
 "block_single_single_ax2e3_linear";
 "block_single_single_ax3e0_trigonalplanar";
 "block_single_single_ax3e1_trigonalpyramidal";
 "block_single_single_ax3e2_tshaped";
 "block_single_single_ax4e0_tetrahedral"; "block_single_single_ax4e1_seesaw";
 "block_single_conjugated_ax3e0_trigonalplanar";
 "block_single_double_ax3e0_trigonalplanar";
 "block_single_triple_ax2e0_linear";
 "block_conjugated_conjugated_ax2e0_linear";
 "block_conjugated_double_ax2e0_linear"; "block_double_double_ax2e0_linear";
 "block_single_singlesingle_ax3e1_trigonalpyramidal";
 "block_single_singlesingle_ax4e0_tetrahedral";
 "block_single_singledouble_ax3e0_trigonalplanar";
 "block_single_doublesingle_ax3e0_trigonalplanar";
 "block_double_singlesingle_ax3e0_trigonalplanar";
 "block_single_singlesinglesingle_ax4e1_tetrahedral"]
);;

test_number 4 (
List.filter (select_entity_off_singlet "fragment" 0 7 ) formula_ent_nam_l
(* : string list *)
  =
["fragment_zerotied_zerotied"; "fragment_zerotied_zerotied_fromid";
 "fragment_closed_leftextended_fromid"; "fragment_head_biforked";
 "fragment_head_triforked"; "fragment_head_halfbridged";
 "fragment_buried_leftextended_fromid"; "fragment_onetied_zerotied";
 "fragment_leaf_fromid"; "fragment_leaf_leftextended_fromid";
 "fragment_leaf_halfbridgetailed"]
);;

test_number 5 (
List.filter (select_entity_off_singlet "grouping" 0 7 ) formula_ent_nam_l
(* : string list *)
  =
["grouping_fragment_tree"; "grouping_bridged"; "grouping_fromid"]
);;

test_number 6 (
List.filter (select_entity_off_singlet "molecule" 0 7 ) formula_ent_nam_l
(* : string list *)
  =
["molecule_forked"; "molecule_forked_fromid"; "molecule_linear_diatomic";
 "molecule_linear_triatomic"; "molecule_linear_tetratomic";
 "molecule_linear_pentatomic"; "molecule_linear_overpentatomic";
 "molecule_polymer_fromid"; "molecule_bridged"; "molecule_bridged_fromid";
 "molecule_dendrimer_fromid"]
);;
