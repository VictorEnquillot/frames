open Make_test_v;;

testing "Entity_symbol_path_item_symbol_doublet_to_camlparagraph_symbol_v with
   Translating_item_symbol_entity_symbol_path_doublet_to_camlparagraph_symbol_u_moleculeset_symbol_moleculeset.ml";;

(* toplevel 
   #use "Translating_item_symbol_entity_symbol_path_doublet_to_camlparagraph_symbol_u_moleculeset_symbol_moleculeset.ml";;

*)

let nam_dos = "moleculeset";;
let nam_cat = "symbol";;
let nam_enp = "moleculeset";;
let nam_usf = "implementation";;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

(* Type_alone *)

let nam_cof = "type_alone";;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Typing *)

let nam_ite = "typing";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;
let tag_ite_typ = Tag_v.make sym_ite soi_ite;;

let sym_ito_typ = Item_symbol_v.item_oneparagraph_symbol_off_item_symbol sym_ite;;
let pat_sym_ent_l_typ = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_typ;;

let sym_cap_typ = Entity_symbol_path_item_symbol_doublet_to_camlparagraph_symbol_v.camlparagraph_symbol_of_category_symbol_of_item_oneparagraph_symbol sym_cat sym_ito_typ;;

test_number 1 (
 tag_ite_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Typing,
 [7; 1; 1; 456802544; 7; 6])
);;

test_number 2 (
pat_sym_ent_l_typ
(* Entity_symbol_t.entity_symbol list *)
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))];

 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "fragment"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))];

 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "grouping"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))];

 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "molecule"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]]
);;

test_number 3 (
sym_cap_typ
(* : Entity_symbol_t.entity_symbol list list *)
=
Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 Camlparagraph_endmarked_symbol_t.camlparagraph_for_symbol_type
);;

(* Value_alone *)

let nam_cof = "value_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Making *)

let nam_ite = "making";;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_mak = Tag_v.make sym_ite soi_ite;;

let pat_sym_ent_l_mak = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_mak;;
let pat_sym_ent_mak = List.hd pat_sym_ent_l_mak;;
let sym_ito_mak = Item_symbol_v.item_oneparagraph_symbol_off_item_symbol sym_ite;;
let sym_cap_mak = Entity_symbol_path_item_symbol_doublet_to_camlparagraph_symbol_v.camlparagraph_symbol_of_category_symbol_of_item_oneparagraph_symbol sym_cat sym_ito_mak;;

test_number 4 (
tag_ite_mak 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Making,
 [3; 1; 3; 456802544; 7; 6])
);;

test_number 5 (
pat_sym_ent_mak
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "fragment"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]
);;

test_number 6 (
sym_cap_mak
(* : Camlparagraph_symbol_t.camlparagraph_symbol *) 
=
Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
   (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
     Camlparagraph_endmarked_let_match_symbol_t.Let_make_nam_s_equal_function_for_symbol))
);;

