open Make_test_v;;

testing "Entity_symbol_path_list_camlparagraph_symbol_doublet_list_by_item_sextup_provider_v with 
   Entity_symbol_path_list_camlparagraph_symbol_doublet_list_by_item_sextup_provider_u_moleculeset_symbol_moleculeset.ml";;

(* toplevel 
   #use "Entity_symbol_path_list_camlparagraph_symbol_doublet_list_by_item_sextup_provider_u_moleculeset_symbol_moleculeset.ml";; 

*)

let select_of_head_name_of_list_list nam_ent l_l =
  List.filter (fun p -> Entity_symbol_v.string_off (List.hd p) = nam_ent) l_l
;;

let select_of_head_name_of_list_list_list nam_ent dbl =
  let pat_ll = Doublet_list_v.left_list_off_doublet_list dbl in 
  let pat_l = List.flatten pat_ll in
  List.filter (fun p -> Entity_symbol_v.string_off (List.hd p) = nam_ent) pat_l
;;

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

let tag_ite_abb = Tag_v.make sym_ite soi_ite;;

let pne_n_cps_abb_l = Entity_symbol_path_list_camlparagraph_symbol_doublet_list_by_item_sextup_provider_v.provide tag_ite_abb;;

test_number 1 (
tag_ite_abb 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Abbreviating,
 [8; 1; 3; 456802544; 7; 6])
);;

test_number 2 (
select_of_head_name_of_list_list_list "fragment_closed_fromid" pne_n_cps_abb_l
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
     (Entity_fictive_basicnullary_symbol_t.String "fragment_closed_fromid"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "fragment"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]]
);;

test_number 3 (
select_of_head_name_of_list_list_list "hydrogenfluoride" pne_n_cps_abb_l
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Nonsonnullary "hydrogenfluoride"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "molecule_linear_diatomic");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "molecule_linear");
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "molecule"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]]
);;

(* Making *)

let nam_ite = "making";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_mak = Tag_v.make sym_ite soi_ite;;

let espl_cps_dol_mak = Entity_symbol_path_list_camlparagraph_symbol_doublet_list_by_item_sextup_provider_v.provide tag_ite_mak;;
let sym_cap_mak = Doublet_v.right_off_doublet (List.nth espl_cps_dol_mak 1);;
let sym_ito_mak = Item_symbol_v.item_oneparagraph_symbol_off_item_symbol sym_ite;;
let pat_lea_dol_mak = Doublet_v.left_off_doublet (List.nth espl_cps_dol_mak 1);;

test_number 4 (
tag_ite_mak 
(* : Item_symbol_t.item_symbol Tag_t.tag *) 
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Making,
 [3; 1; 3; 456802544; 7; 6])
);;

test_number 5 (
 espl_cps_dol_mak 
(* : (Entity_symbol_t.entity_symbol list list,
   Camlparagraph_symbol_t.camlparagraph_symbol)
   Doublet_t.doublet list *)
  =
[([[Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty)]],
  Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
   (Camlparagraph_for_any_comment_symbol_t.Item_title "making"));
 
 ([[Entity_symbol_t.Entity_proper_symbol
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
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
       Camlparagraph_endmarked_let_match_symbol_t.Let_make_nam_s_equal_function_for_symbol)))]
);;

test_number 6 (
sym_cap_mak
(* : Camlparagraph_symbol_t.camlparagraph_symbol *)
=
Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
 (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
       Camlparagraph_endmarked_let_match_symbol_t.Let_make_nam_s_equal_function_for_symbol )) 
);;

test_number 7 (
pat_lea_dol_mak
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_proper_symbol
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

(* Naming *)

let nam_ite = "naming";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_nam = Tag_v.make sym_ite soi_ite;;

let pne_n_cps_nam_l = Entity_symbol_path_list_camlparagraph_symbol_doublet_list_by_item_sextup_provider_v.provide tag_ite_nam;;

test_number 8 (
tag_ite_nam 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Naming,
 [4; 1; 3; 456802544; 7; 6])
);;

test_number 9 (
pne_n_cps_nam_l
(* : (Entity_symbol_t.entity_symbol list list,
     Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_t.doublet list *)
=
[([[Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty)]],
  Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
   (Camlparagraph_for_any_comment_symbol_t.Item_title "naming"));
 ([[Entity_symbol_t.Entity_proper_symbol
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
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
       Camlparagraph_endmarked_let_match_symbol_t.Let_name_equal_function_for_symbol)))]
);;

(* Extracting *)

let nam_ite = "extracting";;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_ext = Tag_v.make sym_ite soi_ite;;

let pne_n_cps_ext_l = Entity_symbol_path_list_camlparagraph_symbol_doublet_list_by_item_sextup_provider_v.provide tag_ite_ext;;

test_number 10 (
tag_ite_ext 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Extracting,
 [13; 1; 3; 456802544; 7; 6])
);;

test_number 11 (
pne_n_cps_ext_l
(* : (Entity_symbol_t.entity_symbol list list,
     Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_t.doublet list *)
=
[([[Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty)]],
  Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
   (Camlparagraph_for_any_comment_symbol_t.Item_title "extracting"));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "fragment"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
       Camlparagraph_endmarked_let_match_symbol_t.Let_ess_off_est_function)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "grouping"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
       Camlparagraph_endmarked_let_match_symbol_t.Let_ess_off_est_function)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_match_symbol
       Camlparagraph_endmarked_let_match_symbol_t.Let_ess_off_est_function)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_forked");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_linear");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_linear_diatomic");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_linear");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_linear_overdiatomic");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_linear");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_polymer");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)))]
);;

(* Upgrading *)

let nam_ite = "upgrading_grandson";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;

let tag_ite_upg = Tag_v.make sym_ite soi_ite;;

let pne_n_cps_upg_l = Entity_symbol_path_list_camlparagraph_symbol_doublet_list_by_item_sextup_provider_v.provide tag_ite_upg;;

test_number 12 (
tag_ite_upg 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Upgrading,
 [19; 1; 3; 456802544; 7; 6])
);;

test_number 13 (
pne_n_cps_upg_l
(* : (Entity_symbol_t.entity_symbol list list,
     Camlparagraph_symbol_t.camlparagraph_symbol)
    Doublet_t.doublet list *)
=[([[Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty)]],
  Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
   (Camlparagraph_for_any_comment_symbol_t.Item_title "upgrading_grandson"));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "fragment"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "grouping"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_forked");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_linear");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_linear_diatomic");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_linear");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_linear_overdiatomic");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_linear");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)));
 ([[Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule_polymer");
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "molecule"));
    Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)))]
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

let tag_ite_typ = Tag_v.make sym_ite soi_ite;;

let pne_n_cps_typ_l = Entity_symbol_path_list_camlparagraph_symbol_doublet_list_by_item_sextup_provider_v.provide tag_ite_typ;;

test_number 14 (
 tag_ite_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Typing,
 [7; 1; 1; 456802544; 7; 6])
);;

test_number 15 (
pne_n_cps_typ_l 
(* : (Entity_symbol_t.entity_symbol list,
   Camlparagraph_symbol_t.camlparagraph_symbol)
  Doublet_t.doublet list *)
= 
[([[Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty)]],
  Camlparagraph_symbol_t.Camlparagraph_for_any_comment_symbol
   (Camlparagraph_for_any_comment_symbol_t.Item_title "typing"));
 ([[Entity_symbol_t.Entity_proper_symbol
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
       (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]],
  Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.camlparagraph_for_symbol_type)]
);;
