open Make_test_v;;

testing "Entity_symbol_list_by_camlline_octtup_provider_v with
   Entity_symbol_list_by_camlline_octtup_provider_u_moleculeset_symbol_molecule_linear_diatomic.ml";;

(* toplevel 
   #use "Entity_symbol_list_by_camlline_octtup_provider_u_moleculeset_symbol_molecule_linear_diatomic.ml";;

*)

let nam_dos = "moleculeset";;
let nam_cat = "symbol";;
let nam_enp = "molecule_linear_diatomic";;
let nam_usf = "implementation";;
let sym_enp = Entity_symbol_v.top_has_sometopsonleaf nam_enp;;

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

(* Abbreviating *)

let sym_ite_abb = Item_symbol_v.make "abbreviating";;
let gss_ite_abb = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_abb gss_ite_abb;;
let tag_ite_abb = Tag_v.make sym_ite_abb soi_ite_abb;;

let sym_cap_abb = Camlparagraph_symbol_v.let_abbreviate_infather;;
let gss_cap_abb = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_abb gss_cap_abb;;
let tag_cap_abb = Tag_v.make sym_cap_abb soi_cap_abb;;

let sym_cal_abb = Camlline_symbol_v.let_ess_equal_est_tdot_ess;;
let gss_cal_abb = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_abb gss_cal_abb;;
let tag_cal_abb = Tag_v.make sym_cal_abb soi_cal_abb;;

let es_esl_abb = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_abb;;

test_number 1 (
tag_cap_abb 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_infather),
 [2; 5; 1; 2; 924545265; 7; 6])
);;

test_number 2 (
es_esl_abb
(* : Entity_symbol_t.entity_symbol list list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Sonnullary "carbonmonoxide"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "molecule_linear_diatomic"))]
);;

(* Making *)

let sym_ite_mak = Item_symbol_v.make "making";;
let gss_ite_mak = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_mak;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_mak gss_ite_mak;;
let tag_ite_mak = Tag_v.make sym_ite_mak soi_ite_mak;;

let sym_cap_mak = Camlparagraph_symbol_v.let_make_equal_function_for_symbol;;
let gss_cap_mak = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_mak;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_mak gss_cap_mak;;
let tag_cap_mak = Tag_v.make sym_cap_mak soi_cap_mak;;
                                    
let sym_cal_mak = Camlline_symbol_v.pipe_string_arrow_ec;;
let gss_cal_mak = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_mak;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_mak gss_cal_mak;;
let tag_cal_mak = Tag_v.make sym_cal_mak soi_cal_mak;;

let es_esl_mak = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_mak;;

test_number 3 (
tag_cap_mak 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
      Camlparagraph_endmarked_let_match_symbol_t.Let_make_nam_s_equal_function_for_symbol)),
 [2; 6; 1; 2; 924545265; 7; 6])
);;

test_number 4 (
tag_cal_mak 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
  =
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_function_symbol
    Camlline_uno_function_symbol_t.Pipe_string_arrow_ec),
 [2; 2; 6; 1; 2; 924545265; 7; 6])
);;

test_number 5 (
es_esl_mak
(* : Entity_symbol_t.entity_symbol list list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Sonnullary "carbonmonoxide"))]
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
                                    
let sym_cal_nam = Camlline_symbol_v.pipe_est_tdot_esl_arrow_string;;
let gss_cal_nam = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_nam gss_cal_nam;;
let tag_cal_nam = Tag_v.make sym_cal_nam soi_cal_nam;;

let es_esl_nam = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_nam;;

test_number 6 (
tag_cap_nam 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
      Camlparagraph_endmarked_let_match_symbol_t.Let_name_equal_function_for_symbol)),
 [2; 3; 1; 2; 924545265; 7; 6])
);;

test_number 7 (
tag_cal_nam 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
  =
(Camlline_symbol_t.Camlline_duo_symbol
  (Camlline_duo_symbol_t.Camlline_duo_function_symbol
    Camlline_duo_function_symbol_t.Pipe_Est_tdot_Esl_arrow_string),
 [2; 2; 3; 1; 2; 924545265; 7; 6])
);;

test_number 8 (
es_esl_nam
(* : Entity_symbol_t.entity_symbol list list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Sonnullary "carbonmonoxide"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "molecule_linear_diatomic"))]
);;

(* Extracting *)

let sym_ite_ext = Item_symbol_v.make "extracting";;
let gss_ite_ext = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_ext gss_ite_ext;;
let tag_ite_ext = Tag_v.make sym_ite_ext soi_ite_ext;;

let sym_cap_ext = Camlparagraph_symbol_v.item_title "extracting";;
let gss_cap_ext = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_ext gss_cap_ext;;
let tag_cap_ext = Tag_v.make sym_cap_ext soi_cap_ext;;

let sym_cal_ext = Camlline_symbol_v.item_title "extracting";;
let gss_cal_ext = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_ext gss_cal_ext;;
let tag_cal_ext = Tag_v.make sym_cal_ext soi_cal_ext;;

let es_esl_ext = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_ext;;

test_number 9 (
tag_cap_ext
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
  (Camlparagraph_for_any_comment_symbol_t.Item_title "extracting"),
 [1; 7; 1; 2; 924545265; 7; 6])
);;

test_number 10 (
tag_cal_ext
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_constant_symbol
  (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
    (Camlline_constant_pervasive_symbol_t.Item_title "extracting")),
 [1; 1; 7; 1; 2; 924545265; 7; 6])
);;

test_number 11 (
es_esl_ext
(* : (Entity_symbol_t.entity_symbol list,
     Camlline_symbol_t.camlline_symbol)
    Doublet_list_t.doublet_list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    Entity_fictive_nullary_symbol_t.Empty)]
);;

(* Upgrading *)

let sym_ite_upg = Item_symbol_v.make "upgrading_grandson";;
let gss_ite_upg = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_upg gss_ite_upg;;
let tag_ite_upg = Tag_v.make sym_ite_upg soi_ite_upg;;

let sym_cap_upg = Camlparagraph_symbol_v.item_title "upgrading_grandson";;
let gss_cap_upg = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_upg gss_cap_upg;;
let tag_cap_upg = Tag_v.make sym_cap_upg soi_cap_upg;;

let sym_cal_upg = Camlline_symbol_v.item_title "upgrading_grandson";;
let gss_cal_upg = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_upg gss_cal_upg;;
let tag_cal_upg = Tag_v.make sym_cal_upg soi_cal_upg;;

let es_esl_upg = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_upg;;

test_number 12 (
tag_cap_upg
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
= 
 (Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
    (Camlparagraph_for_any_comment_symbol_t.Item_title "upgrading_grandson"),
   [1; 4; 1; 2; 924545265; 7; 6])
);;

test_number 13 (
tag_cal_upg
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "upgrading_grandson")),
   [1; 1; 4; 1; 2; 924545265; 7; 6])
);;

test_number 14 (
es_esl_upg
(* : (Entity_symbol_t.entity_symbol list,
     Camlline_symbol_t.camlline_symbol)
    Doublet_list_t.doublet_list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)]
);;

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

let sym_cap = Camlparagraph_symbol_v.type_definition_for_symbol;;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let tag_cap_typ = Tag_v.make sym_cap soi_cap;;

let sym_cal = Camlline_symbol_v.type_est_equal;;
let gss_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal gss_cal;;

let tag_cal_typ = Tag_v.make sym_cal soi_cal;;

let es_esl_typ = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_typ;;

test_number 15 (
tag_cap_typ
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.camlparagraph_for_symbol_type,
 [2; 3; 1; 1; 924545265; 7; 6])
);;

test_number 16 (
tag_cal_typ
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
    Camlline_uno_camltype_symbol_t.Type_est_equal),
 [1; 2; 3; 1; 1; 924545265; 7; 6])
);;

test_number 17 (
es_esl_typ 
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "molecule_linear_diatomic"))]
);;

