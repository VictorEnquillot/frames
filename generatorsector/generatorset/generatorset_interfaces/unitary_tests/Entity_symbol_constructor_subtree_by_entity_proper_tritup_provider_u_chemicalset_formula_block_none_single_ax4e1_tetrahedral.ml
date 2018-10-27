open Make_test_v;;

testing "Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v with
   entity_symbol_constructor_subtree_by_entity_tritup_provider_u_moleculeset_formula.ml";;

(* toplevel 
   #use "entity_symbol_constructor_subtree_by_entity_tritup_provider_u_moleculeset_formula.ml";;
 
*)

let sym_dos = Domain_symbol_v.make "moleculeset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp_mol = Entity_symbol_v.top_has_sometopsonleaf "molecule";;
let gss_enp_mol = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp_mol;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp_mol gss_enp_mol;;
let tag_enp_mol = Tag_v.make sym_enp_mol soi_enp_mol;;

let enst_mol = Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v.provide tag_enp_mol;;

test_number 1 (
Tree_v.is_complete enst_mol
);;

test_number 2 (
Tree_v.topson_node_list_off_tree enst_mol
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
  =
[Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Sonnullary "capped_list"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Sonnullary "atom_core:mark"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Sonnullary "atom_onetied:mark"))]
);;

test_number 3 (
enst_mol
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Inner
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
       "block_none_single_ax4e1_tetrahedral")),
 [Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "capped_list")));
  Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "atom_core:mark")));
  Tree_t.Leaf
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
       (Entity_fictive_nullary_symbol_t.Sonnullary "atom_onetied:mark")))])
);;

