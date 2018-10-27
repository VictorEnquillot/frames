open Make_test_v;;

testing "Camlline_formula_v with 
   Test_register_for_category_formula.ml"

(* toplevel 
   #use "Test_register_for_category_formula.ml";

*)
let dump () = Register_v.dump Sole_index_v.name Generatorset_symbol_v.name Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register ;;

let register_entry_list () = 
  Register_v.entry_list
    Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register
;;

let nam_cod = "Camlline_formula_u_figureset_symbol_figureset_making";;

let nam_dos = "figureset";;
let nam_cof = "value_alone";;
let nam_enp = "figureset";;
let nam_cat = "symbol";;
let nam_usf = "Implementation_for_symbol";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;

let gss_dos = Tools_fgnr_v.register_entry_of_domainset_sole_index soi_dos;;
(*
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
*)
let tag_dos = Tag_v.make sym_dos soi_dos;;

test_number 1 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
(Domainset_symbol_t.Figureset, [2])
);;

let re_l = register_entry_list ();;  

let build_n_store sym_dos soi_dos =
  let sym_cat_l = Domainset_interface_v.make sym_dos in
  let soi_cat_l = 
    Tools_fgnr_v.sole_index_son_list_of_symbol_son_list_of_sole_index
      sym_cat_l
      soi_dos
  in
  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_category_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_cat_l soi_cat_l
;;
  
let tag_cat_l = build_n_store sym_dos soi_dos;;
let sym_cat_l = Domainset_interface_v.make sym_dos;;
let soi_cat_l = 
    Tools_fgnr_v.sole_index_son_list_of_symbol_son_list_of_sole_index
      sym_cat_l
      soi_dos;;
let tag_cat_l = List.map2 Tag_v.make sym_cat_l soi_cat_l;;

let tag_cat_l = Domainset_formula_v.build_n_store sym_dos soi_dos;;


let for_dos = Domainset_formula_v.make sym_dos soi_dos ;;

let for_dos = Domainset_formula_v.retrieve tag_dos;;


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

test_number 3 (
gss_dos
(* : Generatorset_symbol_t.generatorset_symbol *)
=
  Generatorset_symbol_t.Domainset_symbol Domainset_symbol_t.Figureset
);;

let sym_dos = Generatorset_symbol_v.domainset_symbol_off_generatorset_symbol gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;

test_number 4 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
=
  (Domainset_symbol_t.Figureset, [2])
);;

let kv_l =
  [([10; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Empty);
   ([9; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Value);
   ([8; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Tag);
   ([7; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Symbol);
   ([6; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Provider);
   ([5; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Property);
   ([4; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Path);
   ([3; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Mark);
   ([2; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Formula);
   ([1; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Any);
   ([2], Generatorset_symbol_t.Domainset_symbol Domainset_symbol_t.Figureset)]
;;

let re_l = register_entry_list ();;  

test_number 5 (
List_v.are_equivalent_of_list_of_list kv_l re_l
);;
let x = Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;

let rf_l = register_entry_list ();;  

test_number 6 (
List_v.are_equivalent_of_list_of_list kv_l rf_l
);;

let dou_cat = Category_tag_v.category_doutup_off_category_tag tag_cat;;
let tag_dos = Category_tag_v.domainset_tag_off_category_tag tag_cat;;
