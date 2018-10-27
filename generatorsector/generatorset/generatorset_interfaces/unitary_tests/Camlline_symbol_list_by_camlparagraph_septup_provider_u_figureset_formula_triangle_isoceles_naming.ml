open Make_test_v;;

testing "Camlline_symbol_list_by_camlparagraph_septup_provider_v with
   Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_formula_triangle_isoceles_naming.ml";;

(* toplevel 
   #use "Camlline_symbol_list_by_camlparagraph_septup_provider_u_figure_formula_triangle_isoceles_naming.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_usf = "implementation";;
let nam_enp = "triangle_isoceles";;
let nam_cof = "value_alone";;
let nam_ite = "naming";;

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
let sym_ent = Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp;;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

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
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
= 
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
   [23; 1; 3; 5; 2; 4])
);;

let tag_iat = Tag_v.map_left Item_symbol_v.item_all_topsons_symbol_off_item_symbol sex_ite;;


let sym_enc_l = Entity_current_symbol_list_by_item_all_topsons_sextup_provider_v.provide tag_iat;;
test_number 2 (
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
(**
let sym_cap_l =  List.map (camlparagraph_symbol_of_category_of_item_of_entity sym_cat sym_iat) sym_enc_l;;
 
**)
let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 3 (
tag_cap_l
(*  : Camlparagraph_symbol_t.camlparagraph_symbol list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "naming")),
    [1; 23; 1; 3; 5; 2; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
     (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
       (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
         Camlparagraph_for_formula_let_entity_propert.Let_name_entity_proper_for_formula)),
    [2; 23; 1; 3; 5; 2; 4])]
);;

(* Camlparagraph : 2 Let_name_entity_proper_for_formula *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 4 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_entity_proper_symbol
        Camlparagraph_for_formula_let_entity_propert.Let_name_entity_proper_for_formula)),
   [2; 23; 1; 3; 5; 2; 4])
);;


let cou_l = Couple_list_for_formula_let_name_entity_proper_for_formula_v.make soi_cap;;

test_number 5 (
cou_l
=
  [([Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
          "triangle_isoceles"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle")],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Let_name_equal_function));
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
       Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
          "triangle_isoceles_equilateral"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as));
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
       Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_right"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as));
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
       Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_acute"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as));
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
       Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
          "triangle_isoceles_obtuse"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_function_symbol
       Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 6 (
sym_cal_l
(* : Entity_symbol_t.entity_symbol list list *) 
=
  [Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Let_name_equal_function);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Comment_s_comment);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Comment_s_comment);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Comment_s_comment);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Comment_s_comment);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Et_formula_tdot_Es_formula_space_for_as_arrow);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_function_symbol
      Camlline_uno_function_symbol_t.Space_Es_formula_vdot_name_for_as);
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Double_semicolon)]
);;

