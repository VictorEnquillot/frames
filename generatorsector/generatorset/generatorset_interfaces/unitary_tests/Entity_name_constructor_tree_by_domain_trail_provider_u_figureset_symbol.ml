open Make_test_v;;

testing "Entity_basename_constructor_tree_by_domain_trail_provider_v
   Entity_basename_constructor_tree_by_domain_trail_provider_u_figure_symbol.ml";;

(* toplevel 
   #use "Entity_basename_constructor_tree_by_domain_trail_provider_u_figure_symbol.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let tra_cat = Translating_trail_of_tag_v.category_trail_of_category_tag tag_cat;;

let nam_ent_t = Entity_basename_constructor_tree_by_domain_trail_provider_v.provide tra_cat;;
let nam_ent_top = Tree_v.root_off_tree nam_ent_t;;
let nam_ent_nod_l = Tree_v.node_list_off_tree nam_ent_t;;
let nam_ent_top_son_l = Tree_v.topson_node_list_off_tree nam_ent_t;;
let nam_ent_nol_son_l = Tree_v.noleaf_topson_node_list_off_tree nam_ent_t;;
let nam_ent_cur_l = Tree_v.noroot_notopson_noleaf_node_list_off_tree nam_ent_t;; 
let nam_ent_lea_l = Tree_v.leaf_node_list_off_tree nam_ent_t;;

let nam_ent_ful_l = nam_ent_top :: ( nam_ent_nol_son_l @ nam_ent_cur_l @ nam_ent_lea_l);;

test_number 1 (
Tree_v.is_complete nam_ent_t
);;

test_number 2 (
nam_ent_top 
(* : string *)
= 
"figure"
);;

test_number 3 (
nam_ent_nol_son_l 
(* : string list *)
=
 ["fragment"; "grouping"; "geometry"]
);;

test_number 4 (
nam_ent_cur_l 
(* : string list *)
=
["fragment_closed_fromid"; "fragment_head_fromid"; "fragment_buried_fromid";
 "fragment_leaf_fromid"; "grouping_fromid"; "geometry_forked";
 "geometry_forked_fromid"; "geometry_linear"; "geometry_linear_diatomic";
 "geometry_linear_overdiatomic"; "geometry_polymer"; "polypeptide_fromid";
 "geometry_polymer_fromid"]
);;

test_number 5 (
nam_ent_lea_l 
(* : string list *)
 =
["string"; "string"; "string"; "string"; "string"; "guanidine"; "string";
 "carbonmonoxide"; "dihydrogen"; "dinitrogen"; "dioxygen";
 "hydrogenchloride"; "hydrogenfluoride"; "hydrogensulfide"; "water";
 "propane"; "butane"; "nitromethane"; "string"; "string"]
);;

