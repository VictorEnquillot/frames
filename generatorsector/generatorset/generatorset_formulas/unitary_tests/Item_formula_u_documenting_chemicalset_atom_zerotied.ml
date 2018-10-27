open Make_test_v;;

testing "Item_formula_u_documenting_chemicalset_atom_zerotied.ml";;

(* toplevel 
   #use "Item_formula_u_documenting_chemicalset_atom_zerotied.ml";;
*)


let sym_dos = Domainset_symbol_v.make "chemicalset";;
let soi_dos = [1];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left 
    Category_symbol_v.is_symbol_off_category_symbol for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "atom_zerotied") for_cat;;
let for_enp = Entity_proper_formula_u_chemicalset_symbol_atom_zerotied.retrieve tag_enp;;


let tag_cof = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_value_alone for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof;; 
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left 
    Item_symbol_v.is_item_documenting_off_item_symbol for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let knv_l = Register_v.entry_list Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;
let cou_knv = List.length knv_l;;
let knv_1_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 1) knv_l;;
let knv_2_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 2) knv_l;;
let knv_3_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 3) knv_l;;
let knv_4_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 4) knv_l;;
let knv_5_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 5) knv_l;;
let knv_6_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 6) knv_l;;
let knv_7_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 7) knv_l;;
let knv_8_l = Doublet_list_v.filter_if_left (fun k -> List.length k = 8) knv_l;;

test_number 1 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_v.documenting, [2; 1; 2; 3; 1; 1])
);;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module,
  [1; 2; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module,
  [2; 2; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module,
  [3; 2; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module,
  [4; 2; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module,
  [5; 2; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module,
  [6; 2; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module,
  [7; 2; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_module,
  [8; 2; 1; 2; 3; 1; 1])]
);;
