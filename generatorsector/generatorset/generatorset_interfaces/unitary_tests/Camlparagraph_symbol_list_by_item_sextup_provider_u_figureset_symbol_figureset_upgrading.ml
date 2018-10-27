open Make_test_v;;

testing "Camlparagraph_symbol_list_by_item_sextup_provider_v with
   Camlparagraph_septup_list_by_item_sextup_provider_u_figure_symbol_figure_upgrading.ml";;

(* toplevel 
   #use "Camlparagraph_septup_list_by_item_sextup_provider_u_figure_symbol_figure_upgrading.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_enp = "figure";;
let nam_usf = "implementation";;
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

(* Upgrading_grandson *)

let nam_ite = "upgrading_grandson";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_of_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol;;
let sex_ite = Tag_v.make_n_store_son store gss_of_ite sym_ite idx_ite soi_usf;;


test_number 1 (
sex_ite 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_t.Item_each_grandson_notleaf_symbol
    Item_each_grandson_notleaf_symbol_t.Upgrading_grandson,
   [17; 1; 3; 1; 7; 4])
);;

let tag_ign = Item_tag_v.item_each_grandson_notleaf_tag_off_item_tag sex_ite;;
let sym_enc_n_tag_cap_dol = Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_each_grandson_notleaf_sextup_provider_v.provide tag_ign;;

test_number 2 (
sym_enc_n_tag_cap_dol
(* : (Entity_symbol_t.entity_symbol, Camlparagraph_tag_t.camlparagraph_tag)
  Doublet_list_t.doublet_list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty),
    (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
      (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
        (Camlparagraph_for_any_comment_symbol_t.Item_title
          "upgrading_grandson")),
     [1; 17; 1; 3; 1; 7; 4]));

   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "triangle_isoceles"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
     [2; 17; 1; 3; 1; 7; 4]));

   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "triangle_scalene"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
     [3; 17; 1; 3; 1; 7; 4]));

   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_3d"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
     [4; 17; 1; 3; 1; 7; 4]));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_cartesian_3d"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
     [5; 17; 1; 3; 1; 7; 4]));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_cylindrical"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
     [6; 17; 1; 3; 1; 7; 4]));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_spherical"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
     [7; 17; 1; 3; 1; 7; 4]));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_2d"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
     [8; 17; 1; 3; 1; 7; 4]));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_cartesian_2d"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
     [9; 17; 1; 3; 1; 7; 4]));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "coordinate_polar"),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
     [10; 17; 1; 3; 1; 7; 4]))]
);;

let sym_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 3 (
sym_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title
         "upgrading_grandson")),
    [1; 17; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
    [2; 17; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
    [3; 17; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
    [4; 17; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
    [5; 17; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
    [6; 17; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
    [7; 17; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
    [8; 17; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
    [9; 17; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol)),
    [10; 17; 1; 3; 1; 7; 4])]
);;

(* Upgrading_topson *)

let nam_ite = "upgrading_topson";;
let sym_ite = Item_symbol_v.make nam_ite;;
let gss_of_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol;;
let sex_ite = Tag_v.make_n_store_son store gss_of_ite sym_ite idx_ite soi_usf;;

test_number 4 (
sex_ite 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
  (Item_symbol_t.Item_each_topson_notleaf_symbol
    Item_each_topson_notleaf_symbol_t.Upgrading_topson,
   [21; 1; 3; 1; 7; 4])
);;

let tag_itn = Item_tag_v.item_each_topson_notleaf_tag_off_item_tag sex_ite;;
let sym_enc_n_tag_cap_dol = Entity_current_symbol_camlparagraph_septup_doublet_list_by_item_each_topson_notleaf_sextup_provider_v.provide tag_itn;;

test_number 5 (
sym_enc_n_tag_cap_dol
(* : (Entity_symbol_t.entity_symbol, Camlparagraph_tag_t.camlparagraph_tag)
  Doublet_list_t.doublet_list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       Entity_fictive_nullary_symbol_t.Empty),
    (Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
      (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
        (Camlparagraph_for_any_comment_symbol_t.Item_title "upgrading_topson")),
     [1; 21; 1; 3; 1; 7; 4]));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "triangle")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)),
     [2; 21; 1; 3; 1; 7; 4]));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "vector")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)),
     [3; 21; 1; 3; 1; 7; 4]));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "point")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)),
     [4; 21; 1; 3; 1; 7; 4]));
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "coordinate")),
    (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
      (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
          Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)),
     [5; 21; 1; 3; 1; 7; 4]))]
);;

let sym_cap_l = Camlparagraph_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 6 (
sym_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=   [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "upgrading_topson")),
    [1; 21; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)),
    [2; 21; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)),
    [3; 21; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)),
    [4; 21; 1; 3; 1; 7; 4]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol)),
    [5; 21; 1; 3; 1; 7; 4])]
);;
