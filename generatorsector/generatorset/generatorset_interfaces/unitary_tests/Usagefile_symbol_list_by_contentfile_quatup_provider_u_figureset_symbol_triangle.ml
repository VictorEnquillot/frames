open Make_test_v;;

testing "Usagefile_symbol_list_by_contentfile_quatup_provider_v with
   Usagefile_symbol_list_by_contentfile_quatup_provider_u_figure_symbol_triangle.ml";;

(* toplevel 
   #use "Usagefile_symbol_list_by_contentfile_quatup_provider_u_figure_symbol_triangle.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_ent = "triangle";;
let nam_cof = "value_alone";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;

let sym_ent_l = Entity_inconstructortree_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_ent = List.find (fun e -> Entity_symbol_v.string_off e = nam_ent) sym_ent_l;;
let tri_ent = (sym_ent, sym_cat, sym_dos);;

test_number 1 (
tri_ent
(* :  Entity_symbol_t.entity_symbol * Category_symbol_t.category_symbol *
  Domain_symbol_t.domainset_symbol *)
=
  (Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle"),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = Quadruplet_v.make_of_left_of_triplet sym_cof tri_ent;; 

let sym_usf_l = Usagefile_symbol_list_by_contentfile_quatup_provider_v.provide qua_cof;;

test_number 2 (
sym_usf_l
(* : Usagefile_symbol_t.usagefile_symbol list *)
=
[Usagefile_symbol_t.Usagefile_implementation_symbol
   Usagefile_implementation_symbol_t.Implementation_for_symbol;
 Usagefile_symbol_t.Usagefile_interface_symbol
   Usagefile_interface_symbol_t.Interface_for_symbol]
);;
