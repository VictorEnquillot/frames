open Make_test_v;;

testing "Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_formula_v with
   Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_formula_u_figure_formula_x_typing.ml";;

(* toplevel 
   #use "Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_formula_u_figure_formula_x_typing.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_efn = "x";;
let nam_usf = "implementation";;
let nam_cof = "type_alone";;
let nam_ite = "typing";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_efn_l = Entity_fictive_nullary_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_efn = List.find (fun e -> Entity_fictive_nullary_symbol_v.string_off e = nam_efn) sym_efn_l;;
let gss_efn = Generatorset_symbol_v.generatorset_symbol_of_entity_fictive_nullary_symbol sym_efn;;
Generatorset_symbol_by_sole_index_provider_v.store soi_efn gss_efn;;
let tag_efn = Tag_v.make sym_efn soi_efn;;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;
let sex_ite = Tag_v.make sym_ite soi_ite;;

test_number 1 ( 
sex_ite
(* : Item_symbol_t.item_symbol Tag_t.tag *)
  =
  (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
   [24; 1; 1; 23; 2; 4])
);;

let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 2 ( 
tag_cap_l
(*  : Camlparagraph_symbol_t.camlparagraph_symbol list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
    [1; 24; 1; 1; 23; 2; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_entity_fictive_nullary_type,
    [2; 24; 1; 1; 23; 2; 4])]
);;

(* Camlparagraph : 1 Item_title "typing" *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 3 ( 
sep_cap 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
   [1; 24; 1; 1; 23; 2; 4])
);;

let sym_cap = Tag_v.symbol_off_tag sep_cap;;
let sym_cpa = Camlparagraph_symbol_v.camlparagraph_for_any_symbol_off_camlparagraph_symbol sym_cap;;

let sym_ent_sym_cal_dol_typ = Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_for_any_v.translate_and_couple sym_cpa soi_cap;;

test_number 4 ( 
sym_ent_sym_cal_dol_typ
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol) list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        Entity_fictive_nullary_symbol_t.Empty)],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "typing")))]
);;

(* Camlparagraph : 2 Type_definition_for_formula *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 5 ( 
sep_cap 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_entity_fictive_nullary_type,
   [2; 24; 1; 1; 23; 2; 4])
);;

open Camlparagraph_for_formula_entity_fictive_nullary_type_proformula_v;;

  let gss_pre = Generatorset_symbol_v.is_entity_fictive_nullary_symbol_off_generatorset_symbol ;;
  let (soi_ent_top, gss_ent_top) = 
    Generatorset_symbol_by_sole_index_provider_v.sole_index_n_generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index 
      gss_pre  
      soi_cap
  ;;
  let sym_efn_top = 
    Generatorset_symbol_v.entity_fictive_nullary_symbol_off_generatorset_symbol
      gss_ent_top
  ;;
  let tag_efn_top = Tag_v.make sym_efn_top soi_ent_top ;;

  let sym_cof = 
    Camlparagraph_tag_v.contentfile_symbol_off_camlparagraph_tag 
      sep_cap 
  ;;

  let body = body_of_contentfile_of_entity_top sym_cof tag_efn_top ;;

let dol = Camlparagraph_for_formula_entity_fictive_nullary_type_proformula_v.translate_and_couple soi_cap;;

test_number 6 ( 
dol
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
 [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "x"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Type_eft_equal));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
        (Entity_fictive_basicnullary_symbol_t.Float ""))],
    Camlline_symbol_t.Camlline_datastructure_symbol
     (Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol
       (Camlline_datastructure_camltype_symbol_t.Lpar_a_tag_rpar "singlet")));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

let sym_cap = Tag_v.symbol_off_tag sep_cap;;
let sym_cpf = Camlparagraph_symbol_v.camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cap;;

let sym_ent_sym_cal_dol_typ = Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_for_formula_v.translate_and_couple sym_cpf soi_cap;;

test_number 7 ( 
sym_ent_sym_cal_dol_typ
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol) list *)
=
dol
);;

