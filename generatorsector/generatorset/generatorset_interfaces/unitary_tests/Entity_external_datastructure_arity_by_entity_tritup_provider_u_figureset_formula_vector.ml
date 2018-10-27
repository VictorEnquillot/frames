open Make_test_v;;

testing "Entity_external_datastructure_arity_by_entity_tritup_provider_v with 
   Entity_external_datastructure_arity_by_entity_tritup_provider_u_figure_formula_vector.ml";;

(* toplevel 
   #use "Entity_external_datastructure_arity_by_entity_tritup_provider_u_figure_formula_vector.ml";;

*)

let nam_cod = "Entity_external_datastructure_arity_by_entity_tritup_provider_u_figure_formula_vector";;

let nam_dos = "figure";;
let nam_cat = "formula";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let nam_ent = "vector";;
let sym_ent = Entity_symbol_v.make "entity_proper" nam_ent;;
let tri_ent = (sym_ent, sym_cat, sym_dos) ;;

test_number 1 (
tri_ent 
(* : Entity_symbol_t.entity_symbol * Category_symbol_t.category_symbol *
  Domain_symbol_t.domainset_symbol *)
=
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "vector"),
   Category_symbol_t.Formula, Domain_symbol_t.Figure)
);;

let ari_exd = Entity_external_datastructure_arity_by_entity_tritup_provider_v.provide tri_ent;;

test_number 2 (
ari_exd 
(* : int *)
  =
1
);;
