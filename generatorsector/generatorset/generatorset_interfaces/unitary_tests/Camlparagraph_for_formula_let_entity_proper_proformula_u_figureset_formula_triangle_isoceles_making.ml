open Make_test_v;;

testing "Camlparagraph_for_formula_let_function_proformula_v with
   Camlparagraph_for_formula_let_entity_proper_proformula_u_figure_formula_triangle_isoceles_making.ml";;

(* toplevel 
   #use "Camlparagraph_for_formula_let_entity_proper_proformula_u_figure_formula_triangle_isoceles_making.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_enp = "triangle_isoceles";;
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

let sym_enp_l = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_enp = List.find (fun e -> Entity_symbol_v.string_off e = nam_enp) sym_enp_l;;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

test_number 1 (
tag_enp 
(* : Entity_propert.entity_proper_symbol Tag_t.tag *)
=
(Entity_propert.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"),
 [3; 2; 4])
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
   [22; 1; 3; 3; 2; 4])
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
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"))]
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
     [1; 22; 1; 3; 3; 2; 4]));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
       (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles")),
    (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
      (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
        (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
          Camlparagraph_for_formula_let_entity_propert.Let_make_entity_proper_for_formula)),
     [2; 22; 1; 3; 3; 2; 4]))]
);;

let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 5 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "making")),
    [1; 22; 1; 3; 3; 2; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
       (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
         Camlparagraph_for_formula_let_entity_propert.Let_make_entity_proper_for_formula)),
    [2; 22; 1; 3; 3; 2; 4])]
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
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
        Camlparagraph_for_formula_let_entity_propert.Let_make_entity_proper_for_formula)),
   [2; 22; 1; 3; 3; 2; 4])
);;

let sym_cfn = Camlparagraph_symbol_v.let_make_entity_proper_for_formula;;

test_number 7 (
sym_cfn 
(* : Camlparagraph_symbol_t.camlparagraph_symbol *)
 =
 Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
   (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
     (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
       Camlparagraph_for_formula_let_entity_propert.Let_make_entity_proper_for_formula))
);;
(*
let sym_ent_top = (* Ex.: Triangle_isoceles *)
    Entity_current_symbol_uno_by_camlparagraph_septup_provider_v.provide
      sep_cap ;;
let gss_ent_top = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol sym_ent_top;;
let gss_pre = Generatorset_symbol_v.is_entity_properoff_generatorset_symbol;;

let gss = Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_of_generatorset_symbol_predicate_off_sole_index gss_pre soi_cap;;
*)
let cou_l = Couple_list_for_formula_let_make_entity_proper_for_formula_v.make soi_cap;;

test_number 8 (
cou_l
(*  (Entity_symbol_t.entity_symbol list * Camlline_symbol_t.camlline_symbol)
  list *)
=
  [([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
          "triangle_isoceles"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle")],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_make_sym_as_soi_at_equal));
   ([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
          "triangle_isoceles"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_match_sym_at_with));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
          "triangle_isoceles_equilateral"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
          "triangle_isoceles_equilateral"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
          "triangle_isoceles"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
          "triangle_isoceles_equilateral"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
          "triangle_isoceles"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle")],
    Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_space_el_formula_vdot_make_sym_as_soi_at);
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_right"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_right"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
          "triangle_isoceles"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_right"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
          "triangle_isoceles"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle")],
    Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_space_el_formula_vdot_make_sym_as_soi_at);
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_acute"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_acute"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
          "triangle_isoceles"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_acute"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
          "triangle_isoceles"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle")],
    Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_space_el_formula_vdot_make_sym_as_soi_at);
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
          "triangle_isoceles_obtuse"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Comment_s_comment));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
          "triangle_isoceles_obtuse"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
          "triangle_isoceles"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_arrow));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
          "triangle_isoceles_obtuse"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
          "triangle_isoceles"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle")],
    Camlline_symbol_t.Camlline_trio_symbol
     Camlline_trio_symbol_t.Space_space_el_formula_vdot_make_sym_as_soi_at);
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;
