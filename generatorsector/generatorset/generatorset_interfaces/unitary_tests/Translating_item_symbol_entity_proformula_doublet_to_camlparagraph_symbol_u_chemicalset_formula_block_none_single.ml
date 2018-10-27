open Make_test_v;;

testing "translating_item_symbol_entity_symbol_path_doublet_to_camlparagraph_symbol_u_chemicalset_formula_atom_zerotied.ml";;

(* toplevel 
   #use "translating_item_symbol_entity_symbol_path_doublet_to_camlparagraph_symbol_u_chemicalset_formula_atom_zerotied.ml";;
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let sym_cat = Category_symbol_v.make nam_cat;;
let sym_enp = Entity_symbol_v.top_has_notopsonleaf "block_none_single";;
let sym_cof = Contentfile_symbol_v.make "value_alone";;
let sym_usf = Usagefile_symbol_v.make "implementation";;

let sym_ite_mak = Item_symbol_v.make "making";;

let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Making *)

let gss_ite_mak = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_mak;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_mak gss_ite_mak;;
let sym_ito_mak = Item_symbol_v.item_oneparagraph_symbol_off_item_symbol sym_ite_mak;;
let tag_ite_mak = Tag_v.make sym_ite_mak soi_ite_mak;;

let pat_sym_ent_l_mak = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_mak;;
let pat_sym_ent_mak = List.hd pat_sym_ent_l_mak;;

let sym_cap_mak = Entity_symbol_path_item_symbol_doublet_to_camlparagraph_symbol_v.camlparagraph_symbol_of_category_symbol_of_item_oneparagraph_symbol sym_cat sym_ito_mak;;

test_number 1 (
tag_ite_mak 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.making, [4; 1; 2; 3; 1; 1])
);;

test_number 2 (
pat_sym_ent_mak
=
[]
);;

test_number 3 (
sym_cap_mak
(* : Camlparagraph_symbol_t.camlparagraph_symbol *) 
=
Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
   (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
     Camlparagraph_endmarked_let_match_symbol_t.Let_make_nam_s_equal_function_for_symbol))
);;

(* Typing *)

let sym_ite_typ = Item_symbol_v.make "typing";;
let gss_ite_typ = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_typ gss_ite_typ;;
let tag_ite_typ = Tag_v.make sym_ite_typ soi_ite_typ;;
let sym_ito_typ = Item_symbol_v.item_oneparagraph_symbol_off_item_symbol sym_ite_typ;;

let pat_sym_ent_l_typ = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_typ;;
let pat_sym_ent_typ = List.hd pat_sym_ent_l_typ;;
let sym_cap_typ = Entity_symbol_path_item_symbol_doublet_to_camlparagraph_symbol_v.camlparagraph_symbol_of_category_symbol_of_item_oneparagraph_symbol sym_cat sym_ito_typ;;

test_number 4 (
 tag_ite_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_v.typing, [3; 1; 1; 3; 1; 1])
);;

test_number 5 (
pat_sym_ent_typ
=
[]
);;

test_number 6 (
sym_cap_typ
(* : Entity_symbol_t.entity_symbol list list *)
=
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol))
);;



