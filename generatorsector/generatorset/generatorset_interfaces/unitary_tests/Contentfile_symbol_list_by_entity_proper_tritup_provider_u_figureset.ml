open Make_test_v;;

testing "Contentfile_symbol_list_by_entity_proper_tritup_provider_v 
   Contentfile_symbol_list_by_entity_proper_tritup_provider_u_figure.ml"

(* toplevel 
   #use "Contentfile_symbol_list_by_entity_proper_tritup_provider_u_figure.ml";;

*)

let nam_dos = "figure";;
let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;

let nam_enp = "vector";;
let sym_enp = Entity_proper_symbol_v.make "entity_proper_with_one_son" nam_enp;;

let tri_enp = (sym_enp, sym_cat, sym_dos);;

let sym_cof_l = Contentfile_symbol_list_by_entity_proper_tritup_provider_v.provide tri_enp;;

test_number 1 (
sym_cof_l
(* : Kind_symbol_t.kind_symbol list *)
=
  [Contentfile_symbol_t.Type_alone; Contentfile_symbol_t.Value_alone]
);;

