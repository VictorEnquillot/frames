open Make_test_v;;

testing "Contentfile_symbol_list_by_entity_tritup_provider_v with
   Contentfile_symbol_list_by_entity_tritup_provider_u_figure_symbol_triangle.ml";;

(* toplevel 
   #use "Contentfile_symbol_list_by_entity_tritup_provider_u_figure_symbol_triangle.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "symbol";;
let nam_enp = "triangle"

let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_cat = Category_symbol_v.make nam_cat;;

let sym_enp_l = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide sym_dos;;

let sym_enp = List.find (fun e -> Entity_symbol_v.string_off e = nam_enp) sym_enp_l;;
let tri_enp = (sym_enp, sym_cat, sym_dos);;

test_number 1 (
tri_enp 
(* : Entity_propert.entity_proper_symbol *
  Category_symbol_t.category_symbol * Domain_symbol_t.domainset_symbol *)
=
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle"),
   Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;

let sym_cof_l = Contentfile_symbol_list_by_entity_tritup_provider_v.provide tri_enp;;
 
test_number 2 (
sym_cof_l
(* : Contentfile_symbol_t.contentfile_symbol list *)
=
[Contentfile_symbol_t.Type_alone; 
 Contentfile_symbol_t.Value_alone]
);;

