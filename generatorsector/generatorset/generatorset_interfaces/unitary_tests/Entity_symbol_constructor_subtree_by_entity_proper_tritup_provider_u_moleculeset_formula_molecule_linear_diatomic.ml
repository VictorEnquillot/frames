open Make_test_v;;

testing "Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v with
   Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_u_moleculeset_formula_molecule_linear_diatomic.ml";;

(* toplevel 
   #use "Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_u_moleculeset_formula_molecule_linear_diatomic.ml";;

*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;
let nam_enp = "molecule_linear_diatomic";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let enst = Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v.provide tag_enp;;

test_number 1 (
Tree_v.is_complete enst
);;

test_number 2 (
Tree_v.topson_node_list_off_tree enst
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
  =
[Entity_symbol_t.Entity_external_symbol
  (Entity_external_symbol_t.Entity_external_datastructure_symbol
    (Entity_external_datastructure_symbol_t.Capped_list
      "fragment_head:mark grouping:mark"))]
);;

test_number 3 (
enst
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Inner
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "molecule_linear_diatomic")),
 [Tree_t.Leaf
   (Entity_symbol_t.Entity_external_symbol
     (Entity_external_symbol_t.Entity_external_datastructure_symbol
       (Entity_external_datastructure_symbol_t.Capped_list
         "fragment_head:mark grouping:mark")))])
);;

