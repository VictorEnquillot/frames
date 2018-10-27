open Make_test_v;;

testing "Camlline_formula_v with 
   Camlline_formula_u_figureset_symbol_figureset_making.ml";;

(* toplevel 
   #use "Camlline_formula_u_figureset_symbol_figureset_making.ml";;

*)
let dump () = Register_v.dump Sole_index_v.name Generatorset_symbol_v.name Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register ;;


let nam_cod = "Camlline_formula_u_figureset_symbol_figureset_making";;

let nam_dos = "figureset";;
let nam_cof = "value_alone";;
let nam_enp = "figureset";;
let nam_cat = "symbol";;
let nam_usf = "Implementation_for_symbol";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;

test_number 1 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
(Domainset_symbol_t.Figureset, [2])
);;

let tag_cat_l = Domainset_formula_v.category_tag_list_off_domainset_tag tag_dos;;
let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

test_number 2 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Symbol, [7; 2])
);;

let (sym_dos, soi_dos) = tag_dos;;
let (sym_cat, soi_cat) = tag_cat;;

let soi_dos = List.tl soi_cat;;
let gss_dos = Generatorset_symbol_by_sole_index_provider_v.provide soi_dos;;
let sym_dos = Generatorset_symbol_v.domainset_symbol_off_generatorset_symbol gss_dos;;
let tag_ddd = Tag_v.make sym_dos soi_dos;;


let tag_dos = Category_tag_v.domainset_tag_off_category_tag tag_cat;;

