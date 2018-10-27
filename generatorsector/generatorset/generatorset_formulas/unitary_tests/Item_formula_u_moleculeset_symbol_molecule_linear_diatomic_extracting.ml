open Make_test_v;;

testing "Item_formula_v with 
   Item_formula_u_moleculeset_symbol_molecule_linear_diatomic_extracting.ml";;

(* toplevel 
   #use "Item_formula_u_moleculeset_symbol_molecule_linear_diatomic_extracting.ml";;

*)

let nam_cod = "Item_formula_u_moleculeset_symbol_molecule_linear_diatomic_extracting.ml";;
let nam_dos = "moleculeset";;
let nam_cat = "symbol";;
let nam_enp = "molecule_linear_diatomic";;
let nam_ite = "extracting";;

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

let sel_cof = Contentfile_symbol_v.is_value_alone;;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 1 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
  (Domainset_symbol_t.Moleculeset, [7])
);;

test_number 2 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 7; 7; 7])
);;

test_number 3 (
tag_usf
  =
(Usagefile_symbol_t.Implementation, [1; 2; 7; 7; 7])
);;

test_number 4 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_only_top_symbol_t.Documenting,
  [2; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
  [3; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Upgrading,
  [4; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Abbreviating,
  [5; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
  [6; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Extracting,
  [7; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Querying,
  [8; 1; 2; 7; 7; 7]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
  [9; 1; 2; 7; 7; 7])]
);;

(* Extracting *)

let sel_ite_ext = Item_symbol_v.is_extracting;;
let tag_ite_ext = Doublet_list_v.find_if_left sel_ite_ext for_usf;; 
let for_ite_ext = Item_formula_v.retrieve tag_ite_ext;;

test_number 5 (
tag_ite_ext
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Extracting,
 [7; 1; 2; 7; 7; 7])
);;

test_number 6 (
for_ite_ext
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "extracting"),
  [1; 7; 1; 2; 7; 7; 7])]
);;

