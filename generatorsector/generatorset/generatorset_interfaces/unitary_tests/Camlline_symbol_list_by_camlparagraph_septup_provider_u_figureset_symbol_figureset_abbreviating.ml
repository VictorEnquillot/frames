open Make_test_v;;

testing "Camlline_symbol_list_by_camlparagraph_septup_provider_v with
   Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_symbol_figure_abbreviating.ml";;

(* toplevel 
   #use "Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_symbol_figure_abbreviating.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_ent = "figure";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let sym_usf = Usagefile_symbol_v.make nam_usf;;

let nam_ite = "abbreviating_topson";;
let sym_ite = Item_symbol_v.make nam_ite;;
let sex_ite = (sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

test_number 1 (
sex_ite 
(* : Item_symbol_t.item_symbol * Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
=
 (Item_symbol_t.Item_each_leaf_symbol
    Item_each_leaf_symbol_t.Abbreviating_topson,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_iel = Item_symbol_v.item_each_leaf_symbol_off_item_symbol sym_ite;;
let sex_iel = (sym_iel, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;
let sym_enc_n_sep_cap_dol = Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_each_leaf_sextup_provider_v.provide sex_iel;;
let sym_enc_l = Entity_current_symbol_list_by_item_each_leaf_sextup_provider_v.provide sex_iel;;

test_number 2 (
sym_enc_n_sep_cap_dol
(* : (Entity_symbol_t.entity_symbol,
   (Camlparagraph_symbol_t.camlparagraph_symbol, Item_symbol_t.item_symbol,
    Usagefile_symbol_t.usagefile_symbol,
    Contentfile_symbol_t.contentfile_symbol, Entity_symbol_t.entity_symbol,
    Category_symbol_t.category_symbol, Domain_symbol_t.domainset_symbol)
   Septuplet_t.septuplet)
  Doublet_list_t.doublet_list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty),
    (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
      (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
        (Camlparagraph_for_any_comment_symbol_t.Item_title
          "abbreviating_topson")),
     Item_symbol_t.Item_each_leaf_symbol
      Item_each_leaf_symbol_t.Abbreviating_topson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure));

   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "vector")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
          Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
     Item_symbol_t.Item_each_leaf_symbol
      Item_each_leaf_symbol_t.Abbreviating_topson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure));

   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "point")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
          Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
     Item_symbol_t.Item_each_leaf_symbol
      Item_each_leaf_symbol_t.Abbreviating_topson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure))]
);;

let sym_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 3 (
sym_cap_l
(* : (Camlparagraph_symbol_t.camlparagraph_symbol, Item_symbol_t.item_symbol,
   Usagefile_symbol_t.usagefile_symbol,
   Contentfile_symbol_t.contentfile_symbol, Entity_symbol_t.entity_symbol,
   Category_symbol_t.category_symbol, Domain_symbol_t.domainset_symbol)
  Septuplet_t.septuplet list *)
=
 [Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title
        "abbreviating_topson"));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
        Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
        Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary))]
);;

(* Camlparagraph : Let_abbreviate_topson_nullary *)

let sym_cap = List.nth sym_cap_l (idx_cap-1);;

test_number 4 (
sym_cap
(* : (Camlparagraph_symbol_t.camlparagraph_symbol, Item_symbol_t.item_symbol,
   Usagefile_symbol_t.usagefile_symbol,
   Contentfile_symbol_t.contentfile_symbol, Entity_symbol_t.entity_symbol,
   Category_symbol_t.category_symbol, Domain_symbol_t.domainset_symbol)
  Septuplet_t.septuplet *)
=
  Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary))
);;

let sep_cap = Septuplet_v.make_of_left_of_sextuplet sym_cap sex_ite;;

let cou_l = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 5 (
 cou_l 
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "vector"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_ess_equal_Est_tdot_Ess))]
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 6 (
sym_cal_l 
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_ess_equal_Est_tdot_Ess)]
);;

(* Camlparagraph : Let_abbreviate_topson_nullary *)

let sym_cap = List.nth sym_cap_l (idx_cap-1);;

test_number 7 (
sym_cap
(* : (Camlparagraph_symbol_t.camlparagraph_symbol, Item_symbol_t.item_symbol,
   Usagefile_symbol_t.usagefile_symbol,
   Contentfile_symbol_t.contentfile_symbol, Entity_symbol_t.entity_symbol,
   Category_symbol_t.category_symbol, Domain_symbol_t.domainset_symbol)
  Septuplet_t.septuplet *)
=
  Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary))
);;

let sep_cap = Septuplet_v.make_of_left_of_sextuplet sym_cap sex_ite;;

let cou_l = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 8 (
 cou_l 
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "vector"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_ess_equal_Est_tdot_Ess))]
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 9 (
sym_cal_l 
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_ess_equal_Est_tdot_Ess)]
);;

