open Make_test_v;;

testing "Entity_trail_constructor_tree_by_category_trail_provider_u_symbol with
   Entity_trail_constructor_tree_by_category_trail_provider_u_moleculeset_symbol.ml";; 

(* toplevel 
   #use "Entity_trail_constructor_tree_by_category_trail_provider_u_moleculeset_symbol.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let tra_ent_t = Entity_trail_constructor_tree_by_category_trail_provider_v.provide tra_cat;;
let tos_l = Tree_v.topson_node_list_off_tree tra_ent_t;;
let nod_l = Tree_v.node_list_off_tree tra_ent_t;;
let lea_l = Tree_v.leaf_node_list_off_tree tra_ent_t;;

let select_entity_off_trail nam tra =
  let nam_ent = Trail_v.value_of_key_off_trail "entity" tra in 
  String.length nam_ent >= (String.length nam) 
    && (String.sub nam_ent 0 (String.length nam) = nam)
;;

let select_subtree_off_trail nam tra = 
  Tree_v.subtree_of_node_predicate_off_tree 
    (select_entity_off_trail nam) tra
;;

test_number 1 (
tos_l
(* : Entity_trail_constructor_tree_by_category_trail_provider_u_symbol.Trail_t.trail list *)
=
[[("entity", "fragment"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "grouping"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule"); ("category", "symbol");
  ("domain", "moleculeset")]]
);;

test_number 2 (
 List_v.left_once_list_off_list lea_l
(* : Trail_t.trail list *)
=
[[("entity", "string"); ("category", "symbol"); ("domain", "moleculeset")];
 [("entity", "guanidine"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "carbonmonoxide"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "dihydrogen"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "dinitrogen"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "dioxygen"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "hydrogenchloride"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "hydrogenfluoride"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "hydrogensulfide"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "water"); ("category", "symbol"); ("domain", "moleculeset")];
 [("entity", "propane"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "butane"); ("category", "symbol"); ("domain", "moleculeset")];
 [("entity", "nitromethane"); ("category", "symbol");
  ("domain", "moleculeset")]]
);;

test_number 3 (
List.filter (select_entity_off_trail "molecule") nod_l
(* : Trail_t.trail list *)
=
[[("entity", "moleculeset"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule_forked"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule_forked_fromid"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule_linear"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule_linear_diatomic"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule_linear_overdiatomic"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule_polymer"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule_polymer_fromid"); ("category", "symbol");
  ("domain", "moleculeset")]]
);;

test_number 4 (
List.filter (select_entity_off_trail "p") nod_l
(* : Trail_t.trail list *)
=
[[("entity", "propane"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "polypeptide_fromid"); ("category", "symbol");
  ("domain", "moleculeset")]]
);;

test_number 5 (
List.filter (select_entity_off_trail "h") nod_l
(* : Trail_t.trail list *)
=
[[("entity", "hydrogenchloride");  ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "hydrogenfluoride");  ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "hydrogensulfide");  ("category", "symbol");
  ("domain", "moleculeset")]]
);;

test_number 6 (
Tree_v.subtree_of_node_predicate_off_tree (select_entity_off_trail "frag") tra_ent_t
(* : Trail_t.trail Tree_t.tree *)
=
Tree_t.Inner
 ([("entity", "fragment");  ("category", "symbol");
   ("domain", "moleculeset")],
 [Tree_t.Inner
   ([("entity", "fragment_closed_fromid"); 
     ("category", "symbol"); ("domain", "moleculeset")],
   [Tree_t.Leaf
     [("entity", "string");  ("category", "symbol");
      ("domain", "moleculeset")]]);
  Tree_t.Inner
   ([("entity", "fragment_head_fromid"); 
     ("category", "symbol"); ("domain", "moleculeset")],
   [Tree_t.Leaf
     [("entity", "string");  ("category", "symbol");
      ("domain", "moleculeset")]]);
  Tree_t.Inner
   ([("entity", "fragment_buried_fromid"); 
     ("category", "symbol"); ("domain", "moleculeset")],
   [Tree_t.Leaf
     [("entity", "string");  ("category", "symbol");
      ("domain", "moleculeset")]]);
  Tree_t.Inner
   ([("entity", "fragment_leaf_fromid"); 
     ("category", "symbol"); ("domain", "moleculeset")],
   [Tree_t.Leaf
     [("entity", "string");  ("category", "symbol");
      ("domain", "moleculeset")]])])
);;
