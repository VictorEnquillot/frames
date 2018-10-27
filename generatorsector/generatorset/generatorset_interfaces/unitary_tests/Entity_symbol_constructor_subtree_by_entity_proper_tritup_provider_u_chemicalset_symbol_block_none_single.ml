open Make_test_v;;

testing "Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v with
   Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_u_chemicalset_formula_block_none_single.ml";;

(* toplevel 
   #use "Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_u_chemicalset_formula_block_none_single.ml";; 
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp_bns = Entity_symbol_v.top_has_sometopsonleaf "block_none_single";;
let gss_enp_bns = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp_bns;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp_bns gss_enp_bns;;
let tag_enp_bns = Tag_v.make sym_enp_bns soi_enp_bns;;

let enst_bns = Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v.provide tag_enp_bns;;

test_number 1 (
Tree_v.is_complete enst_bns
);;

test_number 2 (
Tree_v.topson_node_list_off_tree enst_bns
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
  =
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "block_none_single_ax1"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "block_none_single_ax3"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_son_symbol
    (Entity_proper_son_symbol_t.Notonlyson "block_none_single_ax4"))]
);;

test_number 3 (
enst_bns
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Inner
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "block_none_single")),
 [Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "block_none_single_ax1")),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper
         "block_none_single_ax1en_diatomic"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_h_s")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_f_s")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_s_s")))])]);
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "block_none_single_ax3")),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper
         "block_none_single_ax3e0_trigonalplanar"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_coh_s")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_co2m1_s")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_no2_s")))]);
    Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper
         "block_none_single_ax3e1_trigonalpyramidal"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_nh2_s")))])]);
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_propert.Entity_proper_son_symbol
       (Entity_proper_son_symbol_t.Notonlyson "block_none_single_ax4")),
   [Tree_t.Inner
     (Entity_symbol_t.Entity_proper_symbol
       (Entity_symbol_t.Entity_proper
         "block_none_single_ax4e1_tetrahedral"),
     [Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_ch3_s")));
      Tree_t.Leaf
       (Entity_symbol_t.Entity_fictive_symbol
         (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
           (Entity_fictive_nullary_symbol_t.Nonsonnullary "z_nh3p1_s")))])])])
);;

