open Make_test_v;;

testing "Entity_symbol_builder_subtree_by_entity_fictive_nullary_tritup_provider_v with
   Entity_symbol_builder_subtree_by_entity_fictive_nullary_tritup_provider_u_figure_symbol_triangle_isoceles.ml";;
(* toplevel 
   #use "Entity_symbol_builder_subtree_by_entity_fictive_nullary_tritup_provider_u_figure_symbol_triangle_isoceles.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_ent = "triangle_isoceles";;

let store = Generatorset_symbol_by_sole_index_provider_v.store;;

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

