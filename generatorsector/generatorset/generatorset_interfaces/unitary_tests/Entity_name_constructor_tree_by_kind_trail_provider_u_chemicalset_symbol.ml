open Make_test_v;;

testing "Entity_basename_constructor_tree_by_kind_trail_provider_v with
   Entity_basename_constructor_tree_by_kind_trail_provider_u_chemicalset_symbol.ml";; 

(* toplevel 
   #use "Entity_basename_constructor_tree_by_kind_trail_provider_u_chemicalset_symbol.ml";; 
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let nam_ent_ft = Entity_basename_constructor_tree_by_kind_trail_provider_v.provide tag_cat;;

let nam_ent_top = Tree_v.root_off_tree nam_ent_ft;;
let nam_ent_nod_l = Tree_v.node_list_off_tree nam_ent_ft;;
let nam_ent_top_son_l = Tree_v.topson_node_list_off_tree nam_ent_ft;;
let nam_ent_nol_son_l = Tree_v.noleaf_topson_node_list_off_tree nam_ent_ft;;
let nam_ent_cur_l = Tree_v.noroot_notopson_noleaf_node_list_off_tree nam_ent_ft;; 
let nam_ent_lea_l = Tree_v.leaf_node_list_off_tree nam_ent_ft;;

let nam_ent_ful_l = nam_ent_top :: ( nam_ent_nol_son_l @ nam_ent_cur_l @ nam_ent_lea_l);;

let nam_ent_ft = Entity_basename_constructor_tree_by_kind_trail_provider_v.provide tag_cat;;
let nam_ent_roo = Tree_v.root_off_tree nam_ent_ft;;
let nam_ent_son_tl = Tree_v.topson_tree_list_off_tree nam_ent_ft;;

let nam_ent_sut_l = Tree_v.subtree_list_of_node_predicate_off_tree 
    (fun n -> (Tree_v.is_inner_of_node_off_tree n nam_ent_ft) 
	&& 
      (Tree_v.has_unique_leaf_son_of_node_of_tree n nam_ent_ft)) 
    nam_ent_ft ;;

let nam_ent_clu_t = Tree_v.subtree_of_node_predicate_off_tree (fun n -> n = "cluster") nam_ent_ft;;
let nam_ent_clu = "cluster";;

test_number 1 (
Tree_v.is_complete nam_ent_ft
);;

test_number 2 (
nam_ent_top 
(* : string *)
= 
"chemicalset"
);;

test_number 3 (
nam_ent_clu_t
(* : string Tree_t.tree *)
  =
Tree_t.Inner ("cluster",
	      [Tree_t.Inner ("cluster_fromid", [Tree_t.Leaf "string"]);
	       Tree_t.Inner ("protein_fromid", [Tree_t.Leaf "string"])])
);;

test_number 4 (
Entity_symbol_constructor_tree_by_kind_trail_provider_v.make_when_extra_unique_leaf_son "cluster_fromid" nam_ent_clu_t
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Leaf
 (Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary "cluster_fromid")))
);;

test_number 5 (
Entity_symbol_constructor_tree_by_kind_trail_provider_v.make_when_extra_unique_leaf_son "protein_fromid" nam_ent_clu_t
=
Tree_t.Leaf
 (Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary "protein_fromid")))
);;

test_number 6 (
nam_ent_nol_son_l 
(* : string list *)
=
["atom"; "block"; "bond"; "bridge"; "chain"; "cluster"; "coffer"; "fragment";
 "grouping"; "mendeleev"; "molecule"; "polypeptide_subunit"; "segment"]
);;

