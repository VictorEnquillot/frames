open Make_test_v;;

testing "Entity_symbol_list_by_camlline_octtup_provider_v with
   Entity_symbol_list_by_camlline_octtup_provider_u_figure_symbol_figure_abbreviating_grandson.ml";;

(* toplevel 
   #use "Entity_symbol_list_by_camlline_octtup_provider_u_figure_symbol_figure_abbreviating_grandson.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_enp = "figure";;
let nam_ite = "abbreviating_grandson";;

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

let sym_ite = Item_symbol_v.make nam_ite;;
let gss_of_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol;;
let sex_ite = Tag_v.make_n_store_son store gss_of_ite sym_ite idx_ite soi_usf;;


test_number 1 (
sex_ite 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_t.Item_each_leaf_symbol
    Item_each_leaf_symbol_t.Abbreviating_grandson,
   [26; 1; 3; 1; 7; 4])
);;

let tag_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 2 (
List_v.sublist_of_int_of_int_of_list 0 10 tag_cap_l
(* : Camlline_symbol_t.camlline_symbol list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
   (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
     (Camlparagraph_for_any_comment_symbol_t.Item_title
       "abbreviating_grandson")),
  [1; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [2; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [3; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [4; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [5; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [6; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [7; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [8; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [9; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [10; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [11; 26; 1; 3; 1; 7; 4])]
);;

test_number 3 (
List_v.sublist_of_int_of_int_of_list 11 50 tag_cap_l
(* : Camlline_symbol_t.camlline_symbol list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [12; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [13; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [14; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [15; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [16; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [17; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [18; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [19; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [20; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [21; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [22; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [23; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [24; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [25; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [26; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [27; 26; 1; 3; 1; 7; 4]);
 (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_abbreviate_symbol
       Camlparagraph_for_symbol_let_abbreviate_symbol_t.Let_abbreviate_grandson_nullary)),
  [28; 26; 1; 3; 1; 7; 4])]
);;

(* Camlparagraph : Item_title "abbreviating_grandson" *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 4 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title
        "abbreviating_grandson")),
   [1; 26; 1; 3; 1; 7; 4])
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

let sym_cal_l = Doublet_list_v.right_list_off_doublet_list sym_ent_l_sym_cal_dol;;

test_number 6 (
sym_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_grandson"))]
);;

(* Camlline : 1 Item_title "abbreviating_grandson" *)

let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let gss_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal gss_cal;;

let oct_cal = Tag_v.make sym_cal soi_cal;;

test_number 7 (
oct_cal
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_grandson")),
   [1; 1; 26; 1; 3; 1; 7; 4])
);;

let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 8 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)]
);;

(* Camlparagraph : Let_abbreviate_ingrandfather *)

let sep_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 9 (
sep_cap
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag *)
=
  (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title
        "abbreviating_grandson")),
   [1; 26; 1; 3; 1; 7; 4])
);;

let sym_ent_l_sym_cal_dol = Entity_symbol_list_camlline_symbol_doublet_list_by_camlparagraph_septup_provider_v.provide sep_cap;;

test_number 10 (
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

let sym_cal_l = Doublet_list_v.right_list_off_doublet_list sym_ent_l_sym_cal_dol;;

test_number 11 (
sym_cal_l
(* : Camlline_symbol_t.camlline_symbol list *)
= 
  [Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_grandson"))]
);;

(* Camlline : 1 Let_esl_equal_est_of_ess_space_Ess_vdot_esl *)

let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let gss_cal = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol sym_cal;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cal gss_cal;;

let oct_cal = Tag_v.make sym_cal soi_cal;;
let sym_ent_l = Entity_symbol_list_by_camlline_octtup_provider_v.provide oct_cal;;

test_number 12 (
oct_cal
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      (Camlline_constant_pervasive_symbol_t.Item_title "abbreviating_grandson")),
   [1; 1; 26; 1; 3; 1; 7; 4])
);;

test_number 13 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)]
);;

