open Make_test_v;;

testing "Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v with
   Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_u_chemicalset_symbol_block.ml";;

(* toplevel 
   #use "Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_u_chemicalset_symbol_block.ml";; 

for more details see :

   #use "Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_u_chemicalset_symbol_block_none_single.ml"
   #use "Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_u_chemicalset_symbol_block_none_single_ax4e1_tetrahedral.ml"
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp_blo = Entity_symbol_v.top_has_notopsonleaf "block";;
let gss_enp_blo = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp_blo;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp_blo gss_enp_blo;;
let tag_enp_blo = Tag_v.make sym_enp_blo soi_enp_blo;;

let enst_blo = Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v.provide tag_enp_blo;;

test_number 1 (
Tree_v.is_complete enst_blo
);;

test_number 2 (
Tree_v.topson_node_list_off_tree enst_blo
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
  =
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "block_zerotied"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "block_onetied"))]
);;

