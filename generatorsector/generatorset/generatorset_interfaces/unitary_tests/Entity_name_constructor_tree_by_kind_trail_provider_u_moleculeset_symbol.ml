open Make_test_v;;

testing "Entity_basename_constructor_tree_by_kind_trail_provider_v
   Entity_basename_constructor_tree_by_kind_trail_provider_u_moleculeset_symbol.ml";;

(* toplevel 
   #use "Entity_basename_constructor_tree_by_kind_trail_provider_u_moleculeset_symbol.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "symbol";;
let nam_kin = "type";;

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

let tra_kin = Translating_trail_of_tag_v.kind_trail_of_kind_name_of_category_tag nam_kin tag_cat;;

let nam_ent_t = Entity_basename_constructor_tree_by_kind_trail_provider_v.provide tra_kin;;
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
"moleculeset"
);;

test_number 3 (
nam_ent_nol_son_l 
(* : string list *)
=
 ["fragment"; "grouping"; "molecule"]
);;

test_number 4 (
nam_ent_cur_l 
(* : string list *)
=
["fragment_closed_fromid"; "fragment_head_fromid"; "fragment_buried_fromid";
 "fragment_leaf_fromid"; "grouping_fromid"; "molecule_forked";
 "molecule_forked_fromid"; "molecule_linear"; "molecule_linear_diatomic";
 "molecule_linear_overdiatomic"; "molecule_polymer"; "polypeptide_fromid";
 "molecule_polymer_fromid"]
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

