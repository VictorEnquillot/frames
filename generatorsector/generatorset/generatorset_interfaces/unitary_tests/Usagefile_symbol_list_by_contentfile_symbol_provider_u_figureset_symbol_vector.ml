open Make_test_v;;

testing "Usagefile_symbol_list_by_contentfile_quatup_provider_v with
   Usagefile_symbol_list_by_contentfile_symbol_provider_u_figure_symbol_vector.ml";;

(* toplevel 
   #use "Usagefile_symbol_list_by_contentfile_symbol_provider_u_figure_symbol_vector.ml";;

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_ent = "vector";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let sym_cat = Category_symbol_v.make nam_cat;;
let sym_ent = Entity_symbol_v.make "entity_proper" nam_ent;;
let sym_cof = Contentfile_symbol_v.make "value_alone"

let tri_ent = (sym_ent, sym_cat, sym_dos);;	
let qua_cof = Quadruplet_v.make_of_left_of_triplet sym_cof tri_ent;;
let sym_usf_l = Usagefile_symbol_list_by_contentfile_quatup_provider_v.provide qua_cof;;

test_number 1 (
sym_usf_l
(* : Usagefile_symbol_t.usagefile_symbol list *)
  =
[Usagefile_symbol_t.Implementation; Usagefile_symbol_t.Interface]
);;

let sym_cof = Contentfile_symbol_v.make "type_alone"
let qua_cof = Quadruplet_v.make_of_left_of_triplet sym_cof tri_ent;;
let sym_usf_l = Usagefile_symbol_list_by_contentfile_quatup_provider_v.provide qua_cof;;

test_number 2 (
sym_usf_l
(* : Usagefile_symbol_t.usagefile_symbol list *)
  =
[Usagefile_symbol_t.Implementation]
);;
