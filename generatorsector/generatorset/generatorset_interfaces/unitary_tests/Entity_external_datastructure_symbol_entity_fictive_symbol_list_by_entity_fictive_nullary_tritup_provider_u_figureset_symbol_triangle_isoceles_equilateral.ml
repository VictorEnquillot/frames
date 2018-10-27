open Make_test_v;;

testing "Entity_external_datastructure_symbol_entity_fictive_symbol_list_by_entity_fictive_nullary_tritup_provider_v with
   Entity_external_datastructure_symbol_entity_fictive_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure_symbol_triangle_isoceles_equilateral.ml";;

(* toplevel 
   #use "Entity_external_datastructure_symbol_entity_fictive_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure_symbol_triangle_isoceles_equilateral.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation";;
let nam_cof = "type_alone";;
let nam_ite = "typing";;
let nam_efn = "triangle_isoceles_equilateral";;

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

let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;
 
test_number 1 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
    [1; 25; 1; 1; 14; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type,
    [2; 25; 1; 1; 14; 7; 4])]
);;

(* Camlparagraph : 1 Item_title "typing" *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 2 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title "typing")),
   [1; 25; 1; 1; 14; 7; 4])
);;

let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 3 (
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

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 4 (
sym_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
 =
   [Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "typing"))]
);;

(* Camlline : 1 Item_title "typing" *)

let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let gss_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal gss_cal;;

let oct_cal = Tag_v.make sym_cal soi_cal;;

test_number 5 (
oct_cal
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
 [1; 1; 25; 1; 1; 14; 7; 4])
);;

let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 6 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)]
);;

(* Camlparagraph : 2 camlparagraph_for_symbol_type *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 7 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type,
   [2; 25; 1; 1; 14; 7; 4])
);;

let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

Usagefile_symbol_t.Implementationtest_number 8 (
sym_ent_l_sym_cal_dol
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
  Doublet_list_t.doublet_list *)
=
[([Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"))],
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
      (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_obtuse"))],
  Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl));
 ([],
  Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon))]
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 8 (
sym_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
  =
  [Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Type_est_equal);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Pipe_Esl);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Pipe_Esl);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Pipe_Esl);
   Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Pipe_Esl);
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Double_semicolon)]
);;

(* Camlline : 1 Type_est_equal *)

let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let gss_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal gss_cal;;

let oct_cal = Tag_v.make sym_cal soi_cal;;

test_number 9 (
oct_cal
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_uno_symbol
    (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Type_est_equal),
   [1; 2; 25; 1; 1; 14; 7; 4])
);;

let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 10 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"))]
);;

(* Camlline : 2 Pipe_Esl *)

let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let gss_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal gss_cal;;

let oct_cal = Tag_v.make sym_cal soi_cal;;

test_number 11 (
oct_cal
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
      Camlline_uno_camltype_symbol_t.Pipe_Esl),
 [2; 2; 25; 1; 1; 14; 7; 4])
);;

let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 12 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Sonnullary
        "triangle_isoceles_equilateral"))]
);;

(* Entity_fictive_nullary : Triangle_isoceles_equilateral *)

let sym_ent = List.nth sym_ent_l (idx_efn-1);;
let sym_efn = Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol sym_ent;;
let gss_efn = Generatorset_symbol_v.generatorset_symbol_of_entity_fictive_nullary_symbol sym_efn;;
Generatorset_symbol_by_sole_index_provider_v.store soi_efn gss_efn;;

let tag_efn = Tag_v.make sym_efn soi_efn;;

test_number 13 (
tag_efn
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol Tag_t.tag *)
=
  (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_equilateral",
   [1; 2; 2; 25; 1; 1; 14; 7; 4])
);;

let sym_exd_n_sym_enf_l = Entity_external_datastructure_symbol_entity_fictive_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tag_efn;;

test_number 14 (
sym_exd_n_sym_enf_l 
(* : (Entity_external_datastructure_symbol_t.entity_external_datastructure_symbol,
   Entity_fictive_symbol_t.entity_fictive_symbol list)
  Doublet_t.doublet *)
=
  (Entity_external_datastructure_symbol_t.Doublet "",
   [Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Nonsonnullary "point_3d");
    Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Nonsonnullary "vector")])
);;

