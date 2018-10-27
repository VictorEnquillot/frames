open Make_test_v;;

testing "Entity_external_datastructure_symbol_list_by_entity_tritup_provider_v with 
   Entity_external_datastructure_symbol_list_by_entity_tritup_provider_u_figure_formula_triangle.ml";;

(* toplevel 
   #use "Entity_external_datastructure_symbol_list_by_entity_tritup_provider_u_figure_formula_triangle.ml";;

*)

let nam_cod = "Entity_external_datastructure_symbol_list_by_entity_tritup_provider_u_figure_formula_triangle";;

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
let sym_exd_l = Entity_external_datastructure_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 1 (
sym_exd_l
(* : Entity_external_datastructure_symbol_t.entity_external_datastructure_symbol
  list *)
=
  [Entity_external_datastructure_symbol_t.Tuple "doublet";
   Entity_external_datastructure_symbol_t.Tuple "doublet";
   Entity_external_datastructure_symbol_t.Tuple "doublet";
   Entity_external_datastructure_symbol_t.Tuple "doublet";
   Entity_external_datastructure_symbol_t.Tuple "doublet";
   Entity_external_datastructure_symbol_t.Tuple "doublet";
   Entity_external_datastructure_symbol_t.Tuple "doublet";
   Entity_external_datastructure_symbol_t.Tuple "duo";
   Entity_external_datastructure_symbol_t.Tuple "duo";
   Entity_external_datastructure_symbol_t.Tuple "duo";
   Entity_external_datastructure_symbol_t.Tuple "triplet";
   Entity_external_datastructure_symbol_t.Tuple "doublet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet";
   Entity_external_datastructure_symbol_t.Tuple "singlet"]
);;
