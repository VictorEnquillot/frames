open Make_test_v;;

testing "Category_formula_v with
   Category_formula_u_chemicalset.ml";;

(* toplevel 
   #use "Category_formula_u_chemicalset.ml";;
*)

let sym_dos = Domainset_symbol_v.make "chemicalset";;
let soi_dos = [1];;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;

Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;

let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left Category_symbol_v.is_symbol_off_category_symbol for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let sym_enp_l = List.map Tag_v.symbol_off_tag for_cat;;
let str_enp_l = List.map Entity_symbol_v.string_off sym_enp_l;;
let onc_l = List_v.keep_first_once_list_off_list sym_enp_l;;
let str_sor_l = "chemicalset" :: List.sort String.compare (List.tl str_enp_l);;

let select_enp nam dep1 dep2 tag_enp =
  let sym_enp = Tag_v.symbol_off_tag tag_enp in
  let str = Entity_symbol_v.string_off sym_enp in
  let dep = List.length (String_v.split_of_c '_' str) in
  String.length str >= (String.length nam) 
    && (String.sub str 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

test_number 1 (
str_sor_l
=
["chemicalset"; "atom"; "atom_core"; "atom_fivetied"; "atom_fourtied";
 "atom_onetied"; "atom_onetied_conjugated"; "atom_onetied_double";
 "atom_onetied_single"; "atom_onetied_triple"; "atom_sixtied";
 "atom_threetied"; "atom_threetied_conjugatedconjugatedconjugated";
 "atom_threetied_doubledoubledouble";
 "atom_threetied_singleconjugatedconjugated";
 "atom_threetied_singlesingledouble"; "atom_threetied_singlesinglesingle";
 "atom_twotied"; "atom_twotied_conjugatedconjugated";
 "atom_twotied_doubledouble"; "atom_twotied_singleconjugated";
 "atom_twotied_singledouble"; "atom_twotied_singlesingle";
 "atom_twotied_singletriple"; "atom_zerotied"; "atom_zerotied";
 "atom_zerotied"; "atom_zerotied"; "atom_zerotied_anion";
 "atom_zerotied_anion"; "atom_zerotied_anion"; "atom_zerotied_anion";
 "atom_zerotied_anion_minusone"; "atom_zerotied_anion_minusone";
 "atom_zerotied_anion_minusone"; "atom_zerotied_anion_minusone";
 "atom_zerotied_anion_minustwo"; "atom_zerotied_anion_minustwo";
 "atom_zerotied_anion_minustwo"; "atom_zerotied_anion_minustwo";
 "atom_zerotied_cation"; "atom_zerotied_cation"; "atom_zerotied_cation";
 "atom_zerotied_cation"; "atom_zerotied_cation_plusone";
 "atom_zerotied_cation_plusone"; "atom_zerotied_cation_plusone";
 "atom_zerotied_cation_plusone"; "atom_zerotied_cation_plusthree";
 "atom_zerotied_cation_plusthree"; "atom_zerotied_cation_plusthree";
 "atom_zerotied_cation_plusthree"; "atom_zerotied_cation_plustwo";
 "atom_zerotied_cation_plustwo"; "atom_zerotied_cation_plustwo";
 "atom_zerotied_cation_plustwo"; "atom_zerotied_halfbridge";
 "atom_zerotied_halfbridge"; "atom_zerotied_halfbridge";
 "atom_zerotied_halfbridge"; "atom_zerotied_raregas";
 "atom_zerotied_raregas"; "atom_zerotied_raregas"; "atom_zerotied_raregas";
 "block"; "block_none_conjugated"; "block_none_conjugated";
 "block_none_conjugated_ax3e0_trigonalplanar";
 "block_none_conjugated_ax3e0_trigonalplanar"; "block_none_double";
 "block_none_double"; "block_none_double_ax3e0_trigonalplanar";
 "block_none_double_ax3e0_trigonalplanar"; "block_none_none_ax0";
 "block_none_none_ax0"; "block_none_none_ax0e0_monoatomic";
 "block_none_none_ax0e0_monoatomic"; "block_none_none_ax1";
 "block_none_none_ax1"; "block_none_none_ax1en_diatomic";
 "block_none_none_ax1en_diatomic"; "block_none_none_ax2";
 "block_none_none_ax2"; "block_none_none_ax2e0_linear";
 "block_none_none_ax2e0_linear"; "block_none_none_ax2e1_bent";
 "block_none_none_ax2e1_bent"; "block_none_none_ax2e2_bent";
 "block_none_none_ax2e2_bent"; "block_none_none_ax3"; "block_none_none_ax3";
 "block_none_none_ax3e0_trigonalplanar";
 "block_none_none_ax3e0_trigonalplanar";
 "block_none_none_ax3e1_trigonalpyramidal";
 "block_none_none_ax3e1_trigonalpyramidal"; "block_none_none_ax4";
 "block_none_none_ax4"; "block_none_none_ax4e1_tetrahedral";
 "block_none_none_ax4e1_tetrahedral"; "block_none_single";
 "block_none_single"; "block_none_single_ax1"; "block_none_single_ax1";
 "block_none_single_ax1en_diatomic"; "block_none_single_ax1en_diatomic";
 "block_none_single_ax3"; "block_none_single_ax3";
 "block_none_single_ax3e0_trigonalplanar";
 "block_none_single_ax3e0_trigonalplanar";
 "block_none_single_ax3e1_trigonalpyramidal";
 "block_none_single_ax3e1_trigonalpyramidal"; "block_none_single_ax4";
 "block_none_single_ax4"; "block_none_single_ax4e1_tetrahedral";
 "block_none_single_ax4e1_tetrahedral"; "block_none_triple";
 "block_none_triple"; "block_none_triple_ax2"; "block_none_triple_ax2";
 "block_none_triple_ax2e0_linear"; "block_none_triple_ax2e0_linear";
 "block_onetied"; "block_onetied_biforktied"; "block_onetied_biforktied";
 "block_onetied_forktied"; "block_onetied_forktied"; "block_onetied_onetied";
 "block_onetied_onetied"; "block_onetied_triforktied";
 "block_onetied_triforktied"; "block_single_conjugated";
 "block_single_conjugated"; "block_single_conjugated_ax3e0_trigonalplanar";
 "block_single_conjugated_ax3e0_trigonalplanar"; "block_single_double";
 "block_single_double"; "block_single_double_ax3"; "block_single_double_ax3";
 "block_single_double_ax3e0_trigonalplanar";
 "block_single_double_ax3e0_trigonalplanar"; "block_single_single";
 "block_single_single"; "block_single_single_ax2"; "block_single_single_ax2";
 "block_single_single_ax2e0_bent"; "block_single_single_ax2e0_bent";
 "block_single_single_ax2e2_bent"; "block_single_single_ax2e2_bent";
 "block_single_single_ax2e3_linear"; "block_single_single_ax2e3_linear";
 "block_single_single_ax3"; "block_single_single_ax3";
 "block_single_single_ax3e0_trigonalplanar";
 "block_single_single_ax3e0_trigonalplanar";
 "block_single_single_ax3e1_trigonalpyramidal";
 "block_single_single_ax3e1_trigonalpyramidal";
 "block_single_single_ax3e2_tshaped"; "block_single_single_ax3e2_tshaped";
 "block_single_single_ax4"; "block_single_single_ax4";
 "block_single_single_ax4e0_tetrahedral";
 "block_single_single_ax4e0_tetrahedral"; "block_single_single_ax4e1_seesaw";
 "block_single_single_ax4e1_seesaw"; "block_single_singledouble";
 "block_single_singledouble";
 "block_single_singledouble_ax3e0_trigonalplanar";
 "block_single_singledouble_ax3e0_trigonalplanar";
 "block_single_singlesingle"; "block_single_singlesingle";
 "block_single_singlesingle_ax3"; "block_single_singlesingle_ax3";
 "block_single_singlesingle_ax3e1_trigonalpyramidal";
 "block_single_singlesingle_ax3e1_trigonalpyramidal";
 "block_single_singlesinglesingle"; "block_single_singlesinglesingle";
 "block_single_singlesinglesingle_ax4";
 "block_single_singlesinglesingle_ax4";
 "block_single_singlesinglesingle_ax4e1_tetrahedral";
 "block_single_singlesinglesingle_ax4e1_tetrahedral"; "block_single_triple";
 "block_single_triple"; "block_single_triple_ax2"; "block_single_triple_ax2";
 "block_single_triple_ax2e0_linear"; "block_single_triple_ax2e0_linear";
 "block_zerotied"; "block_zerotied_onetied"; "block_zerotied_onetied";
 "block_zerotied_zerotied"; "block_zerotied_zerotied"; "bond"; "bridge";
 "chain"; "cluster"; "coffer"; "fragment"; "fragment_buried";
 "fragment_closed"; "fragment_head"; "fragment_head_biforked";
 "fragment_head_forked"; "fragment_head_halfbridged";
 "fragment_head_triforked"; "fragment_leaf"; "fragment_leaf";
 "fragment_leaf_halfbridgetailed"; "fragment_leaf_halfbridgetailed";
 "fragment_onetied_zerotied"; "fragment_onetied_zerotied";
 "fragment_zerotied_zerotied"; "grouping"; "mendeleev"; "molecule";
 "molecule_aminoacid"; "molecule_aminoacid_fragmented";
 "molecule_aminoacid_fragmented_regular"; "molecule_aminoacid_segmented";
 "molecule_bridged"; "molecule_dendrimer"; "molecule_forked";
 "molecule_linear"; "molecule_linear_diatomic"; "molecule_linear_monoatomic";
 "molecule_linear_overpentatomic"; "molecule_linear_pentatomic";
 "molecule_linear_tetratomic"; "molecule_linear_triatomic";
 "molecule_polymer"; "polypeptide"; "segment"; "segment_buried";
 "segment_head"; "segment_onetied_onetied"; "segment_zerotied_onetied"]
);;

test_number 2 (
List.filter (select_enp "atom" 0 2) for_cat
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_proper "atom", [2; 1; 1]);
 (Entity_symbol_t.Entity_proper "atom_core", [3; 1; 1]);
 (Entity_symbol_t.Entity_proper "atom_twotied", [4; 1; 1]);
 (Entity_symbol_t.Entity_proper "atom_threetied", [11; 1; 1]);
 (Entity_symbol_t.Entity_proper "atom_fourtied", [17; 1; 1]);
 (Entity_symbol_t.Entity_proper "atom_fivetied", [18; 1; 1]);
 (Entity_symbol_t.Entity_proper "atom_sixtied", [19; 1; 1]);
 (Entity_symbol_t.Entity_proper "atom_onetied", [20; 1; 1]);
 (Entity_symbol_t.Entity_proper "atom_zerotied", [25; 1; 1]);
 (Entity_symbol_t.Entity_proper "atom_zerotied", [40; 1; 1]);
 (Entity_symbol_t.Entity_proper "atom_zerotied", [120; 1; 1]);
 (Entity_symbol_t.Entity_proper "atom_zerotied", [177; 1; 1])]
);;

test_number 3 (
List.filter (select_enp "block_none" 0 3) for_cat
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_proper "block_none_single", [62; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_none_conjugated", [70; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_none_double", [72; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_none_triple", [74; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_none_single", [197; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_none_conjugated", [205; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_none_double", [207; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_none_triple", [209; 1; 1])]
);;

test_number 4 (
List.filter (select_enp "block_one" 0 3) for_cat
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_proper "block_onetied", [77; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_onetied_onetied", [78; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_onetied_forktied", [99; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_onetied_biforktied",
  [100; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_onetied_triforktied",
  [106; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_onetied_forktied", [148; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_onetied_biforktied",
  [149; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_onetied_triforktied",
  [155; 1; 1]);
 (Entity_symbol_t.Entity_proper "block_onetied_onetied", [214; 1; 1])]
);;

test_number 5 (
List.filter (select_enp "molecule" 0 2) for_cat
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_proper "molecule", [167; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_aminoacid", [168; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_bridged", [172; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_dendrimer", [173; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_forked", [174; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_linear", [175; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_polymer", [192; 1; 1])]
);;

test_number 6 (
List.filter (select_enp "molecule" 3 3) for_cat
(* : Entity_symbol_t.Entity_proper_symbol Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_proper "molecule_aminoacid_segmented",
  [169; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_aminoacid_fragmented",
  [170; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_linear_monoatomic",
  [176; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_linear_diatomic",
  [187; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_linear_triatomic",
  [188; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_linear_tetratomic",
  [189; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_linear_pentatomic",
  [190; 1; 1]);
 (Entity_symbol_t.Entity_proper "molecule_linear_overpentatomic",
  [191; 1; 1])]
);;
