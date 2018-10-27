open Make_test_v;;

testing "Entity_symbol_list_by_camlline_octtup_provider_v with
   Entity_symbol_list_by_camlline_octtup_provider_u_figure_symbol_triangle_isoceles_typing.ml";;

(* toplevel 
   #use "Entity_symbol_list_by_camlline_octtup_provider_u_figure_symbol_triangle_isoceles_typing.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation";;
let nam_cof = "type_alone";;
let nam_ite = "typing";;
let nam_ent = "triangle_isoceles";;

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

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let gss_ent = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol sym_ent;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ent gss_ent;;
let tag_ent = Tag_v.make sym_ent soi_ent;;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_of_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol;;
let sex_ite = Tag_v.make_n_store_son store gss_of_ite sym_ite idx_ite soi_usf;;

test_number 1 (
sex_ite
(* : Item_symbol_t.item_symbol Tag_t.tag *)
   =
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
  [24; 1; 1; 24; 7; 4])
);;   
   
let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;
 
test_number 2 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
    [1; 24; 1; 1; 24; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type,
    [2; 24; 1; 1; 24; 7; 4])]
);;

(* Camlparagraph : 1 Item_title "abbreviating_topson" *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 3 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
   [1; 24; 1; 1; 24; 7; 4])
);;

let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 4 (
sym_ent_l_sym_cal_dol
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
  Doublet_list_t.doublet_list *)
=  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        Entity_fictive_nullary_symbol_t.Empty)],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "typing")))]
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;
Generatorset_symbol_by_sole_index_provider_v.build_n_store_son_list Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol soi_cap sym_cal_l;;
let tag_cal_l = Tag_v.make_son_list sym_cal_l soi_cap;;

test_number 5 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
 =
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
    [1; 1; 24; 1; 1; 24; 7; 4])]
);;

(* Camlline : 1 Item_title "abbreviating_topson" *)

let oct_cal = List.nth tag_cal_l (idx_cal-1);;

let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 6 (
oct_cal
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
   [1; 1; 24; 1; 1; 24; 7; 4])
);;

test_number 7 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    Entity_fictive_nullary_symbol_t.Empty)]
);;

(* Camlparagraph : 2 Let_abbreviate_ingrandfather ------------------------------------------- *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 8 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type,
   [2; 24; 1; 1; 24; 7; 4])
);;

let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 9 (
sym_ent_l_sym_cal_dol
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
  Doublet_list_t.doublet_list *)
=
  [([Entity_symbol_t.Entity_proper_symbol
      (Entity_symbol_t.Entity_proper "triangle_isoceles")],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Type_est_equal));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
          "triangle_isoceles_equilateral"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Esl));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_right"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Esl));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_acute"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Esl));
   ([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
          "triangle_isoceles_obtuse"))],
    Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Esl));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;
let tag_cal_l = Tag_v.make_n_store_son_list store gss_of_cal sym_cal_l soi_cap;;

test_number 10 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
  =
  [(Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Type_est_equal),
    [1; 2; 24; 1; 1; 24; 7; 4]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Esl),
    [2; 2; 24; 1; 1; 24; 7; 4]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Esl),
    [3; 2; 24; 1; 1; 24; 7; 4]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Esl),
    [4; 2; 24; 1; 1; 24; 7; 4]);
   (Camlline_symbol_t.Camlline_uno_symbol
     (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
       Camlline_uno_camltype_symbol_t.Pipe_Esl),
    [5; 2; 24; 1; 1; 24; 7; 4]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Double_semicolon),
    [6; 2; 24; 1; 1; 24; 7; 4])]
);;

(* Camlline : 1 Let_ess_equal_Est_tdot_Ess *)

let oct_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 11 (
oct_cal
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Type_est_equal),
   [1; 2; 24; 1; 1; 24; 7; 4])
);;

let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 12 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle_isoceles")]
);;

(* Camlparagraph : 5 Let_abbreviate_ingrandfather ------------------------------------------- *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 13 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
   [1; 24; 1; 1; 24; 7; 4])
);;

let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;
let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;
let tag_cal_l = Tag_v.make_n_store_son_list store gss_of_cal sym_cal_l soi_cap;;

test_number 14 (
sym_ent_l_sym_cal_dol
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
  Doublet_list_t.doublet_list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        Entity_fictive_nullary_symbol_t.Empty)],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "typing")))]
);;

test_number 15 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
  =
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
    [1; 1; 24; 1; 1; 24; 7; 4])]
);;

(* Camlline : 1 Let_ess_equal_Est_tdot_Ess *)

let oct_cal = List.nth tag_cal_l (idx_cal-1);;

let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 16 (
oct_cal
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
   [1; 1; 24; 1; 1; 24; 7; 4])
);;

test_number 17 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
= 
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)]
);;

