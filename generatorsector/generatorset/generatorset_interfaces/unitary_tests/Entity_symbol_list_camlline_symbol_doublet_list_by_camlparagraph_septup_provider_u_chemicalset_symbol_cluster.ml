open Make_test_v;;

testing "Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v with
   Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_u_chemicalset_symbol_cluster.ml";;

(* toplevel 
   #use "Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_u_chemicalset_symbol_cluster.ml";;
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let sym_cat = Category_symbol_v.make nam_cat;;
let sym_enp = Entity_symbol_v.top_has_notopsonleaf "cluster";;

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

(* Making *)

let sym_ite_mak = Item_symbol_v.make "making";;
let gss_ite_mak = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_mak;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_mak gss_ite_mak;;
let tag_ite_mak = Tag_v.make sym_ite_mak soi_ite_mak;;

let sym_cap_mak = Camlparagraph_symbol_v.let_make_argument_equal_function_for_symbol;;
let gss_cap_mak = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_mak;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_mak gss_cap_mak;;
let tag_cap_mak = Tag_v.make sym_cap_mak soi_cap_mak;;
  
let pat_sym_ent_l = Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide tag_cap_mak;;
let sym_ent_sym_cal_dol_mak = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide tag_cap_mak;;

test_number 1 (
tag_cap_mak 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_function_symbol
      Camlparagraph_endmarked_let_argument_function_symbol_t.Let_make_argument_equal_function_for_symbol)),
 [2; 6; 1; 2; 113; 1; 1])
);;

test_number 2 (
pat_sym_ent_l
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
     (Entity_fictive_basicnullary_symbol_t.String "cluster_fromid"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "cluster")];
 [Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
     (Entity_fictive_basicnullary_symbol_t.String "protein_fromid"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_v.top_has_notopsonleaf "cluster")]]
);;

test_number 3 (
sym_ent_sym_cal_dol_mak
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
    Doublet_list_t.doublet_list *)
=
[([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_make_argument_equal_function));
 ([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String "cluster_fromid"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec_space_sarg));
 ([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String "protein_fromid"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_ecstring_arrow_ec_space_sarg));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Pipe_print_fatal_error_make_4_lines));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon))]
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

let sym_ent_sym_cal_dol_nam = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide tag_cap_nam;;

test_number 4 (
tag_cap_nam 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
      Camlparagraph_endmarked_let_match_symbol_t.Let_name_equal_function_for_symbol)),
 [2; 3; 1; 2; 113; 1; 1])
);;

test_number 5 (
sym_ent_sym_cal_dol_nam
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
    Doublet_list_t.doublet_list *)
=
[([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_name_equal_function));
 ([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String "cluster_fromid"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "cluster")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_underscore_arrow_string));
 ([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String "protein_fromid"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "cluster")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Est_tdot_Ess_underscore_arrow_string));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon))]
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

let sym_ent_sym_cal_dol_ext = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide tag_cap_ext;;

test_number 6 (
tag_cap_ext 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
  (Camlparagraph_for_any_comment_symbol_t.Item_title "extracting"),
 [1; 7; 1; 2; 113; 1; 1])
);;

test_number 7 (
sym_ent_sym_cal_dol_ext 
(* : Entity_symbol_t.entity_symbol list list *)
=
[([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "extracting")));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line))]
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

let sym_ent_sym_cal_dol_upg = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide tag_cap_upg;;

test_number 8 (
tag_cap_upg 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
  (Camlparagraph_for_any_comment_symbol_t.Item_title "upgrading_grandson"),
 [1; 4; 1; 2; 113; 1; 1])
);;

test_number 9 (
sym_ent_sym_cal_dol_upg 
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
    Doublet_list_t.doublet_list *)
=
[([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "upgrading_grandson")));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line))]
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

let sym_cap_typ = Camlparagraph_symbol_v.type_definition_for_symbol;;
let gss_cap_typ = Generatorset_symbol_v.generatorset_symbol_of_camlparagraph_symbol sym_cap_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cap_typ gss_cap_typ;;
let tag_cap_typ = Tag_v.make sym_cap_typ soi_cap_typ;;

let sym_ent_sym_cal_dol_typ = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide tag_cap_typ;;

test_number 10 (
 tag_ite_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Typing,
 [3; 1; 1; 113; 1; 1])
);;

test_number 11 (
sym_ent_sym_cal_dol_typ 
=
[([Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "cluster")],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_est_equal));
 ([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String "cluster_fromid"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "cluster")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Ess_bof_b));
 ([Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
      (Entity_fictive_basicnullary_symbol_t.String "protein_fromid"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "cluster")],
  Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Pipe_Ess_bof_b));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;
