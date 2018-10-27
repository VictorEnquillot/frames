open Make_test_v;;

testing "Entity_symbol_list_by_camlline_octtup_provider_v with
   Entity_symbol_list_by_camlline_octtup_provider_u_figure_symbol_figure_abbreviating.ml";;

(* toplevel 
   #use "Entity_symbol_list_by_camlline_octtup_provider_u_figure_symbol_figure_abbreviating.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_enp = "figure";;
let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

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

(* Item : Abbreviating_topson *)

let nam_ite = "abbreviating_topson";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite gss_ite;;
let sex_ite = Tag_v.make sym_ite soi_ite;;

let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 1 (
sex_ite 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_t.Item_each_leaf_symbol
    Item_each_leaf_symbol_t.Abbreviating_topson,
   [27; 1; 3; 383488616; 7; 4])
);;

test_number 2 (
tag_cap_l
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title
         "abbreviating_topson")),
    [1; 27; 1; 3; 383488616; 7; 4])]
);;

(* Camlparagraph : camlparagraph_for_symbol_type *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 3 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title
        "abbreviating_topson")),
   [1; 27; 1; 3; 383488616; 7; 4])
);;

let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;
let sym_cal_l = Doublet_list_v.right_list_off_doublet_list sym_ent_l_sym_cal_dol;;

test_number 4 (
sym_ent_l_sym_cal_dol 
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
  Doublet_list_t.doublet_list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        Entity_fictive_nullary_symbol_t.Empty)],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_topson")));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Empty_line))]
);;

test_number 5 (
sym_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_topson"));
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Empty_line)]
);;

(* Camlline : 1 Item_title "abbreviating_topson" *)

let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let gss_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal gss_cal;;

let oct_cal = Tag_v.make sym_cal soi_cal;;
let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 6 (
oct_cal
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_topson")),
   [1; 1; 27; 1; 3; 383488616; 7; 4])
);;

test_number 7 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)]
);;

(* Camlparagraph : Let_abbreviate_ingrandfather *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 8 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title
        "abbreviating_topson")),
   [1; 27; 1; 3; 383488616; 7; 4])
);;

let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;
let sym_cal_l = Doublet_list_v.right_list_off_doublet_list sym_ent_l_sym_cal_dol;;

test_number 9 (
sym_ent_l_sym_cal_dol 
(* : (Entity_symbol_t.entity_symbol list, Camlline_symbol_t.camlline_symbol)
  Doublet_list_t.doublet_list *)
=
  [([Entity_symbol_t.Entity_fictive_symbol
      (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
        Entity_fictive_nullary_symbol_t.Empty)],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_topson")));
   ([],
    Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
       Camlline_constant_pervasive_symbol_t.Empty_line))]
);;

test_number 10 (
sym_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
= 
  [Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_topson"));
   Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Empty_line)]
);;

(* Camlline : 1 Let_esl_equal_est_of_ess_space_Ess_vdot_esl *)

let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let gss_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal gss_cal;;

let oct_cal = Tag_v.make sym_cal soi_cal;;
let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 11 (
oct_cal
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_topson")),
   [1; 1; 27; 1; 3; 383488616; 7; 4])
);;

test_number 12 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)]
);;

