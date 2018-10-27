open Make_test_v;;

testing "Entity_trail_constructor_tree_by_kind_trail_provider_u_symbol with
   Entity_trail_constructor_tree_by_kind_trail_provider_u_moleculeset_symbol.ml";; 

(* toplevel 
   #use "Entity_trail_constructor_tree_by_kind_trail_provider_u_moleculeset_symbol.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_kin_typ = "type";;
let tra_kin_typ = Trail_v.make "kind" nam_kin_typ tra_cat;;
let tra_ent_t_typ = Entity_trail_constructor_tree_by_kind_trail_provider_v.provide tra_kin_typ;;
let tos_l_typ = Tree_v.topson_node_list_off_tree tra_ent_t_typ;;
let nod_l_typ = Tree_v.node_list_off_tree tra_ent_t_typ;;
let lea_l_typ = Tree_v.leaf_node_list_off_tree tra_ent_t_typ;;

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
tos_l_typ
(* : Entity_trail_constructor_tree_by_kind_trail_provider_u_symbol.Trail_t.trail list *)
=
[[("entity", "fragment"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "grouping"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")]]
);;

test_number 2 (
 List_v.left_once_list_off_list lea_l_typ
(* : Trail_t.trail list *)
=
[[("entity", "string"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "guanidine"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "carbonmonoxide"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "dihydrogen"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "dinitrogen"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "dioxygen"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "hydrogenchloride"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "hydrogenfluoride"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "hydrogensulfide"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "water"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "propane"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "butane"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "nitromethane"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")]]
);;

test_number 3 (
List.filter (select_entity_off_trail "molecule") nod_l_typ
(* : Trail_t.trail list *)
=
[[("entity", "moleculeset"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule_forked"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule_forked_fromid"); ("kind", "type");
  ("category", "symbol"); ("domain", "moleculeset")];
 [("entity", "molecule_linear"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule_linear_diatomic"); ("kind", "type");
  ("category", "symbol"); ("domain", "moleculeset")];
 [("entity", "molecule_linear_overdiatomic"); ("kind", "type");
  ("category", "symbol"); ("domain", "moleculeset")];
 [("entity", "molecule_polymer"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "molecule_polymer_fromid"); ("kind", "type");
  ("category", "symbol"); ("domain", "moleculeset")]]
);;

test_number 4 (
List.filter (select_entity_off_trail "p") nod_l_typ
(* : Trail_t.trail list *)
=
[[("entity", "propane"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "polypeptide_fromid"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")]]
);;

test_number 5 (
List.filter (select_entity_off_trail "h") nod_l_typ
(* : Trail_t.trail list *)
=
[[("entity", "hydrogenchloride"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "hydrogenfluoride"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")];
 [("entity", "hydrogensulfide"); ("kind", "type"); ("category", "symbol");
  ("domain", "moleculeset")]]
);;

test_number 6 (
Tree_v.subtree_of_node_predicate_off_tree (select_entity_off_trail "frag") tra_ent_t_typ
(* : Trail_t.trail Tree_t.tree *)
=
Tree_t.Inner
 ([("entity", "fragment"); ("kind", "type"); ("category", "symbol");
   ("domain", "moleculeset")],
 [Tree_t.Inner
   ([("entity", "fragment_closed_fromid"); ("kind", "type");
     ("category", "symbol"); ("domain", "moleculeset")],
   [Tree_t.Leaf
     [("entity", "string"); ("kind", "type"); ("category", "symbol");
      ("domain", "moleculeset")]]);
  Tree_t.Inner
   ([("entity", "fragment_head_fromid"); ("kind", "type");
     ("category", "symbol"); ("domain", "moleculeset")],
   [Tree_t.Leaf
     [("entity", "string"); ("kind", "type"); ("category", "symbol");
      ("domain", "moleculeset")]]);
  Tree_t.Inner
   ([("entity", "fragment_buried_fromid"); ("kind", "type");
     ("category", "symbol"); ("domain", "moleculeset")],
   [Tree_t.Leaf
     [("entity", "string"); ("kind", "type"); ("category", "symbol");
      ("domain", "moleculeset")]]);
  Tree_t.Inner
   ([("entity", "fragment_leaf_fromid"); ("kind", "type");
     ("category", "symbol"); ("domain", "moleculeset")],
   [Tree_t.Leaf
     [("entity", "string"); ("kind", "type"); ("category", "symbol");
      ("domain", "moleculeset")]])])
);;
