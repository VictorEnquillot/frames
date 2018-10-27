open Make_test_v;;

testing "Contentfile_symbol_list_by_entity_tritup_provider_v with
   Contentfile_symbol_list_by_entity_tritup_provider_u_figure.ml";;

(* toplevel 
   #use "Contentfile_symbol_list_by_entity_tritup_provider_u_figure.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

(* Geometry *)

let nam_ent = "figure";;
let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let tri_ent = (sym_ent, sym_cat, sym_dos);;

test_number 1 (
tri_ent 
(* : Entity_symbol_t.entity_symbol * Category_symbol_t.category_symbol *
  Domain_symbol_t.domainset_symbol *)
=
 (Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "figure"),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_cof_l = Contentfile_symbol_list_by_entity_tritup_provider_v.provide tri_efn;;

test_number 2 (
sym_cof_l
(* : Contentfile_symbol_t.contentfile_symbol list *)
=
  [Contentfile_symbol_t.Type_alone; Contentfile_symbol_t.Value_alone]
);;
