open Make_test_v;;

testing "Translating_item_symbol_entity_symbol_path_doublet_to_camlparagraph_symbol_u_chemicalset_symbol_atom_zerotied_anion_minusone.ml";;

(* toplevel 
   #use "Translating_item_symbol_entity_symbol_path_doublet_to_camlparagraph_symbol_u_chemicalset_symbol_atom_zerotied_anion_minusone.ml";;
*)

let entity_path_list = Entity_current_symbol_list_by_item_sextup_provider_v.provide;;

let translate pat ite = Entity_symbol_path_item_symbol_doublet_to_camlparagraph_symbol_v.camlparagraph_symbol_of_entity_symbol_path_of_item_severalparagraph_symbol pat ite;;

let sym_dos = Domain_symbol_v.make "chemicalset";;
let sym_cat = Category_symbol_v.make nam_cat;;
let sym_enp = Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone";;
let sym_cof = Contentfile_symbol_v.make "value_alone";;
let sym_usf = Usagefile_symbol_v.make "implementation";;

let sym_ite_abb = Item_symbol_v.make "abbreviating";;
let sym_ite_nam = Item_symbol_v.make "naming";;
let sym_ite_ext = Item_symbol_v.make "extracting";;
let sym_ite_upg = Item_symbol_v.make "upgrading_grandson";;

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

(* Abbreviating *)

let gss_ite_abb = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_abb gss_ite_abb;;

let tag_ite_abb = Tag_v.make sym_ite_abb soi_ite_abb;;

let pat_sym_ent_abb_l = entity_path_list tag_ite_abb;;
let pat_sym_ent_abb_1 = List.nth pat_sym_ent_abb_l 0;;
let sym_cap_abb_1 = translate pat_sym_ent_abb_1 sym_ite_abb;;

test_number 1 (
tag_ite_abb 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.abbreviating, [8; 1; 2; 6; 1; 1])
);;

test_number 2 (
pat_sym_ent_abb_1
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Sonnullary "f_1m"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]
);;

test_number 3 (
sym_cap_abb_1
(* : Camlparagraph_symbol_t.camlparagraph_symbol *) 
=
Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
   Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_infather)
);;

(* Naming *)

let gss_ite_nam = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_nam gss_ite_nam;;

let tag_ite_nam = Tag_v.make sym_ite_nam soi_ite_nam;;

let pat_sym_ent_l_nam = entity_path_list tag_ite_nam;;
let pat_sym_ent_nam_1 = List.nth pat_sym_ent_l_nam 0;;
let sym_cap_nam_1 = translate pat_sym_ent_nam_1 sym_ite_nam;;

test_number 4 (
tag_ite_nam 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.naming, [4; 1; 2; 6; 1; 1])
);;

test_number 5 (
pat_sym_ent_nam_1
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Sonnullary "f_1m"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]
);;

test_number 6 (
sym_cap_nam_1
(* : Camlparagraph_symbol_t.camlparagraph_symbol *) 
=
Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
   (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
     Camlparagraph_endmarked_let_match_symbol_t.Let_name_equal_function_for_symbol))
);;

(* Extracting *)

let gss_ite_ext = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_ext gss_ite_ext;;
let tag_ite_ext = Tag_v.make sym_ite_ext soi_ite_ext;;

let pat_sym_ent_ext_l = entity_path_list tag_ite_ext;;
let pat_sym_ent_ext_1 = [];;
let sym_cap_ext_1 = translate pat_sym_ent_ext_1 sym_ite_ext;;

test_number 7 (
tag_ite_ext 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.extracting, [5; 1; 2; 6; 1; 1])
);;

test_number 8 (
pat_sym_ent_ext_1
=
[]
);;

test_number 9 (
sym_cap_ext_1
(* : Camlparagraph_symbol_t.camlparagraph_symbol *)
=
  Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
   Camlparagraph_for_any_comment_symbol_t.Empty
);;

(* Upgrading *)

let gss_ite_upg = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_upg gss_ite_upg;;
let tag_ite_upg = Tag_v.make sym_ite_upg soi_ite_upg;;

let pat_sym_ent_l_upg = entity_path_list tag_ite_upg;;
let pat_sym_ent_upg_1 = [];;
let sym_cap_upg_1 = translate pat_sym_ent_upg_1 sym_ite_upg;;

test_number 10 (
tag_ite_upg
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_v.upgrading_grandson, [7; 1; 2; 6; 1; 1])
);;

test_number 11 (
pat_sym_ent_upg_1
=
[]
);;

test_number 12 (
sym_cap_upg_1
(* : Entity_symbol_t.entity_symbol list list *)
=
Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
 Camlparagraph_for_any_comment_symbol_t.Empty
);;

(* Type *)

let sym_cof = Contentfile_symbol_v.make "type_alone";;
let sym_usf = Usagefile_symbol_v.make "implementation";;

let sym_ite_typ = Item_symbol_v.make "typing";;

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

(* Typing *)

let gss_ite_typ = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_typ gss_ite_typ;;
let tag_ite_typ = Tag_v.make sym_ite_typ soi_ite_typ;;

let pat_sym_ent_l_typ = entity_path_list tag_ite_typ;;
let pat_sym_ent_typ_1 = List.nth pat_sym_ent_l_typ 0;;
let sym_cap_typ_1 = translate pat_sym_ent_typ_1 sym_ite_typ;;

test_number 13 (
 tag_ite_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_v.typing, [3; 1; 1; 6; 1; 1])
);;

test_number 14 (
pat_sym_ent_l_typ
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
 [Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary "f_1m"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
 [Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary "h_1m"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
 [Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary "cl_1m"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
 [Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary "br_1m"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")];
 [Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary "i_1m"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied_anion_minusone")]]
);;

test_number 15 (
sym_cap_typ_1
(* : Entity_symbol_t.entity_symbol list list *)
=
Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 Camlparagraph_endmarked_symbol_t.camlparagraph_for_symbol_type
);;


