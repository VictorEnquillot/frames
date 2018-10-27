open Make_test_v;;

testing "Entity_symbol_list_by_camlline_octtup_provider_v with
   Entity_symbol_list_by_camlline_octtup_provider_u_chemicalset_tag_atom_zerotied.ml";;

(* toplevel 
   #use "Entity_symbol_list_by_camlline_octtup_provider_u_chemicalset_tag_atom_zerotied.ml";;
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let sym_cat = Category_symbol_v.make "tag";;
let sym_enp = Entity_symbol_v.top_has_notopsonleaf "atom_zerotied";;

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

(* Abbreviating *)

let sym_ite_abb = Item_symbol_v.make "abbreviating";;
let gss_ite_abb = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_abb gss_ite_abb;;
let tag_ite_abb = Tag_v.make sym_ite_abb soi_ite_abb;;

let sym_cap_abb = Camlparagraph_symbol_v.item_title "abbreviating";;
let gss_cap_abb = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_abb gss_cap_abb;;
let tag_cap_abb = Tag_v.make sym_cap_abb soi_cap_abb;;

let sym_cal_abb = Camlline_symbol_v.item_title "abbreviating";;
let gss_cal_abb = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_abb gss_cal_abb;;
let tag_cal_abb = Tag_v.make sym_cal_abb soi_cal_abb;;

let es_esl_abb = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_abb;;

test_number 1 (
tag_cap_abb 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
  (Camlparagraph_for_any_comment_symbol_t.Item_title "abbreviating"),
 [1; 8; 1; 2; 3; 2; 1])
);;

test_number 2 (
es_esl_abb
(* : Entity_symbol_t.entity_symbol list list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    Entity_fictive_nullary_symbol_t.Empty)]
);;

(* Naming *)

let sym_ite_nam = Item_symbol_v.make "naming";;
let gss_ite_nam = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_nam gss_ite_nam;;
let tag_ite_nam = Tag_v.make sym_ite_nam soi_ite_nam;;

let sym_cap_nam = Camlparagraph_symbol_v.let_name_argument_for_tag;;
let gss_cap_nam = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_nam gss_cap_nam;;
let tag_cap_nam = Tag_v.make sym_cap_nam soi_cap_nam;;
                                    
let sym_cal_nam = Camlline_symbol_v.space_tag_vdot_name_est_vdot_name_at;;
let gss_cal_nam = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_nam;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_nam gss_cal_nam;;
let tag_cal_nam = Tag_v.make sym_cal_nam soi_cal_nam;;

let es_esl_nam = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_nam;;

test_number 3 (
tag_cap_nam 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
      Camlparagraph_endmarked_let_argument_symbol_t.Let_name_argument_for_tag)),
 [2; 4; 1; 2; 3; 2; 1])
);;

test_number 4 (
tag_cal_nam 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
  =
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_function_symbol
    Camlline_uno_function_symbol_t.Space_Tag_vdot_name_Est_vdot_name_at),
 [2; 2; 4; 1; 2; 3; 2; 1])
);;

test_number 5 (
es_esl_nam
(* : Entity_symbol_t.entity_symbol list list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")]
);;

(* Extracting *)

let sym_ite_ext = Item_symbol_v.make "extracting";;
let gss_ite_ext = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_ext gss_ite_ext;;
let tag_ite_ext = Tag_v.make sym_ite_ext soi_ite_ext;;

let sym_cap_ext = Camlparagraph_symbol_v.let_mtc_off_mt_argument;; 
let gss_cap_ext = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_ext gss_cap_ext;;
let tag_cap_ext = Tag_v.make sym_cap_ext soi_cap_ext;;

let sym_cal_ext = Camlline_symbol_v.space_tag_vdot_map_left_space_est_vdot_esc_off_est_space_at;;
let gss_cal_ext = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_ext;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_ext gss_cal_ext;;
let tag_cal_ext = Tag_v.make sym_cal_ext soi_cal_ext;;

let es_esl_ext = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_ext;;

test_number 6 (
tag_cap_ext
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
      Camlparagraph_endmarked_let_argument_symbol_t.Let_mtc_off_mt_argument)),
 [2; 5; 1; 2; 3; 2; 1])
);;

test_number 7 (
tag_cal_ext
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_duo_symbol
  (Camlline_duo_symbol_t.Camlline_duo_function_symbol
    Camlline_duo_function_symbol_t.Space_Tag_vdot_map_left_space_Est_vdot_esc_off_est_space_at),
 [2; 2; 5; 1; 2; 3; 2; 1])
);;

test_number 8 (
es_esl_ext
(* : (Entity_symbol_t.entity_symbol list,
     Camlline_symbol_t.camlline_symbol)
    Doublet_list_t.doublet_list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "atom_zerotied_raregas"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")]
);;

(* Upgrading *)

let sym_ite_upg = Item_symbol_v.make "upgrading_grandson";;
let gss_ite_upg = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_upg gss_ite_upg;;
let tag_ite_upg = Tag_v.make sym_ite_upg soi_ite_upg;;

let sym_cap_upg = Camlparagraph_symbol_v.let_mt_of_mtc_argument;;
let gss_cap_upg = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_upg gss_cap_upg;;
let tag_cap_upg = Tag_v.make sym_cap_upg soi_cap_upg;;

let sym_ent_sym_cal_dol_upg = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide tag_cap_upg;;

test_number 9 (
tag_cap_upg
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
      Camlparagraph_endmarked_let_argument_symbol_t.Let_mt_of_mtc_argument)),
 [2; 7; 1; 2; 3; 2; 1])
);;

test_number 10 (
sym_ent_sym_cal_dol_upg
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
    Doublet_list_t.doublet_list *)
=
[([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "atom_zerotied_raregas"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "atom_zerotied_raregas"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Space_Tag_vdot_map_left_space_Est_vdot_est_of_esc_space_atc));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

let sym_cal_upg = Camlline_symbol_v.let_et_any_of_ec_any_space_ac_ac_equal;;
let gss_cal_upg = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_upg;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_upg gss_cal_upg;;
let tag_cal_upg = Tag_v.make sym_cal_upg soi_cal_upg;;

let es_esl_upg = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_upg;;

test_number 11 (
tag_cal_upg
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_duo_symbol
  (Camlline_duo_symbol_t.Camlline_duo_function_symbol
    Camlline_duo_function_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal),
 [1; 2; 7; 1; 2; 3; 2; 1])
);;

test_number 12 (
es_esl_upg
(* : (Entity_symbol_t.entity_symbol list,
     Camlline_symbol_t.camlline_symbol)
    Doublet_list_t.doublet_list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "atom_zerotied_raregas"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")]
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

let sym_cap_typ = Camlparagraph_symbol_v.type_definition_for_tag;;
let gss_cap_typ = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_typ gss_cap_typ;;
let tag_cap_typ = Tag_v.make sym_cap_typ soi_cap_typ;;

let sym_cal_typ = Camlline_symbol_v.type_mt_equal_est_tdot_est_space_tag;;
let gss_cal_typ = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal_typ gss_cal_typ;;
let tag_cal_typ = Tag_v.make sym_cal_typ soi_cal_typ;;

let es_esl_typ = Entity_symbol_list_by_camlline_octtup_provider_v.provide tag_cal_typ;;

test_number 13 (
tag_cap_typ
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.Type_definition_for_tag,
 [2; 3; 1; 1; 3; 2; 1])
);;

test_number 14 (
es_esl_typ 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied")]
);;

