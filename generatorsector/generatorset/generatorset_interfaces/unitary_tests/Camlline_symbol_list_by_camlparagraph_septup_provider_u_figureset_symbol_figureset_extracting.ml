open Make_test_v;;

testing "Camlline_symbol_list_by_camlparagraph_septup_provider_v with
   Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_symbol_figure_extracting.ml";;

(* toplevel 
   #use "Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_symbol_figure_extracting.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_enp = "figure";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_ite = "extracting_grandson";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_enp) sym_ent_l;;
let sym_cof = Contentfile_symbol_v.make nam_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;

let sym_ite = Item_symbol_v.make nam_ite;;
let sex_ite = (sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

test_number 1 (
sex_ite 
(* :  Item_symbol_t.item_symbol * Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
=
  (Item_symbol_t.Item_each_grandson_notleaf_symbol
    Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_ign = Item_symbol_v.item_each_grandson_notleaf_symbol_off_item_symbol sym_ite;;
let sex_ign = (sym_ign, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;
let sym_enc_n_sep_cap_dol = Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_each_grandson_notleaf_sextup_provider_v.provide sex_ign;;

test_number 2 (
sym_enc_n_sep_cap_dol
(* : 
   (Entity_symbol_t.entity_symbol,
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
          "extracting_grandson")),
     Item_symbol_t.Item_each_grandson_notleaf_symbol
      Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "triangle_isoceles"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)),
     Item_symbol_t.Item_each_grandson_notleaf_symbol
      Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "triangle_scalene"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)),
     Item_symbol_t.Item_each_grandson_notleaf_symbol
      Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_cartesian"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)),
     Item_symbol_t.Item_each_grandson_notleaf_symbol
      Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_cylindrical"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)),
     Item_symbol_t.Item_each_grandson_notleaf_symbol
      Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_polar"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)),
     Item_symbol_t.Item_each_grandson_notleaf_symbol
      Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_spherical"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol)),
     Item_symbol_t.Item_each_grandson_notleaf_symbol
      Item_each_grandson_notleaf_symbol_t.Extracting_grandson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure))]
);;

let sym_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 3 (
sym_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=
  [Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title
        "extracting_grandson"));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol))]
);;

(* Camlparagraph : Let_top_symbol_of_grandson_notleaf_symbol *)

let sym_cap = List.nth sym_cap_l (idx_cap-1);;

test_number 4 (
sym_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol *)
=
  Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
       Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol))
);;

let sym_cla = Camlparagraph_symbol_v.camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_symbol sym_cap;;
let sep_cla = (sym_cla, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

let cou_l = Couple_list_for_symbol_let_argument_grandson_notleaf_symbol_off_top_symbol_v.make sep_cla;;

test_number 5 (
 cou_l 
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
 [([Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle_isoceles");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_ec_any_off_et_any_space_ac_at_equal));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_son_symbol
        (Entity_proper_son_symbol_t.Notonlyson "triangle"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_ass_equal_ess_off_est_space_ast_in));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle_isoceles");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_son_symbol
        (Entity_proper_son_symbol_t.Notonlyson "triangle"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Ass_vdot_esc_off_ess_space_ass));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

let sep_cap = (sym_cap, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

test_number 6 (
cou_l = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 7 (
sym_cal_l 
(* : Camlline_symbol_t.camlline_symbol list *)
= 
  [Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_ec_any_off_et_any_space_ac_at_equal);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_ass_equal_ess_off_est_space_ast_in);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Ass_vdot_esc_off_ess_space_ass);
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Double_semicolon)]
);;

(* Extracting_topson *)

let nam_ite = "extracting_topson";;
let sym_ite = Item_symbol_v.make nam_ite;;
let sex_ite = (sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

test_number 8 (
sex_ite 
(* : Item_symbol_t.item_symbol * Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
=
  (Item_symbol_t.Item_each_topson_notleaf_symbol
    Item_each_topson_notleaf_symbol_t.Extracting_topson,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_itn = Item_symbol_v.item_each_topson_notleaf_symbol_off_item_symbol sym_ite;;
let sex_itn = (sym_itn, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;
let sym_enc_n_sep_cap_dol = Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_each_topson_notleaf_sextup_provider_v.provide sex_itn;;

test_number 9 (
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
          "extracting_topson")),
     Item_symbol_t.Item_each_topson_notleaf_symbol
      Item_each_topson_notleaf_symbol_t.Extracting_topson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "triangle")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
          Camlparagraph_for_symbol_let_match_symbol_t.Let_topson_notleaf_symbol_off_top_symbol)),
     Item_symbol_t.Item_each_topson_notleaf_symbol
      Item_each_topson_notleaf_symbol_t.Extracting_topson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "coordinate")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
          Camlparagraph_for_symbol_let_match_symbol_t.Let_topson_notleaf_symbol_off_top_symbol)),
     Item_symbol_t.Item_each_topson_notleaf_symbol
      Item_each_topson_notleaf_symbol_t.Extracting_topson,
     Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
     Category_symbol_t.Symbol, Domain_symbol_t.Figure))]
);;

let sym_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 10 (
sym_cap_l
(* : (Camlparagraph_symbol_t.camlparagraph_symbol list *)
=
  [Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title "extracting_topson"));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
        Camlparagraph_for_symbol_let_match_symbol_t.Let_topson_notleaf_symbol_off_top_symbol));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
        Camlparagraph_for_symbol_let_match_symbol_t.Let_topson_notleaf_symbol_off_top_symbol))]
);;

(* Camlparagraph : Let_top_symbol_of_topson_notleaf_symbol *)

let sym_cap = List.nth sym_cap_l (idx_cap-1);;

test_number 11 (
sym_cap
(*  (Camlparagraph_symbol_t.camlparagraph_symbol, Item_symbol_t.item_symbol,
   Usagefile_symbol_t.usagefile_symbol,
   Contentfile_symbol_t.contentfile_symbol, Entity_symbol_t.entity_symbol,
   Category_symbol_t.category_symbol, Domain_symbol_t.domainset_symbol)
  Septuplet_t.septuplet *)
=
  Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
       Camlparagraph_for_symbol_let_match_symbol_t.Let_topson_notleaf_symbol_off_top_symbol))
);;

let sym_enc_n_tag_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 12 (
sym_enc_n_tag_cal_dol
=
   [([Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle_isoceles");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_ec_any_off_et_any_space_ac_at_equal));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_son_symbol
        (Entity_proper_son_symbol_t.Notonlyson "triangle"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_ass_equal_ess_off_est_space_ast_in));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle_isoceles");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_son_symbol
        (Entity_proper_son_symbol_t.Notonlyson "triangle"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Ass_vdot_esc_off_ess_space_ass));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 13 (
sym_cal_l 
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_ec_any_off_et_any_space_ac_at_equal);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_ass_equal_ess_off_est_space_ast_in);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Ass_vdot_esc_off_ess_space_ass);
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Double_semicolon)]
);;

