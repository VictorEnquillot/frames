open Make_test_v;;

testing "Entity_trail_constructor_tree_by_category_trail_provider_v with
   entity_trail_constructor_tree_by_Category_trail_provider_u_moleculeset_formula.ml";;

(* toplevel 
   #use "entity_trail_constructor_tree_by_Category_trail_provider_u_moleculeset_formula.ml";; 
         
*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;


let nam_kin_con = "content";;
let tra_kin_con = Trail_v.make "category" nam_kin_con tra_cat;;
let wor_t_con = Word_tree_by_category_trail_provider_v.provide tra_kin_con;;
let tra_ent_t_con = Entity_trail_constructor_tree_by_category_trail_provider_v.provide tra_kin_con;;
let tos_l_con = Tree_v.topson_node_list_off_tree tra_ent_t_con;;

let select_trail key nam tra =
  Trail_v.value_of_key_off_trail "entity" tra = nam 
;;

test_number 1 (
wor_t_typ
(* string Tree_t.tree *)
  =
Tree_t.Inner ("moleculeset",
   [Tree_t.Inner ("grouping",
     [Tree_t.Inner ("grouping_fromid",
       [Tree_t.Leaf "capped_list"; Tree_t.Leaf "fragment:tag";
        Tree_t.Leaf "grouping:tag"])]);
    Tree_t.Inner ("molecule",
     [Tree_t.Inner ("molecule_forked",
       [Tree_t.Leaf "guanidine";
        Tree_t.Inner ("molecule_forked_fromid",
         [Tree_t.Leaf "capped_list"; Tree_t.Leaf "fragment_head:tag";
          Tree_t.Leaf "grouping:tag"])]);
      Tree_t.Inner ("molecule_linear",
       [Tree_t.Inner ("molecule_linear_diatomic",
         [Tree_t.Leaf "capped_list"; Tree_t.Leaf "fragment_head:tag";
          Tree_t.Leaf "grouping:tag"]);
        Tree_t.Inner ("molecule_linear_overdiatomic",
         [Tree_t.Leaf "capped_list"; Tree_t.Leaf "fragment_head:tag";
          Tree_t.Leaf "grouping:tag"])]);
      Tree_t.Inner ("molecule_polymer",
       [Tree_t.Inner ("polypeptide_fromid",
         [Tree_t.Leaf "list"; Tree_t.Leaf "polypeptide_subunit:tag"]);
        Tree_t.Inner ("molecule_polymer_fromid",
         [Tree_t.Leaf "list"; Tree_t.Leaf "polymer_subunit:tag"])])])])
);;

test_number 2 (
tos_l_typ 
(* : Trail_t.trail list *)
    =
  [[("entity", "grouping"); ("category", "type"); ("category", "formula");
    ("domain", "moleculeset")];
   [("entity", "molecule"); ("category", "type"); ("category", "formula");
    ("domain", "moleculeset")]]
);;

test_number 3 (
Tree_v.subtree_of_node_predicate_off_tree (select_trail "entity" "molecule_linear") tra_ent_t_typ
(* : Trail_t.trail Tree_t.tree *)
=
Tree_t.Inner
 ([("entity", "molecule_linear"); ("category", "type"); ("category", "formula");
   ("domain", "moleculeset")],
 [Tree_t.Inner
   ([("entity", "molecule_linear_diatomic"); ("category", "type");
     ("category", "formula"); ("domain", "moleculeset")],
   [Tree_t.Leaf
     [("entity", "capped_list"); ("category", "type"); ("category", "formula");
      ("domain", "moleculeset")];
    Tree_t.Leaf
     [("entity", "fragment_head:tag"); ("category", "type");
      ("category", "formula"); ("domain", "moleculeset")];
    Tree_t.Leaf
     [("entity", "grouping:tag"); ("category", "type"); ("category", "formula");
      ("domain", "moleculeset")]]);
  Tree_t.Inner
   ([("entity", "molecule_linear_overdiatomic"); ("category", "type");
     ("category", "formula"); ("domain", "moleculeset")],
   [Tree_t.Leaf
     [("entity", "capped_list"); ("category", "type"); ("category", "formula");
      ("domain", "moleculeset")];
    Tree_t.Leaf
     [("entity", "fragment_head:tag"); ("category", "type");
      ("category", "formula"); ("domain", "moleculeset")];
    Tree_t.Leaf
     [("entity", "grouping:tag"); ("category", "type"); ("category", "formula");
      ("domain", "moleculeset")]])])
);;

(*
test_number 4 (
wor_t_con
(* string Tree_t.tree *)
  =
Tree_t.Leaf "moleculeset"
);;

test_number 5 (
tos_l_con
(* : Trail_t.trail list *)
    =
Tree_t.Leaf
 [("entity", "moleculeset"); ("category", "content"); ("category", "formula");
  ("domain", "moleculeset")]
);;

test_number 6 (
Tree_v.subtree_of_node_predicate_off_tree (select_trail "entity" "molecule_linear_diatomic") tra_ent_t_con
(* : Trail_t.trail Tree_t.tree *)
=
???
);;
*)
