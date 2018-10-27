open Make_test_v;;

testing "Camlparagraph_for_formula_let_function_proformula_v with
   Camlparagraph_for_formula_let_entity_fictive_nullary_proformula_u_figure_formula_triangle_isoceles_equilateral_making.ml";;

(* toplevel 
   #use "Camlparagraph_for_formula_let_entity_fictive_nullary_proformula_u_figure_formula_triangle_isoceles_equilateral_making.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_efn = "triangle_isoceles_equilateral";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_ite = "making";;

let store = Generatorset_symbol_by_sole_index_provider_v.store;;
let gss_of_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol;;

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

test_number 1 (
tag_efn 
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol Tag_t.tag *)
=
  (Entity_fictive_nullary_symbol_t.Nonsonnullary
    "triangle_isoceles_equilateral",
   [14; 2; 4])
);;

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

test_number 2 (
sex_ite 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
  =
  (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
   [22; 1; 3; 14; 2; 4])
);;

let sym_iat = Item_symbol_v.item_all_topsons_symbol_off_item_symbol sym_ite;;
let tag_iat = Tag_v.make sym_iat soi_ite;;
let sym_enc_l = Entity_current_symbol_list_by_item_all_topsons_sextup_provider_v.provide tag_iat;;

test_number 3 (
sym_enc_l
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty);
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_equilateral"))]
);;

let sym_enc_n_sym_cap_dol = Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_all_topsons_sextup_provider_v.provide tag_iat;;

test_number 4 (
sym_enc_n_sym_cap_dol
(* : (Entity_symbol_t.entity_symbol, Camlparagraph_tag_t.camlparagraph_tag)
  Doublet_list_t.doublet_list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty),
    (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
      (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
        (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
     [1; 22; 1; 3; 14; 2; 4]));
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Nonsonnullary
         "triangle_isoceles_equilateral")),
    (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
      (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
        (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_fictive_nullary_symbol
          Camlparagraph_for_formula_let_entity_fictive_nullary_symbol_t.Let_make_entity_fictive_nullary_for_formula)),
     [2; 22; 1; 3; 14; 2; 4]))]
);;

let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 5 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
    [1; 22; 1; 3; 14; 2; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
       (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_fictive_nullary_symbol
         Camlparagraph_for_formula_let_entity_fictive_nullary_symbol_t.Let_make_entity_fictive_nullary_for_formula)),
    [2; 22; 1; 3; 14; 2; 4])]
);;

(* Camlparagraph : 1 Item_title "making" Nonsense*)

(* Camlparagraph : 2 Let_make_nam_s_equal_function_for_symbol *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 6 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_fictive_nullary_symbol
        Camlparagraph_for_formula_let_entity_fictive_nullary_symbol_t.Let_make_entity_fictive_nullary_for_formula)),
   [2; 22; 1; 3; 14; 2; 4])
);;

let sym_cfn = Camlparagraph_symbol_v.let_make_entity_fictive_nullary_for_formula;;

test_number 7 (
sym_cfn 
(* : Camlparagraph_symbol_t.camlparagraph_symbol *)
 =
 Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
   (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
     (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_fictive_nullary_symbol
       Camlparagraph_for_formula_let_entity_fictive_nullary_symbol_t.Let_make_entity_fictive_nullary_for_formula))
);;

let cou_l = Couple_list_for_formula_let_make_entity_fictive_nullary_for_formula_v.make soi_cap;;

test_number 8 (
cou_l
(*  (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
 [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary
          "triangle_isoceles_equilateral"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle")],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_equal_zero));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_3d"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_increment_in));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_3d"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "point")],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_ast_equal_Est_vdot_el_in));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "point");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "figure")],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_dos_of_ste_equal_Dos_vdot_fun_in));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_3d"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "figure")],
    Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_let_tag_equal_Tools_fdos_vdot_stem_tag_make_n_store_ast);
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_increment_in));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "vector")],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_ast_equal_Est_vdot_el_in));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "vector");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "figure")],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_dos_of_ste_equal_Dos_vdot_fun_in));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "figure")],
    Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_let_tag_equal_Tools_fdos_vdot_stem_tag_make_n_store_ast);
   ([Entity_symbol_t.Entity_external_symbol
      (Entity_external_symbol_t.Entity_external_datastructure_symbol
        (Entity_external_datastructure_symbol_t.Tuple "doublet"));
     Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_3d"));
     Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector"))],
    Camlline_symbol_t.Camlline_datastructure_symbol
     (Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol
       (Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_make_symbol
         (Camlline_datastructure_function_make_symbol_t.Das_vdot_make_tag_a_tag_b
           "doublet"))));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;
