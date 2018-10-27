open Make_test_v;;

testing "Entity_symbol_constructor_tree_by_kind_trail_provider_v with
   entity_symbol_constructor_tree_by_kind_trail_provider_u_moleculeset_symbol.ml";;

(* toplevel 
   #use "entity_symbol_constructor_tree_by_kind_trail_provider_u_moleculeset_symbol.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "symbol";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let nam_ent_t = Entity_basename_constructor_tree_by_domain_trail_provider_v.provide tra_cat;;
let nam_ent_roo = Tree_v.root_off_tree nam_ent_t;;
let nam_ent_son_tl = Tree_v.topson_tree_list_off_tree nam_ent_t;;

let sym_ent_t = Entity_symbol_constructor_tree_by_category_trail_provider_v.provide tra_cat;;
let nod_l = Tree_v.node_list_off_tree sym_ent_t;;

let nam_ent_sut_l = Tree_v.subtree_list_of_node_predicate_off_tree (fun n -> (Tree_v.is_inner_of_node_off_tree n nam_ent_t) && (Tree_v.has_unique_leaf_son_of_node_of_tree n nam_ent_t)) nam_ent_t ;;

let sym_ent_son_tl = List.map (Entity_symbol_constructor_tree_by_kind_trail_provider_v.leaf_entity_symbol_self_or_string_or_datastructure_of_tree nam_ent_t) nam_ent_son_tl;;

test_number 1 (
nam_ent_roo
(* : string *)
= 
"moleculeset"
);;

test_number 2 (
nod_l
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "fragment");
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
    (Entity_fictive_basicnullary_symbol_t.String "fragment_closed_fromid"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
    (Entity_fictive_basicnullary_symbol_t.String "fragment_head_fromid"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
    (Entity_fictive_basicnullary_symbol_t.String "fragment_buried_fromid"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
    (Entity_fictive_basicnullary_symbol_t.String "fragment_leaf_fromid"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "grouping");
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
    (Entity_fictive_basicnullary_symbol_t.String "grouping_fromid"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "molecule");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "molecule_forked");
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "guanidine"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
    (Entity_fictive_basicnullary_symbol_t.String "molecule_forked_fromid"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "molecule_linear");
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "molecule_linear_diatomic");
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "carbonmonoxide"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "dihydrogen"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "dinitrogen"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "dioxygen"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "hydrogenchloride"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "hydrogenfluoride"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "molecule_linear_overdiatomic");
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "hydrogensulfide"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "water"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "propane"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "butane"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
    (Entity_fictive_nullary_symbol_t.Nonsonnullary "nitromethane"));
 Entity_symbol_t.Entity_proper_symbol
  (Entity_symbol_t.Entity_proper "molecule_polymer");
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
    (Entity_fictive_basicnullary_symbol_t.String "polypeptide_fromid"));
 Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
    (Entity_fictive_basicnullary_symbol_t.String "molecule_polymer_fromid"))]
);;

test_number 3 (
nam_ent_son_tl
(* : string Tree_t.tree list *)
=
[Tree_t.Inner ("fragment",
  [Tree_t.Inner ("fragment_closed_fromid", [Tree_t.Leaf "string"]);
   Tree_t.Inner ("fragment_head_fromid", [Tree_t.Leaf "string"]);
   Tree_t.Inner ("fragment_buried_fromid", [Tree_t.Leaf "string"]);
   Tree_t.Inner ("fragment_leaf_fromid", [Tree_t.Leaf "string"])]);
 Tree_t.Inner ("grouping",
  [Tree_t.Inner ("grouping_fromid", [Tree_t.Leaf "string"])]);
 Tree_t.Inner ("molecule",
  [Tree_t.Inner ("molecule_forked",
    [Tree_t.Leaf "guanidine";
     Tree_t.Inner ("molecule_forked_fromid", [Tree_t.Leaf "string"])]);
   Tree_t.Inner ("molecule_linear",
    [Tree_t.Inner ("molecule_linear_diatomic",
      [Tree_t.Leaf "carbonmonoxide"; Tree_t.Leaf "dihydrogen";
       Tree_t.Leaf "dinitrogen"; Tree_t.Leaf "dioxygen";
       Tree_t.Leaf "hydrogenchloride"; Tree_t.Leaf "hydrogenfluoride"]);
     Tree_t.Inner ("molecule_linear_overdiatomic",
      [Tree_t.Leaf "hydrogensulfide"; Tree_t.Leaf "water";
       Tree_t.Leaf "propane"; Tree_t.Leaf "butane";
       Tree_t.Leaf "nitromethane"])]);
   Tree_t.Inner ("molecule_polymer",
    [Tree_t.Inner ("polypeptide_fromid", [Tree_t.Leaf "string"]);
     Tree_t.Inner ("molecule_polymer_fromid", [Tree_t.Leaf "string"])])])]
);;

test_number 4 (
nam_ent_sut_l 
(* : string Tree_t.tree list *)
  =
[Tree_t.Inner ("fragment_closed_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("fragment_head_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("fragment_buried_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("fragment_leaf_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("grouping_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("molecule_forked_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("polypeptide_fromid", [Tree_t.Leaf "string"]);
 Tree_t.Inner ("molecule_polymer_fromid", [Tree_t.Leaf "string"])]
);;

test_number 5 (
Tree_v.is_complete sym_ent_t
);;

