open Make_test_v;;

testing "Entity_current_symbol_list_by_item_sextup_provider_v with
   Entity_current_symbol_list_by_item_sextup_provider_u_figure_tag_triangle_isoceles_typing.ml";; 

(* toplevel 
   #use "Entity_current_symbol_list_by_item_sextup_provider_u_figure_tag_triangle_isoceles_typing.ml";; 

*)

let select_path_of_head_name nam_ent pat_sym_ent_l =
  List.filter (fun p -> Entity_symbol_v.string_off (List.hd p) = nam_ent) pat_sym_ent_l
;;

let nam_dos = "figure";;
let nam_cat = "tag";;
let nam_enp = "triangle_isoceles";;
let nam_usf = "implementation";;
let nam_cof = "type_alone";;
let nam_ite = "typing";;

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
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing,
   [24; 1; 1; 3; 8; 4])
);;

let sym_enc_l = Entity_current_symbol_list_by_item_sextup_provider_v.provide sex_ite;;

test_number 2 (
sym_enc_l
(* : Entity_symbol_t.entity_symbol list list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty);
   Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"))]
);;

