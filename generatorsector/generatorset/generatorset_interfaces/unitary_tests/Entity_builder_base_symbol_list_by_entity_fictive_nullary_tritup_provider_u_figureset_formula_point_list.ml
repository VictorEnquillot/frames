open Make_test_v;;

testing "Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v with
   Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure_formula_point_list.ml"

(* toplevel 
   #use "Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure_formula_point_list.ml";;

*)

let nam_cod = "Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_u_figure_formula_point_list.ml"

let nam_dos = "figure";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let nam_cat = "formula";;

let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let nam_ent = "point_constructor";;
let sym_ent = Entity_symbol_v.ofstring nam_ent;;

test_number 1 (
sym_ent
(* : Entity_symbol_t.entity_symbol *)
  =
Entity_symbol_t.Entity_fictive_symbol
  (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor"))
);;

let nam_ent = Entity_symbol_v.name sym_ent;;

test_number 2 (
nam_ent
(* : string *)
  =
"ofstring"
);;

let str_ent = Entity_symbol_v.string_off sym_ent;;

test_number 3 (
str_ent
(* : string *)
  =
"point_constructor"
);;

let tri_ent = Triplet_v.make sym_ent sym_cat sym_dos;;

test_number 4 (
tri_ent 
(* : (Entity_symbol_t.entity_symbol, Category_symbol_t.category_symbol,
   Domain_symbol_t.domainset_symbol) Triplet_t.triplet *)
=
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor")),
   Category_symbol_t.Formula, Domain_symbol_t.Figure)
);;

let tra_ent = Translating_trail_of_symbol_v.entity_trail_of_entity_tritup tri_ent;;

let tra_ent = 
  [("entity", "point_constructor:ofstring"); 
   ("category", "formula");
   ("domain", "figure")];;

test_number 5 (
tra_ent 
(* : Trail_t.trail *)
=
[("entity", "point_constructor:ofstring"); 
 ("category", "formula");
 ("domain", "figure")]
);;

let nam_ent_lea_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;

let nam_bui_l = Entity_builder_base_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 6 (
nam_bui_l 
(*: string list *)
= 
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian")]
);;

let sym_efn = Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol sym_ent;;

test_number 7 (
sym_efn 
(* : Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol *)
=
  Entity_fictive_nullary_symbol_t.Ofstring "point_constructor"
);;

let tri_efn = Triplet_v.make sym_efn sym_cat sym_dos;;

test_number 8 (
 tri_efn 
(* : (Entity_fictive_nullary_symbol_t.entity_fictive_nullary_symbol,
   Category_symbol_t.category_symbol, Domain_symbol_t.domainset_symbol)
  Triplet_t.triplet *)
=
  (Entity_fictive_nullary_symbol_t.Ofstring "point_constructor",
   Category_symbol_t.Formula, Domain_symbol_t.Figure)
);;

let sym_bui_l = Entity_builder_base_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide tri_efn;;

test_number 9 (
sym_bui_l 
(* : Entity_symbol_t.entity_symbol list *)
=
 [Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian")]
);;

