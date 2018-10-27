open Make_test_v;;

testing "Usagefile_symbol_value_v
   Usagefile_value_u_figureset_symbol_figureset_value_alone.ml";;

(* toplevel 
   #use "Usagefile_value_u_figureset_symbol_figureset_value_alone.ml";;

*)

let nam_cod = "Usagefile_value_u_figureset_symbol_figureset_value_alone.ml";;

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ent = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation_for_symbol";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;

test_number 1 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
 =
  (Domain_symbol_t.Figure, [2])
);;

let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

test_number 2 (
tag_cat 
(* : Category_symbol_t.category_symbol * Sole_index_t.sole_index *)
=
  (Category_symbol_t.Symbol, [7; 2])
);;

let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent);;
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 3 (
tag_ent 
(* Entity_symbol_t.entity_proper_symbol * Sole_index_t.sole_index *)
=
  (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure"), [1; 7; 2])
);;

let for_ent = Entity_formula_v.retrieve tag_ent;;
let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_formula for_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 4 (
tag_cof 
(* : Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
  =
(Contentfile_symbol_t.Value_alone, [2; 1; 7; 2])
);;

let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_formula for_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

test_number 5 (
tag_usf 
(* : Usagefile_symbol_t.usagefile_symbol * Sole_index_t.sole_index *)
=
  (Usagefile_symbol_t.Usagefile_for_symbol_symbol
    Usagefile_for_symbol_symbol_t.Implementation_for_symbol,
   [1; 2; 1; 7; 2])
);;

let nam_fil = Usagefile_value_v.fullnameoffile "./" tag_usf;;

test_number 6 (
nam_fil
=
 "./Figure_symbol_v.ml"
);;

Usagefile_value_v.write "./" tag_usf;; 
  
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let val_usf = Usagefile_value_v.retrieve tag_usf;;

let str_l = Usagefile_value_v.string_list_off_usagefile_value val_usf;;

let str_nol_l  = List_v.drop_last_element_off_list str_l;;

