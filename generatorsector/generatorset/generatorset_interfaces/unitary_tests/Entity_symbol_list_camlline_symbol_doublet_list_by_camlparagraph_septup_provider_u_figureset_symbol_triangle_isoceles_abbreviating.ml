open Make_test_v;;

testing "Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v with
   Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_u_figure_symbol_triangle_isoceles_abbreviating.ml";;

(* toplevel 
   #use "Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_u_figure_symbol_triangle_isoceles_abbreviating.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation";;
let nam_enp = "triangle_isoceles";;
let sym_enp = Entity_symbol_v.top_has_sometopsonleaf nam_enp;;
let nam_cof = "value_alone";;

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

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Item : Abbreviating_grandson *)

let nam_ite = "abbreviating_grandson";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_of_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol;;
let sex_ite = Tag_v.make_n_store_son store gss_of_ite sym_ite idx_ite soi_usf;;

test_number 1 (
sex_ite
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_t.Item_each_leaf_symbol
    Item_each_leaf_symbol_t.Abbreviating_grandson,
   [26; 1; 3; 3; 7; 4])
);;

let tag_iel = Item_tag_v.item_each_leaf_tag_off_item_tag sex_ite;;
let sym_enc_l = Entity_current_symbol_list_by_item_each_leaf_tag_provider_v.provide tag_iel;;

test_number 2 (
 sym_enc_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)]
);;

let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;
 
test_number 3 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title
         "abbreviating_grandson")),
    [1; 26; 1; 3; 3; 7; 4])]
);;

(* Camlparagraph : 1 Item_title "abbreviating_grandson" *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 4 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title
        "abbreviating_grandson")),
   [1; 26; 1; 3; 3; 7; 4])
);;

let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 5 (
sym_ent_l_sym_cal_dol
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
  Doublet_list_t.doublet_list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        Entity_fictive_nullary_symbol_t.Empty)],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_grandson")))]
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 6 (
sym_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
 =
 [Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_grandson"))]
);;

(* Item : Abbreviating_topson *)

let nam_ite = "abbreviating_topson";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_of_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol;;
let sex_ite = Tag_v.make_n_store_son store gss_of_ite sym_ite idx_ite soi_usf;;

test_number 7 (
sex_ite
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_t.Item_each_leaf_symbol
    Item_each_leaf_symbol_t.Abbreviating_topson,
   [27; 1; 3; 3; 7; 4])
);;

let sym_enc_tag_cap_dol = Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 8 (
 sym_enc_tag_cap_dol 
(* : (Entity_symbol_t.entity_symbol, Camlparagraph_tag_t.camlparagraph_tag)
  Doublet_list_t.doublet_list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty),
    (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
      (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
        (Camlparagraph_for_any_comment_symbol_t.Item_title
          "abbreviating_topson")),
     [1; 27; 1; 3; 3; 7; 4]));

   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary
         "triangle_isoceles_equilateral")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
          Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
     [2; 27; 1; 3; 3; 7; 4]));

   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_right")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
          Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
     [3; 27; 1; 3; 3; 7; 4]));
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_acute")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
          Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
     [4; 27; 1; 3; 3; 7; 4]));
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "triangle_isoceles_obtuse")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
          Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
     [5; 27; 1; 3; 3; 7; 4]))]
);;

let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;
 
test_number 9 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "abbreviating_topson")),
    [1; 27; 1; 3; 3; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
         Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
    [2; 27; 1; 3; 3; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
         Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
    [3; 27; 1; 3; 3; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
         Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
    [4; 27; 1; 3; 3; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
         Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
    [5; 27; 1; 3; 3; 7; 4])]
);;

(* Camlparagraph : 1 Item_title "abbreviating_topson" *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 10 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title
        "abbreviating_topson")),
   [1; 27; 1; 3; 3; 7; 4])
);;

let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 11 (
sym_ent_l_sym_cal_dol
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
  Doublet_list_t.doublet_list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        Entity_fictive_nullary_symbol_t.Empty)],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_topson")))]
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 12 (
sym_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
 =
 [Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_topson"))]
);;

(* Camlparagraph : 2 Let_abbreviate_topson_nullary ------------------------------------------- *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 13 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
        Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
   [2; 27; 1; 3; 3; 7; 4])
);;

(*
let sym_cap = Tag_v.symbol_off_tag sep_cap;;
let sym_cla = Camlparagraph_symbol_v.camlparagraph_for_symbol_let_abbreviate_symbol_off_camlparagraph_symbol sym_cap;;
let (sym_ent_top, sym_ent_son, sym_ent_cur) = Entity_current_symbol_trio_by_camlparagraph_septup_provider_v.provide sep_cap ;;
let cou_l = Couple_list_for_symbol_let_abbreviate_topson_nullary_v.make soi_cap sym_cla;;
*)
let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 14 (
sym_ent_l_sym_cal_dol
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
  Doublet_list_t.doublet_list *)
=
[([Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
           "triangle_isoceles_equilateral"));
   Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"))],
  Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_ess_equal_Est_tdot_Ess))]
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 15 (
sym_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
  =
  [Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_ess_equal_Est_tdot_Ess)]
);;

(* Camlparagraph : 5 Let_abbreviate_topson_nullary ------------------------------------------- *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 16 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
        Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_topson_nullary)),
   [5; 27; 1; 3; 3; 7; 4])
);;

let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 17 (
sym_ent_l_sym_cal_dol
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
  Doublet_list_t.doublet_list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        (Entity_fictive_nullary_symbol_t.Sonnullary
          "triangle_isoceles_obtuse"));
     Entity_symbol_t.Entity_proper_symbol
      (Entity_propert.Entity_proper_top_symbol
        (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"))],
    Camlline_symbol_t.Camlline_duo_symbol
     (Camlline_duo_symbol_t.Camlline_duo_function_symbol
       Camlline_duo_function_symbol_t.Let_ess_equal_Est_tdot_Ess))]
);;

let sym_cal_l = Camlline_symbol_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 18 (
sym_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
  =
  [Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Let_ess_equal_Est_tdot_Ess)]
);;

