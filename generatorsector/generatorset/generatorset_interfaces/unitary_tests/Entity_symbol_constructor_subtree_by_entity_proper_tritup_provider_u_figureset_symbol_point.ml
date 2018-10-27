open Make_test_v;;

testing "Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v with
   Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_u_figure_symbol_point.ml";;

(* toplevel 
   #use "Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_u_figure_symbol_point.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_ent = "point";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;

let tri_ent = (sym_ent, sym_cat, sym_dos);;

test_number 1 (
tri_ent
(* : Entity_propert.entity_proper_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
  =
(Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
 Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_ent_sut = Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v.provide tri_ent;;

test_number 2 (
sym_ent_sut
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
  Tree_t.Inner
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
   [Tree_t.Leaf
     (Entity_symbol_t.Entity_fictive_symbol
       (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
         (Entity_fictive_nullary_symbol_t.Ofstring
           "point_constructor")))])
);;

test_number 3 (
Tree_v.is_complete sym_ent_sut
);;

let sym_ent_l = Tree_v.topson_node_list_off_tree sym_ent_sut;;

test_number 4 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
  =
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor"))]
);;

(*
let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = "x") sym_ent_l;;
let tri_ent = (sym_ent, sym_cat, sym_dos);;
let sym_ent_sut = Entity_symbol_constructor_subtree_by_entity_proper_tritup_provider_v.provide tri_ent;;
*)
