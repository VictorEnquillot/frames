open Make_test_v;;

testing "Entity_symbol_stem_main_set_trio_by_entity_tritup_provider_v with
   Entity_symbol_stem_main_set_trio_by_entity_tritup_provider_u_figure_symbol_triangle_isoceles.ml";;

(* toplevel 
   #use "Entity_symbol_stem_main_set_trio_by_entity_tritup_provider_u_figure_symbol_triangle_isoceles.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_ent = "triangle_isoceles";;

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
(Entity_symbol_t.Entity_proper_symbol (Entity_symbol_t.Entity_proper "triangle_isoceles"),
 Category_symbol_t.Symbol, 
 Domain_symbol_t.Figure)
);;

let pat_sym_ent = Entity_symbol_path_by_entity_tritup_provider_v.provide tri_ent;;

test_number 2 (
pat_sym_ent
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
= 
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle_isoceles");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "figure")]
);;

let ste_mai_set = Entity_symbol_stem_main_set_trio_by_entity_tritup_provider_v.provide tri_ent;;

test_number 3 (
ste_mai_set
(* : Entity_symbol_t.entity_symbol Trio_t.trio *)
=
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle_isoceles"),
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle"),
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "figure"))
);;

let sym_ent_top = Entity_symbol_t.Entity_proper_symbol (Entity_symbol_t.Entity_proper "figure");;
let sym_ent_son = Tools_ignr_v.entity_topson_symbol_of_entity_current_tritup_of_entity_top_symbol tri_ent sym_ent_top;; 

test_number 4 (
sym_ent_son
(* : Entity_symbol_t.entity_symbol *)
=
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "triangle")
);;

let sym_ent_top = Entity_symbol_t.Entity_proper_symbol (Entity_symbol_t.Entity_proper "triangle");;
let sym_ent_son = Tools_ignr_v.entity_topson_symbol_of_entity_current_tritup_of_entity_top_symbol tri_ent sym_ent_top;; 

test_number 5 (
sym_ent_son
(* : Entity_symbol_t.entity_symbol *)
=
  Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "triangle_isoceles")
);;
