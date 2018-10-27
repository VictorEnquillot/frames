open Make_test_v;;

testing "Entity_symbol_path_by_entity_tritup_provider_v with
   Entity_symbol_path_by_entity_tritup_provider_u_figure_symbol_point.ml";;

(* toplevel 
   #use "Entity_symbol_path_by_entity_tritup_provider_u_figure_symbol_point.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

(* Point *)
let nam_ent = "point";;
let sym_ent = Entity_symbol_v.make "entity_proper_with_one_son" nam_ent;;

let sym_ent_fut = Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dos;;

let str_fut = Tree_v.map Entity_symbol_v.string_off sym_ent_fut;;

let tri_ent = (sym_ent, sym_cat, sym_dos);;

test_number 1 (
tri_ent
(* : Entity_symbol_t.entity_symbol * Category_symbol_t.category_symbol *
  Domain_symbol_t.domainset_symbol *)
=
(Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_one_son "point"),
 Category_symbol_t.Symbol, 
 Domain_symbol_t.Figure)
);;

let pat_sym_ent = Entity_symbol_path_by_entity_tritup_provider_v.provide tri_ent;;

test_number 2 (
pat_sym_ent
(* :  Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "figure")]
);;

(* Point_constructor *)

let nam_ent = "point_constructor";;
let sym_ent = Entity_symbol_v.make "ofstring" nam_ent;;
let tri_ent = (sym_ent, sym_cat, sym_dos);;

test_number 3 (
tri_ent
(* : Entity_symbol_t.entity_symbol * Category_symbol_t.category_symbol *
  Domain_symbol_t.domainset_symbol *)
=
(Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor")),
 Category_symbol_t.Symbol, 
 Domain_symbol_t.Figure)
);;

let pat_sym_ent = Entity_symbol_path_by_entity_tritup_provider_v.provide tri_ent;;

test_number 4 (
pat_sym_ent
(* :  Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor"));
 Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_one_son "point");
 Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_with_sons "figure")]
);;

