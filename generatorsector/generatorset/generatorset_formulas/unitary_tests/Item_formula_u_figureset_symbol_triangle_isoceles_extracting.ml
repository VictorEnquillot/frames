open Make_test_v;;

testing "Item_formula_v with 
   Item_formula_u_figureset_symbol_triangle_isoceles_extracting.ml";;

(* toplevel 
   #use "Item_formula_u_figureset_symbol_triangle_isoceles_extracting.ml";;

*)

let nam_cod = "Item_formula_u_figureset_symbol_triangle_isoceles_extracting";;

let nam_dos = "figureset";;
let nam_cat = "symbol";;
let nam_enp = "triangle_isoceles";;

let sel_cat =
  match nam_cat with
  | "symbol" -> Category_symbol_v.is_symbol_off_category_symbol
  | "formula" -> Category_symbol_v.is_formula_off_category_symbol
  | _ -> failwith ("In category selection nam_cat >"^nam_cat^"< is not defined:"^nam_cod)
;;
 
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
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 3; 7; 5])
);;

test_number 2 (
tag_usf
  =
(Usagefile_symbol_t.Implementation, [1; 2; 3; 7; 5])
);;

test_number 3 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
[(Item_symbol_t.Item_all_topsons_symbol Item_only_top_symbol_t.Heading,
  [1; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_only_top_symbol_t.Documenting,
  [2; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Naming,
  [3; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Upgrading,
  [4; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Abbreviating,
  [5; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Making,
  [6; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Extracting,
  [7; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_severalparagraph_symbol
   Item_severalparagraph_symbol_t.Querying,
  [8; 1; 2; 3; 7; 5]);
 (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
  [9; 1; 2; 3; 7; 5])]
);;

(* Extracting *)

let sel_ite = Item_symbol_v.is_extracting;;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 4 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_severalparagraph_symbol
  Item_severalparagraph_symbol_t.Extracting,
 [7; 1; 2; 3; 7; 5])
);;

test_number 5 (
for_ite 
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
 =
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "extracting"),
  [1; 7; 1; 2; 3; 7; 5])]
);;

