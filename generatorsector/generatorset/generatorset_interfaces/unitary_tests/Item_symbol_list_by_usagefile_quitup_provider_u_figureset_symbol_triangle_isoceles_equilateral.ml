open Make_test_v;;

testing "Item_symbol_list_by_usagefile_quitup_provider_v with
   Item_symbol_list_by_usagefile_quitup_provider_u_figure_symbol_triangle_isoceles_equilateral.ml";;

(* toplevel 
   #use "Item_symbol_list_by_usagefile_quitup_provider_u_figure_symbol_triangle_isoceles_equilateral.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_ent = "triangle_isoceles_equilateral"

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let tri_ent = (sym_ent, sym_cat, sym_dos);;

test_number 1 (
tri_ent
(* : Entity_symbol_t.entity_symbol * Category_symbol_t.category_symbol *
  Domain_symbol_t.domainset_symbol *)
=
  (Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_equilateral")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

(* Type_alone *)

let nam_cof = "type_alone";;
let nam_usf = "implementation";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = Quadruplet_v.make_of_left_of_triplet sym_cof tri_ent;; 

test_number 2 (
qua_cof
(* : (Contentfile_symbol_t.contentfile_symbol, Entity_symbol_t.entity_symbol,
   Category_symbol_t.category_symbol, Domain_symbol_t.domainset_symbol)
  Quadruplet_t.quadruplet *)
=
  (Contentfile_symbol_t.Type_alone,
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_equilateral")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_usf = Usagefile_symbol_v.make nam_usf "";;
let qui_usf = Quintuplet_v.make_of_left_of_quadruplet sym_usf qua_cof;;

test_number 3 (
qui_usf
(* : Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
=
  (Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Type_alone,
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_equilateral")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_ite_l = Item_symbol_list_by_usagefile_quitup_provider_v.provide qui_usf;;

test_number 4 (
sym_ite_l
(* : Item_symbol_t.item_symbol list *)
=
  [Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Heading;
   Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting;
   Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Typing;
   Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Ending]
);;

(* Value_alone *)

let nam_cof = "value_alone";;
let nam_usf = "implementation";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = Quadruplet_v.make_of_left_of_triplet sym_cof tri_ent;; 

test_number 5 (
qua_cof
(* : (Contentfile_symbol_t.contentfile_symbol, Entity_symbol_t.entity_symbol,
   Category_symbol_t.category_symbol, Domain_symbol_t.domainset_symbol)
  Quadruplet_t.quadruplet *)
=
  (Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_equilateral")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let qui_usf = Quintuplet_v.make_of_left_of_quadruplet sym_usf qua_cof;;

test_number 6 (
qui_usf
(* : Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
=
  (Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_equilateral")),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_ite_l = Item_symbol_list_by_usagefile_quitup_provider_v.provide qui_usf;;

test_number 7 (
sym_ite_l
(* : Item_symbol_t.item_symbol list *)
=
[Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Heading;
 Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Documenting;
 Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming;
 Item_symbol_t.Item_each_topson_notleaf_symbol
   Item_each_topson_notleaf_symbol_t.Extracting_topson;
 Item_symbol_t.Item_each_grandson_notleaf_symbol
   Item_each_grandson_notleaf_symbol_t.Extracting_grandson;
 Item_symbol_t.Item_each_topson_notleaf_symbol
   Item_each_topson_notleaf_symbol_t.Querying_topson;
 Item_symbol_t.Item_each_grandson_notleaf_symbol
   Item_each_grandson_notleaf_symbol_t.Querying_grandson;
 Item_symbol_t.Item_each_topson_notleaf_symbol
   Item_each_topson_notleaf_symbol_t.Upgrading_topson;
 Item_symbol_t.Item_each_grandson_notleaf_symbol
   Item_each_grandson_notleaf_symbol_t.Upgrading_grandson;
 Item_symbol_t.Item_each_topson_leaf_symbol
   Item_each_topson_leaf_symbol_t.Abbreviating_topson;
 Item_symbol_t.Item_each_grandson_leaf_symbol
   Item_each_grandson_leaf_symbol_t.Abbreviating_grandson;
 Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making;
 Item_symbol_t.Item_only_top_symbol Item_only_top_symbol_t.Ending]
);;
