open Make_test_v;;

testing "Entity_symbol_constructor_tree_by_kind_trail_provider_v with
   Entity_symbol_constructor_tree_by_kind_trail_provider_u_moleculeset_formula.ml";; 

(* toplevel 
   #use "Entity_symbol_constructor_tree_by_kind_trail_provider_u_moleculeset_formula.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;
let nam_kin = "type";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let tra_kin = Translating_trail_of_tag_v.kind_trail_of_kind_name_of_category_tag nam_kin tag_cat;;

let est_dos = Entity_symbol_constructor_tree_by_kind_trail_provider_v.provide tra_kin;;
let nam_ent_t = Entity_basename_constructor_tree_by_kind_trail_provider_v.provide tra_kin;;

let nam_ent_roo = Tree_v.root_off_tree nam_ent_t;;
let nam_ent_son_tl = Tree_v.topson_tree_list_off_tree nam_ent_t;;

let tos_l = Tree_v.topson_node_list_off_tree est_dos;;
let sym_ent_t = Entity_symbol_constructor_tree_by_kind_trail_provider_v.provide tra_kin;;
let nod_l = Tree_v.node_list_off_tree sym_ent_t;;

let nam_ent_sut_l = Tree_v.subtree_list_of_node_predicate_off_tree (fun n -> (Tree_v.is_inner_of_node_off_tree n nam_ent_t) && (Tree_v.has_unique_leaf_son_of_node_of_tree n nam_ent_t)) nam_ent_t ;;

let sym_ent_son_tl = List.map (Entity_symbol_constructor_tree_by_kind_trail_provider_v.leaf_entity_symbol_self_or_string_or_datastructure_of_tree nam_ent_t) nam_ent_son_tl;;

test_number 1 (
Tree_v.is_complete est_dos
);;

test_number 2 (
tos_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "grouping");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "molecule")]
);;

test_number 3 (
est_dos
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=Tree_t.Inner
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset")),
 [Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "grouping"),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "grouping_fromid"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_external_symbol
         (Entity_external_symbol_t.Entity_external_datastructure_symbol
           (Entity_external_datastructure_symbol_t.Capped_list
             "fragment:tag grouping:tag")))])]);
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_symbol_t.Entity_proper "molecule"),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "molecule_forked"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "guanidine")));
      Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_symbol_t.Entity_proper "molecule_forked_fromid"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_external_symbol
           (Entity_external_symbol_t.Entity_external_datastructure_symbol
             (Entity_external_datastructure_symbol_t.Capped_list
               "fragment_head:tag grouping:tag")))])]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "molecule_linear"),
     [Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_symbol_t.Entity_proper "molecule_linear_diatomic"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_external_symbol
           (Entity_external_symbol_t.Entity_external_datastructure_symbol
             (Entity_external_datastructure_symbol_t.Capped_list
               "fragment_head:tag grouping:tag")))]);
      Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_symbol_t.Entity_proper "molecule_linear_overdiatomic"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_external_symbol
           (Entity_external_symbol_t.Entity_external_datastructure_symbol
             (Entity_external_datastructure_symbol_t.Capped_list
               "fragment_head:tag grouping:tag")))])]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper "molecule_polymer"),
     [Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_symbol_t.Entity_proper "polypeptide_fromid"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_external_symbol
           (Entity_external_symbol_t.Entity_external_datastructure_symbol
             (Entity_external_datastructure_symbol_t.List_caml
               "polypeptide_subunit:tag")))]);
      Tree_t.Inner
       (Entity_symbol_t.Entity_proper_symbol
         (Entity_symbol_t.Entity_proper "molecule_polymer_fromid"),
       [Tree_t.Leaf
         (Entity_symbol_t.Entity_external_symbol
           (Entity_external_symbol_t.Entity_external_datastructure_symbol
             (Entity_external_datastructure_symbol_t.List_caml
               "polymer_subunit:tag")))])])])])
);;
