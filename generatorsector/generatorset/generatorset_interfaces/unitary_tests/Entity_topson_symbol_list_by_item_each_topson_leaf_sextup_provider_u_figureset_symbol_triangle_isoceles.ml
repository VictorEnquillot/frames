open Make_test_v;;

testing "Entity_topson_symbol_list_by_item_each_topson_leaf_sextup_provider_v with
   Entity_topson_symbol_list_by_item_each_topson_leaf_sextup_provider_u_figure_symbol_triangle_isoceles.ml";;

(* toplevel 
   #use "Entity_topson_symbol_list_by_item_each_topson_leaf_sextup_provider_u_figure_symbol_triangle_isoceles.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_ent = "triangle_isoceles";;
let nam_cof = "value_alone";;
let nam_usf = "implementation";;
let nam_ite = "abbreviating_topson";;

let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_ent_ft = Entity_symbol_constructor_tree_by_domain_symbol_provider_v.provide sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let tri_ent = (sym_ent, sym_cat, sym_dos);;

test_number 1 (
tri_ent
(* : Entity_symbol_t.entity_symbol * Category_symbol_t.category_symbol *
  Domain_symbol_t.domainset_symbol *)
=
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle_isoceles"),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let sym_usf = Usagefile_symbol_v.make nam_usf;;
let sym_igl = Item_each_topson_leaf_symbol_v.make nam_ite;;

let sex_igl = (sym_igl, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

test_number 2 (
 sex_igl
(* : Item_each_topson_leaf_symbol_t.item_each_topson_leaf_symbol *
  Usagefile_symbol_t.usagefile_symbol *
  Contentfile_symbol_t.contentfile_symbol * Entity_symbol_t.entity_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
 =
  (Item_each_topson_leaf_symbol_t.Abbreviating_topson,
   Usagefile_symbol_t.Implementation, Contentfile_symbol_t.Value_alone,
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle_isoceles"),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_ent_l = Entity_topson_symbol_list_by_item_each_topson_leaf_sextup_provider_v.provide sex_igl;;

test_number 3 (
sym_ent_l
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
= 
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_equilateral"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_right"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_acute"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Nonsonnullary
        "triangle_isoceles_obtuse"))]
);;

