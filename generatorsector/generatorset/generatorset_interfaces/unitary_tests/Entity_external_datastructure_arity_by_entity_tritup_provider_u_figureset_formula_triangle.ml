open Make_test_v;;

testing "Entity_external_datastructure_arity_by_entity_tritup_provider_v with 
   Entity_external_datastructure_arity_by_entity_tritup_provider_u_figure_formula_triangle.ml";;

(* toplevel 
   #use "Entity_external_datastructure_arity_by_entity_tritup_provider_u_figure_formula_triangle.ml";;

*)

let nam_cod = "Entity_external_datastructure_arity_by_entity_tritup_provider_u_figure_formula_triangle";;

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_ent = "triangle";;
let nam_usf = "implementation";;
let nam_ent = "figure";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let tri_ent = (sym_ent, sym_cat, sym_dos) ;;

test_number 1 (
(* : Entity_symbol_t.entity_symbol * Category_symbol_t.category_symbol *
  Domain_symbol_t.domainset_symbol *)
 =
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_propert.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figure")),
   Category_symbol_t.Formula, Domain_symbol_t.Figure)
);;

let ari_das = Entity_external_datastructure_arity_by_entity_tritup_provider_v.provide tri_ent;;

