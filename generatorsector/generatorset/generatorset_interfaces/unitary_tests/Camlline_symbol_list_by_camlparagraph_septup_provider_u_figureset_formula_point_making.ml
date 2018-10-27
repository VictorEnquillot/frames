open Make_test_v;;

testing "Camlline_symbol_list_by_camlparagraph_septup_provider_v with
   Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_formula_point_making.ml";;

(* toplevel 
   #use "Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_formula_point_making.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_usf = "implementation";;
let nam_efn = "point";;
let nam_cof = "value_alone";;
let nam_ite = "making";;

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
  (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
   [22; 1; 3; 6; 2; 4])
);;

let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 2 (
tag_cap_l 
(* : Camlparagraph_tag_t.camlparagraph_tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
    [1; 22; 1; 3; 6; 2; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
       (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_fictive_nullary_symbol
         Camlparagraph_for_formula_let_entity_fictive_nullary_symbol_t.Let_make_entity_fictive_nullary_for_formula)),
    [2; 22; 1; 3; 6; 2; 4])]
);;

(* Camlparagraph : 2 camlparagraph_for_symbol_type *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 3 (
sep_cap
(* : Camlparagraph_tag_t.camlparagraph_tag  *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_fictive_nullary_symbol
        Camlparagraph_for_formula_let_entity_fictive_nullary_symbol_t.Let_make_entity_fictive_nullary_for_formula)),
   [2; 22; 1; 3; 6; 2; 4])
);;

let dol = Couple_list_for_formula_let_make_entity_fictive_nullary_for_formula_v.make soi_cap;;

test_number 4 (
 dol 
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "point"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "point")],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_equal_zero));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "x"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_increment_in));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "x"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "coordinate_cartesian_2d")],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_ast_equal_Est_vdot_el_in));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "coordinate_cartesian_2d");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "figure")],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_dos_of_ste_equal_Dos_vdot_fun_in));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "x"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "point");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "figure")],
    Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_let_tag_equal_Tools_fdos_vdot_stem_tag_make_n_store_ast);
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_count_increment_in));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "coordinate_cartesian_2d")],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_ast_equal_Est_vdot_el_in));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "coordinate_cartesian_2d");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "figure")],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Space_let_dos_of_ste_equal_Dos_vdot_fun_in));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "point");
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "figure")],
    Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_let_tag_equal_Tools_fdos_vdot_stem_tag_make_n_store_ast);
   ([Entity_symbol_t.Entity_external_symbol
      (Entity_external_symbol_t.Entity_external_datastructure_symbol
        (Entity_external_datastructure_symbol_t.Tuple "doublet"));
     Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "x"));
     Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Nonsonnullary "y_2d"))],
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

let sym_cap = Tag_v.symbol_off_tag sep_cap;;
let sym_cpf = Camlparagraph_symbol_v.camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cap;;

let dol_2 = Entity_symbol_list_camlline_symbol_doublet_list_for_camlparagraph_for_formula_v.translate_and_couple sym_cpf soi_cap;;

test_number 5 (
 dol_2 
(* : (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
dol
);;

let sym_cap = Tag_v.symbol_off_tag sep_cap;;
let sym_usf = Camlparagraph_tag_v.usagefile_symbol_off_camlparagraph_tag sep_cap;;
let sym_cpf = Camlparagraph_symbol_v.camlparagraph_for_formula_symbol_off_camlparagraph_symbol sym_cap;;
let sym_cfl = Camlparagraph_symbol_v.camlparagraph_for_formula_let_symbol_off_camlparagraph_symbol sym_cap;;

let sym_cap = Camlparagraph_symbol_v.let_make_entity_fictive_nullary_for_formula;;

let gss_pre = Generatorset_symbol_v.is_entity_fictive_nullary_symbol_off_generatorset_symbol;;
let (soi_ent_top, gss_ent_top) = Generatorset_symbol_by_sole_index_provider_v.sole_index_n_generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index gss_pre soi_cap;;
let sym_efn_top = Generatorset_symbol_v.entity_fictive_nullary_symbol_off_generatorset_symbol gss_ent_top;;
let tag_efn_top = Tag_v.make sym_efn_top soi_ent_top;;

let cou_l = Couple_list_for_formula_let_make_entity_fictive_nullary_for_formula_v.make soi_cap;;

let dol_3 = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;
 
test_number 6 (
dol_3
=
dol
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 7 (
sym_cal_l
(* : Entity_symbol_t.entity_symbol list list *) 
=
  [Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal);
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Space_let_count_equal_zero);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Comment_s_comment);
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Space_let_count_increment_in);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Space_let_ast_equal_Est_vdot_el_in);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Space_let_dos_of_ste_equal_Dos_vdot_fun_in);
   Camlline_symbol_t.Camlline_trio_symbol
    Camlline_trio_symbol_t.Space_let_tag_equal_Tools_fdos_vdot_stem_tag_make_n_store_ast;
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Comment_s_comment);
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Space_let_count_increment_in);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Space_let_ast_equal_Est_vdot_el_in);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Space_let_dos_of_ste_equal_Dos_vdot_fun_in);
   Camlline_symbol_t.Camlline_trio_symbol
    Camlline_trio_symbol_t.Space_let_tag_equal_Tools_fdos_vdot_stem_tag_make_n_store_ast;
   Camlline_symbol_t.Camlline_datastructure_symbol
    (Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol
      (Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_make_symbol
        (Camlline_datastructure_function_make_symbol_t.Das_vdot_make_tag_a_tag_b
          "doublet")));
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Double_semicolon)]
);;

