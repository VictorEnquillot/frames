open Make_test_v;;

testing "Entity_symbol_list_by_camlline_octtup_provider_v with
   Entity_symbol_path_by_camlline_octtup_provider_u_moleculeset_symbol_moleculeset.ml";;

(* toplevel 
   #use "Entity_symbol_path_by_camlline_octtup_provider_u_moleculeset_symbol_moleculeset.ml";;

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

let nam_ite = "abbreviating";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let sym_cap = Camlparagraph_symbol_v.let_abbreviate_grandson_basicnullary;;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let tag_cap_abb = Tag_v.make sym_cap soi_cap;;
let pat_sym_ent_sym_cal_dol = 
    Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide
      tag_cap_abb;;

let sym_cal = Camlline_symbol_v.let_esl_arg_equal_est_bof_ess_space_lpar_ess_vdot_esl_space_arg_rpar;;

let gss_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal gss_cal;;

let tag_cal_abb = Tag_v.make sym_cal soi_cal;;

let pat_sym_ent_abb = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_abb;;

test_number 1 (
tag_cap_abb 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_grandson_basicnullary),
 [43; 8; 1; 3; 456802544; 7; 6])
);;

test_number 2 (
tag_cal_abb 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
  =
(Camlline_symbol_t.Camlline_trio_symbol
   Camlline_trio_symbol_t.Let_esl_arg_equal_est_bof_ess_space_lpar_Ess_vdot_esl_space_arg_rpar,
 [68; 43; 8; 1; 3; 456802544; 7; 6])
);;

test_number 3 (
pat_sym_ent_abb
(* : Entity_symbol_t.entity_symbol list list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
    (Entity_fictive_basicnullary_symbol_t.String "fragment_closed_fromid"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "fragment"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]
);;

(* Making *)

let name_ite = "making";;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let sym_cap = Camlparagraph_symbol_v.let_make_equal_function_for_symbol;;
let gss_cap = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap gss_cap;;

let sym_cal = Camlline_symbol_v.pipe_ess_bof_ess_tdot_ess;;
let gss_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal gss_cal;;

let tag_ite_mak = Tag_v.make sym_ite soi_ite;;
let tag_cap_mak = Tag_v.make sym_cap soi_cap;;
let tag_cal_mak = Tag_v.make sym_cal soi_cal;;

let pat_sym_ent_ite_dol_mak = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_mak;;
let pat_sym_ent_cap_dol_mak = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide tag_cap_mak;;
let sym_ent_l_mak = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_mak;;

test_number 4 (
tag_cap_mak 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
  =
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
	 Camlparagraph_endmarked_let_match_symbol_t.Let_make_nam_s_equal_function_for_symbol)),
 [30; 8; 1; 3; 456802544; 7; 6])
);;

test_number 5 (
tag_cal_mak 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
  =
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
    Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess),
 [77; 30; 8; 1; 3; 456802544; 7; 6])
);;

test_number 6 (
sym_ent_l_mak
(* : Entity_symbol_t.entity_symbol list list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "fragment"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]
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
                                    
let sym_cal_nam = Camlline_symbol_v.pipe_est_tdot_ess_space_ass_arrow;;
let gss_cal_nam = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_nam gss_cal_nam;;
let tag_cal_nam = Tag_v.make sym_cal_nam soi_cal_nam;;

let sym_ent_l_nam = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_nam;;

test_number 7 (
tag_cap_nam 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
      Camlparagraph_endmarked_let_match_symbol_t.Let_name_equal_function_for_symbol)),
 [2; 3; 1; 3; 456802544; 7; 6])
);;

test_number 8 (
tag_cal_nam 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
  =
(Camlline_symbol_t.Camlline_duo_symbol
  (Camlline_duo_symbol_t.Camlline_duo_function_symbol
    Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow),
 [2; 2; 3; 1; 3; 456802544; 7; 6])
);;

test_number 9 (
sym_ent_l_nam
(* : Entity_symbol_t.entity_symbol list list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "fragment"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]
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

let sym_cal_ext = Camlline_symbol_v.pipe_est_tdot_ess_space_ass_arrow_ass;;
let gss_cal_ext = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_ext gss_cal_ext;;
let tag_cal_ext = Tag_v.make sym_cal_ext soi_cal_ext;;

let sym_ent_l_ext = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_ext;;

test_number 10 (
tag_cap_ext
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
      Camlparagraph_endmarked_let_match_symbol_t.Let_ess_off_est_function)),
 [2; 7; 1; 3; 456802544; 7; 6])
);;

test_number 11 (
tag_cal_ext
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow_ass),
 [2; 2; 7; 1; 3; 456802544; 7; 6])
);;

test_number 12 (
sym_ent_l_ext
(* : (Entity_symbol_t.entity_symbol list,
     Camlline_symbol_t.camlline_symbol)
    Doublet_list_t.doublet_list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "fragment"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]
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

let sym_cal_upg = Camlline_symbol_v.est_tdot_ess_space_ass;;
let gss_cal_upg = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_upg gss_cal_upg;;
let tag_cal_upg = Tag_v.make sym_cal_upg soi_cal_upg;;

let sym_ent_l_upg = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_upg;;

test_number 13 (
tag_cap_upg
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
= 
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
         Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)),
 [2; 4; 1; 3; 456802544; 7; 6])
);;

test_number 14 (
tag_cal_upg
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_duo_symbol
  (Camlline_duo_symbol_t.Camlline_duo_function_symbol
    Camlline_duo_function_symbol_t.Est_tdot_Ess_space_ass),
 [2; 2; 4; 1; 3; 456802544; 7; 6])
);;

test_number 15 (
sym_ent_l_upg
(* : (Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "fragment"));

 Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]
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

let sym_ent_l_typ = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_typ;;

test_number 16 (
tag_cap_typ
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.camlparagraph_for_symbol_type,
 [2; 3; 1; 1; 456802544; 7; 6])
);;

test_number 17 (
tag_cal_typ
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
    Camlline_uno_camltype_symbol_t.Type_est_equal),
 [1; 2; 3; 1; 1; 456802544; 7; 6])
);;

test_number 18 (
sym_ent_l_typ 
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]
);;

