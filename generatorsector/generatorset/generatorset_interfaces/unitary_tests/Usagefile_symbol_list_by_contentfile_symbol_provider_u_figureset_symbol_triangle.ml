open Make_test_v;;

testing "Contentfile_symbol_list_by_entity_fictive_nullary_triplet_top_symbol_provider_v with
   Contentfile_symbol_list_by_entity_fictive_nullary_triplet_top_symbol_provider_u_figure_formula_vector.ml";;

(* toplevel 
   #use "Contentfile_symbol_list_by_entity_fictive_nullary_triplet_top_symbol_provider_u_figure_formula_vector.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let nam_enp = "vector";;
let sym_enp = Entity_symbol_v.make "entity_proper" nam_enp;;
let tri_enp = (sym_enp, sym_cat, sym_dos) ;;

test_number 1 (
tri_enp 
(* : Entity_propert.entity_proper_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
=
  (Entity_symbol_t.Entity_proper "vector", Category_symbol_t.Formula,
   Domain_symbol_t.Figure)
);;

let sym_cof_l = Contentfile_symbol_list_by_entity_proper_triplet_top_symbol_provider_v.provide tri_enp;;

test_number 2 (
sym_cof_l
(* : Contentfile_symbol_t.contentfile_symbol list *)
=
  [Contentfile_symbol_t.Type_alone; Contentfile_symbol_t.Value_alone]
);;
