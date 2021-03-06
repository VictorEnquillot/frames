open Make_test_v;;

testing "Entity_current_symbol_uno_by_camlparagraph_septup_provider_v with
   Entity_current_symbol_uno_by_camlparagraph_septup_provider_u_chemicalset_formula_block.ml";;

(* toplevel 
   #use "Entity_current_symbol_uno_by_camlparagraph_septup_provider_u_chemicalset_formula_block.ml";; 
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf "block";;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let sym_cof = Contentfile_symbol_v.make "value_alone";;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make "implementation";;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Abbreviating *)

let sym_ite_abb = Item_symbol_v.make "abbreviating";;
let gss_ite_abb = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_abb gss_ite_abb;;
let tag_ite_abb = Tag_v.make sym_ite_abb soi_ite_abb;;

let sym_cap_abb = Camlparagraph_symbol_v.let_abbreviate_ingrandfather;;
let gss_cap_abb = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_abb gss_cap_abb;;
let tag_cap_abb = Tag_v.make sym_cap_abb soi_cap_abb;;

let pat_sym_ent_abb_l = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide tag_cap_abb;;

test_number 1 (
tag_cap_abb 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
 [2; 8; 1; 2; 3; 1; 1])
);;

test_number 2 (
pat_sym_ent_abb_l
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Nonsonnullary "ar"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "block_raregas"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")]]
);;

(* Naming *)

let sym_ite_nam = Item_symbol_v.make "naming";;
let gss_ite_nam = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_nam gss_ite_nam;;
let tag_ite_nam = Tag_v.make sym_ite_nam soi_ite_nam;;

let sym_cap_nam = Camlparagraph_symbol_v.let_name_equal_function_for_symbol;;
let gss_cap_nam = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_nam gss_cap_nam;;
let tag_cap_nam = Tag_v.make sym_cap_nam soi_cap_nam;;

let pat_sym_ent_l_nam = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide tag_cap_nam;;

test_number 3 (
tag_cap_nam 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
    (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
        Camlparagraph_endmarked_let_match_symbol_t.Let_name_equal_function_for_symbol)),
   [2; 4; 1; 2; 3; 1; 1])
);;

test_number 4 (
pat_sym_ent_l_nam
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "block_raregas"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")];

 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "block_anion"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")];

 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "block_cation"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")];

 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "halfbridge"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")]]
);;

(* Extracting *)

let sym_ite_ext = Item_symbol_v.make "extracting";;
let gss_ite_ext = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_ext gss_ite_ext;;
let tag_ite_ext = Tag_v.make sym_ite_ext soi_ite_ext;;

let sym_cap_ext = Camlparagraph_symbol_v.let_ess_off_est_function;;
let gss_cap_ext = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_ext gss_cap_ext;;
let tag_cap_ext = Tag_v.make sym_cap_ext soi_cap_ext;;

let pat_sym_ent_ext_l = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide tag_cap_ext;;

test_number 5 (
tag_cap_ext 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
      Camlparagraph_endmarked_let_match_symbol_t.Let_ess_off_est_function)),
 [2; 5; 1; 2; 3; 1; 1])
);;

test_number 6 (
pat_sym_ent_ext_l
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "block_raregas"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")]]
);;

(* Upgrading *)

let sym_ite_upg = Item_symbol_v.make "upgrading_grandson";;
let gss_ite_upg = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_upg gss_ite_upg;;
let tag_ite_upg = Tag_v.make sym_ite_upg soi_ite_upg;;

let sym_cap_upg = Camlparagraph_symbol_v.let_top_symbol_of_topson_notleaf_symbol;;
let gss_cap_upg = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_upg gss_cap_upg;;
let tag_cap_upg = Tag_v.make sym_cap_upg soi_cap_upg;;

let pat_sym_ent_l_upg = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide tag_cap_upg;;

test_number 7 (
tag_cap_upg 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
      Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)),
 [2; 7; 1; 2; 3; 1; 1])
);;

test_number 8 (
pat_sym_ent_l_upg
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "block_raregas"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")]]
);;

(* Type *)

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

let sym_cap_typ = Camlparagraph_symbol_v.type_definition_for_symbol;;
let gss_cap_typ = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_typ gss_cap_typ;;
let tag_cap_typ = Tag_v.make sym_cap_typ soi_cap_typ;;

let pne_n_cps_cap_l = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide tag_cap_typ;;

let knv_l = Register_v.entry_list Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;

test_number 9 (
tag_cap_typ
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.camlparagraph_for_symbol_type,
 [2; 3; 1; 1; 3; 1; 1])
);;

test_number 10 (
pne_n_cps_cap_l
(* : Entity_symbol_t.entity_symbol list list *) 
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "block_raregas"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "block_anion"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "block_cation"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "halfbridge"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "block")]]
);;

