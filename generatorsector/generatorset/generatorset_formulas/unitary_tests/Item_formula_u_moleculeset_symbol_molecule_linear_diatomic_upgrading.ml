open Make_test_v;;

testing "Item_formula_v with 
   Item_formula_u_moleculeset_symbol_molecule_linear_diatomic_upgrading.ml";;

(* toplevel 
   #use "Item_formula_u_moleculeset_symbol_molecule_linear_diatomic_upgrading.ml";;

*)

let nam_cod = "Item_formula_u_moleculeset_symbol_molecule_linear_diatomic_upgrading.ml";;
let nam_dos = "moleculeset";;
let nam_cat = "symbol";;
let nam_enp = "molecule_linear_diatomic";;
let nam_ite = "upgrading";;

let sel_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp)

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;

let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left sel_enp for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

(* Value_alone *)

let sel_cof_val = Contentfile_symbol_v.is_value_alone;;
let tag_cof_val = Doublet_list_v.find_if_left sel_cof_val for_enp;;
let for_cof_val = Contentfile_formula_v.retrieve tag_cof_val;;

let sel_usf_val = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf_val = Doublet_list_v.find_if_left sel_usf_val for_cof_val;;
let for_usf_val = Usagefile_formula_v.retrieve tag_usf_val;;

test_number 1 (
tag_cof_val
=
(Contentfile_symbol_t.Value_alone, [2; 7; 3; 3])
);;

test_number 2 (
tag_usf_val
  =
(Usagefile_symbol_t.Implementation, [1; 2; 7; 3; 3])
);;

test_number 3 (
 for_usf_val 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 2; 7; 3; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_only_top_symbol_t.Documenting,
  [2; 1; 2; 7; 3; 3]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
  [3; 1; 2; 7; 3; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Upgrading,
  [4; 1; 2; 7; 3; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Abbreviating,
  [5; 1; 2; 7; 3; 3]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
  [6; 1; 2; 7; 3; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Upgrading,
  [7; 1; 2; 7; 3; 3]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Querying,
  [8; 1; 2; 7; 3; 3]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
  [9; 1; 2; 7; 3; 3])]
);;

(* Upgrading *)

let sel_ite_upg = Item_symbol_v.is_upgrading;;
let tag_ite_upg = Doublet_list_v.find_if_left sel_ite_upg for_usf_val;; 
let for_ite_upg = Item_formula_v.retrieve tag_ite_upg;;

test_number 4 (
tag_ite_upg
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Upgrading,
 [4; 1; 2; 7; 3; 3])
);;

test_number 5 (
for_ite_upg
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "upgrading"),
  [1; 4; 1; 2; 7; 3; 3])]
);;

