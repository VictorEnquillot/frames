open Make_test_v;;

testing "Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v with
   Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_u_chemicalset_symbol_chemicalset.ml";;

(* toplevel 
   #use "Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_u_chemicalset_symbol_chemicalset.ml";;
*)

let select_path_of_head_name nam_ent pat_sym_ent_l =
List.filter (fun p -> Entity_symbol_v.string_off (List.hd p) = nam_ent) pat_sym_ent_l
;;



let sym_dos = Domain_symbol_v.make "chemicalset";;
let sym_cat = Category_symbol_v.make nam_cat;;
let sym_enp = Entity_symbol_v.top_has_notopsonleaf "chemicalset";;
let sym_cof = Contentfile_symbol_v.make "value_alone";;
let sym_usf = Usagefile_symbol_v.make "implementation";;


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

let sym_ite_abb = Item_symbol_v.make "abbreviating";;
let gss_ite_abb = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_abb;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_abb gss_ite_abb;;
let tag_ite_abb = Tag_v.make sym_ite_abb soi_ite_abb;;

let sym_cap_abb_2 = Camlparagraph_symbol_v.let_abbreviate_ingrandfather;;
let gss_cap_abb_2 = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_abb_2;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_abb_2 gss_cap_abb_2;;
let tag_cap_abb_2 = Tag_v.make sym_cap_abb_2 soi_cap_abb_2;;

let es_esl_n_cls_abb_2_l = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide tag_cap_abb_2;;

test_number 1 (
tag_cap_abb_2 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
 [2; 5; 1; 2; 1; 1; 1])
);;

test_number 2 (
es_esl_n_cls_abb_2_l
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
    list *)
=
[([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "atom_twotied"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "atom"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_trio_symbol
   Camlline_trio_symbol_t.Let_esl_equal_est_of_ess_space_Ess_vdot_esl)]
);;

let sym_cap_abb_20 = Camlparagraph_symbol_v.let_abbreviate_ingrandfather;;
let gss_cap_abb_20 = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_abb_20;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_abb_20 gss_cap_abb_20;;
let tag_cap_abb_20 = Tag_v.make sym_cap_abb_20 soi_cap_abb_20;;

let es_esl_n_cls_abb_20_l = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide tag_cap_abb_20;;

test_number 3 (
tag_cap_abb_20 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    Camlparagraph_endmarked_let_symbol_t.Let_abbreviate_ingrandfather),
 [20; 5; 1; 2; 1; 1; 1])
);;

test_number 4 (
es_esl_n_cls_abb_20_l
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
    list *)
=
[([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary "hm1"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "atom"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_trio_symbol
   Camlline_trio_symbol_t.Let_esl_equal_est_of_ess_space_Ess_vdot_esl)]
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

let es_esl_n_cls_nam_l = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide tag_cap_nam;;
let cls_nam_l = Doublet_list_v.right_list_off_doublet_list  es_esl_n_cls_nam_l;;

test_number 5 (
tag_cap_nam 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
      Camlparagraph_endmarked_let_match_symbol_t.Let_name_equal_function_for_symbol)),
 [2; 3; 1; 2; 1; 1; 1])
);;

test_number 6 (
es_esl_n_cls_nam_l
(* : Entity_symbol_t.entity_symbol list list *)
=
[([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_name_equal_function));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "atom"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "atom"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "block"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "block"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "bond"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "bond"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "bridge"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "bridge"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "chain"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "chain"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "cluster"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "cluster"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "coffer"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "coffer"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Sonnullary "cterminal_subunit"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Esl_arrow_string));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "fragment"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "fragment"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "grouping"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "grouping"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "mendeleev"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "mendeleev"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "molecule"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "molecule"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "polypeptide_subunit"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "polypeptide_subunit"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "segment"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_space_ass_arrow));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "segment"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Eas_vdot_name_aas));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

(* Extracting *)

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

let es_esl_n_cls_typ_l = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide tag_cap_typ;;
let cls_typ_l = Doublet_list_v.right_list_off_doublet_list  es_esl_n_cls_typ_l;;

test_number 7 (
tag_cap_typ
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.camlparagraph_for_symbol_type,
 [2; 3; 1; 1; 1; 1; 1])
);;

test_number 8 (
es_esl_n_cls_typ_l
(* : Entity_symbol_t.entity_symbol list list *) 
=
[([Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "chemicalset")],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_est_equal));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "atom"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "block"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "bond"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "bridge"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "chain"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "cluster"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "coffer"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Sonnullary "cterminal_subunit"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "fragment"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "grouping"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "mendeleev"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "molecule"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "polypeptide_subunit"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "segment"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Ess_bof_Ess_tdot_ess));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

