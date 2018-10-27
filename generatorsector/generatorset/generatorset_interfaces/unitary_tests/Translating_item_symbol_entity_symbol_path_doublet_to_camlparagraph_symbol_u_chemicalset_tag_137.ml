open Make_test_v;;

testing "Entity_symbol_path_item_symbol_doublet_to_camlparagraph_symbol_v with
   Translating_item_symbol_entity_symbol_path_doublet_to_camlparagraph_symbol_u_chemicalset_tag_137.ml";;

(* toplevel 
   #use "Translating_item_symbol_entity_symbol_path_doublet_to_camlparagraph_symbol_u_chemicalset_tag_137.ml";;
*)

let entity_path_list = Entity_current_symbol_list_by_item_sextup_provider_v.provide;;

let translate_of_category_symbol_of_item_oneparagraph_symbol cat ito = Entity_symbol_path_item_symbol_doublet_to_camlparagraph_symbol_v.camlparagraph_symbol_of_category_symbol_of_item_oneparagraph_symbol cat ito;;

let translate_of_path_of_category_symbol_of_item_severalparagraph_symbol pat cat its = Entity_symbol_path_item_symbol_doublet_to_camlparagraph_symbol_v.camlparagraph_symbol_of_entity_symbol_path_of_category_symbol_of_item_severalparagraph_symbol pat cat its;;

let sym_dos = Domain_symbol_v.make "chemicalset";;
let sym_cat = Category_symbol_v.make "tag";;
let sym_enp = Entity_symbol_v.top_has_notopsonleaf "molecule_linear_monoatomic";;


let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

(* Value_alone *)

let sym_cof = Contentfile_symbol_v.make "value_alone";;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make "implementation";;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Naming *)

let sym_ite_nam = Item_symbol_v.make "naming";;
let gss_ite_nam = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_nam gss_ite_nam;;

let tag_ite_nam = Tag_v.make sym_ite_nam soi_ite_nam;;
let pat_sym_ent_l_nam = entity_path_list tag_ite_nam;;
let pat_sym_ent_nam = List.hd pat_sym_ent_l_nam;;
let sym_ito_nam = Item_symbol_v.item_oneparagraph_symbol_off_item_symbol sym_ite_nam;;
let sym_cap_nam = translate_of_category_symbol_of_item_oneparagraph_symbol sym_cat sym_ito_nam;;

test_number 1 (
tag_ite_nam 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.naming, [4; 1; 2; 137; 2; 1])
);;

test_number 2 (
pat_sym_ent_l_nam
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "molecule_linear_monoatomic")]]
);;

test_number 3 (
sym_cap_nam
(* : Camlparagraph_symbol_t.camlparagraph_symbol *) 
=
Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
   (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
     Camlparagraph_endmarked_let_argument_symbol_t.Let_name_argument_for_tag))
);;

(* Extracting *)

let sym_ite_ext = Item_symbol_v.make "extracting";;
let gss_ite_ext = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_ext gss_ite_ext;;
let tag_ite_ext = Tag_v.make sym_ite_ext soi_ite_ext;;

let pat_sym_ent_ext_l = entity_path_list tag_ite_ext;;
let pat_sym_ent_ext = List.hd pat_sym_ent_ext_l;;
let sym_its_ext = Item_symbol_v.item_severalparagraph_symbol_off_item_symbol sym_ite_ext;;
let sym_cap_ext = translate_of_path_of_category_symbol_of_item_severalparagraph_symbol pat_sym_ent_ext sym_cat sym_its_ext;;

test_number 4 (
tag_ite_ext 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.extracting, [5; 1; 2; 137; 2; 1])
);;

test_number 5 (
pat_sym_ent_ext
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Onlyson "atom_zerotied"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_v.top_has_notopsonleaf "molecule_linear_monoatomic")]
);;

test_number 6 (
sym_cap_ext 
(* : Camlparagraph_symbol_t.camlparagraph_symbol *)
=
Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
   (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
     Camlparagraph_endmarked_let_argument_symbol_t.Let_mtc_off_mt_argument))
);;

(* Upgrading *)

let sym_ite_upg = Item_symbol_v.make "upgrading_grandson";;
let gss_ite_upg = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_upg gss_ite_upg;;
let tag_ite_upg = Tag_v.make sym_ite_upg soi_ite_upg;;

let pat_sym_ent_l_upg = entity_path_list tag_ite_upg;;
let pat_sym_ent_upg = List.hd pat_sym_ent_l_upg;;
let sym_its_upg = Item_symbol_v.item_severalparagraph_symbol_off_item_symbol sym_ite_upg;;
let sym_cap_upg = translate_of_path_of_category_symbol_of_item_severalparagraph_symbol pat_sym_ent_upg sym_cat sym_its_upg;;

test_number 7 (
tag_ite_upg 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.upgrading_grandson, [7; 1; 2; 137; 2; 1])
);;

test_number 8 (
pat_sym_ent_upg
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Onlyson "atom_zerotied"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_v.top_has_notopsonleaf "molecule_linear_monoatomic")]
);;

test_number 9 (
sym_cap_upg
(* : Entity_symbol_t.entity_symbol list list *)
=
Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
   (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
     Camlparagraph_endmarked_let_argument_symbol_t.Let_mt_of_mtc_argument))
);;

(* Type_alone *)

let sym_cof = Contentfile_symbol_v.make "type_alone";;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make "implementation";;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Typing *)

let sym_ite_typ = Item_symbol_v.make "typing";;
let gss_ite_typ = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_typ gss_ite_typ;;
let tag_ite_typ = Tag_v.make sym_ite_typ soi_ite_typ;;

let pat_sym_ent_l_typ = entity_path_list tag_ite_typ;;
let pat_sym_ent_typ = List.hd pat_sym_ent_l_typ;;
let sym_ito_typ = Item_symbol_v.item_oneparagraph_symbol_off_item_symbol sym_ite_typ;;
let sym_cap_typ = translate_of_category_symbol_of_item_oneparagraph_symbol sym_cat sym_ito_typ;;

test_number 10 (
 tag_ite_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Typing,
 [3; 1; 1; 137; 2; 1])
);;

test_number 11 (
pat_sym_ent_typ
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_v.top_has_notopsonleaf "molecule_linear_monoatomic")]
);;

test_number 12 (
sym_cap_typ
(* : Entity_symbol_t.entity_symbol list list *)
=
Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 Camlparagraph_endmarked_symbol_t.Type_definition_for_tag
);;


