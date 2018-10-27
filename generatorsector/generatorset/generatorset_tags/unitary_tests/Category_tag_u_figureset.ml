open Make_test_v;;

testing "Category_tag_v with
   Category_tag_u_figureset.ml";;

(* toplevel 
   #use "Category_tag_u_figureset.ml";;

*)

let nam_dom = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation_for_symbol";;
let nam_cof = "value_alone";;
let nam_ent = "figure";;

let idx_dom = Domain_symbol_v.domain_index_of_domain_name nam_dom;;
let idx_cat = 7;;
let idx_ent = 1;; 
let idx_cof = 2;;
let idx_usf = 1;;
let idx_ite = 21;;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Globalset_symbol_by_sole_index_register_v.store_of_sole_index_of_generatorset_symbol soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;

let sym_cat = Category_symbol_v.make nam_cat;;
let soi_cat = Sole_index_v.make idx_cat soi_dom;;
let gss_cat = Generatorset_symbol_v.generator_symbol_of_category_symbol sym_cat;;
Globalset_symbol_by_sole_index_register_v.store_of_sole_index_of_generatorset_symbol soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

test_number 1 (
tag_cat 
(* : Category_symbol_t.category_symbol Tag_t.tag *)
=
(Category_symbol_t.Symbol, [7; 2])
);;

let dou_cat = Category_tag_v.category_doutup_off_category_tag tag_cat;;

test_number 2 (
dou_cat 
(* : (Category_symbol_t.category_symbol, Domain_symbol_t.domain_symbol)
  Doublet_t.doublet *)
  =
(Category_symbol_t.Symbol, Domain_symbol_t.Figure)
);;


let tag_dom = Category_tag_v.domain_tag_off_category_tag tag_cat;;

test_number 3 (
tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
=
  (Domain_symbol_t.Figure, [2])
);;

let re_l = register_entry_list ();;
let fi1_l = Doublet_list_v.filter_if_left (fun e -> List_v.ultimate_element_off_list e = idx_dom) re_l;;
let fi2_l = Doublet_list_v.filter_if_left (fun e -> List.length e <= List.length soi_cat) fi1_l;;
let compare_entry (k1, v1) (k2, v2) = compare (List.length k1) (List.length k2);;
let kv_dom_l = List.sort compare_entry fi2_l;;

test_number 4 (
kv_dom_l
(* : (Sole_index_t.sole_index * Generatorset_symbol_t.generator_symbol) list *)
=
  [([2], Generatorset_symbol_t.Domain_symbol Domain_symbol_t.Figure);
   ([7; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Symbol)]
);;
