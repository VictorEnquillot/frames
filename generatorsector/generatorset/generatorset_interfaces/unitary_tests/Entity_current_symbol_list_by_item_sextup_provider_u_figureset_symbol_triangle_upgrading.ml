open Make_test_v;;

testing "Entity_current_symbol_list_by_item_sextup_provider_v with
   Entity_current_symbol_list_by_item_sextup_provider_u_figure_symbol_triangle_upgrading.ml";; 

(* toplevel 
   #use "Entity_current_symbol_list_by_item_sextup_provider_u_figure_symbol_triangle_upgrading.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_enp = "triangle";;
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
 [17; 1; 3; 2; 7; 4])
);;

let sym_enc_l = Entity_current_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 2 (
sym_enc_l
(* : Entity_symbol_t.entity_symbol list list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty)]
);;

let sym_ign = Item_symbol_v.item_each_grandson_notleaf_symbol_off_item_symbol sym_ite;; 
let tag_eng = Tag_v.make sym_ign soi_ite;;

test_number 3 (
sym_enc_l = Entity_current_symbol_list_by_item_each_grandson_notleaf_sextup_provider_v.provide tag_eng
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
   [21; 1; 3; 2; 7; 4])
);;

let sym_enc_l = Entity_current_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 5 (
sym_enc_l
(* : Entity_symbol_t.entity_symbol list list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty);
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "triangle_isoceles"));
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_son_symbol
      (Entity_proper_son_symbol_t.Notonlyson "triangle_scalene"))]
);;

let sym_itn = Item_symbol_v.item_each_topson_notleaf_symbol_off_item_symbol sym_ite;; 
let tag_itn = Tag_v.make sym_itn soi_ite;;

test_number 6 (
sym_enc_l = Entity_current_symbol_list_by_item_each_topson_notleaf_sextup_provider_v.provide tag_itn
);;

