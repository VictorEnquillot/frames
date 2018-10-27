open Make_test_v;;

testing "item_formula_v.ml with\n       Item_formula_u_heading_chemicalset_atom_zerotied.ml";;

(* toplevel 
   #use "Item_formula_u_heading_chemicalset_atom_zerotied.ml";;
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

let nam_enp = "atom_zerotied";;
let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = nam_enp) for_cat;;
let for_enp = Entity_proper_formula_u_chemicalset_symbol_atom_zerotied.retrieve tag_enp;;

(* Type *)

let tag_cof_typ = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_type_alone for_enp;; 
let for_cof_typ = Contentfile_formula_v.retrieve tag_cof_typ;;

let tag_usf_typ = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof_typ;; 
let for_usf_typ = Usagefile_formula_v.retrieve tag_usf_typ;;

let tag_ite_typ = Doublet_list_v.find_if_left 
    Item_symbol_v.is_heading for_usf_typ;; 
let for_ite_typ = Item_formula_v.retrieve tag_ite_typ;;

let knv_l = Register_v.entry_list Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;
let cou_knv = List.length knv_l;;

test_number 1 (
tag_ite_typ
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_v.heading, [1; 1; 2; 3; 1; 1])
);;

test_number 2 (
for_ite_typ
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   Camlparagraph_comment_symbol_t.Camlfile_title,
  [1; 1; 1; 2; 3; 1; 1]);]
);;


(* Value *)

let tag_cof_val = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_value_alone for_enp;; 
let for_cof_val = Contentfile_formula_v.retrieve tag_cof_val;;

let tag_usf_val = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof_val;; 
let for_usf_val = Usagefile_formula_v.retrieve tag_usf_val;;

let tag_ite_val = Doublet_list_v.find_if_left 
    Item_symbol_v.is_heading for_usf_val;; 
let for_ite_val = Item_formula_v.retrieve tag_ite_val;;

let knv_l = Register_v.entry_list Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;
let cou_knv = List.length knv_l;;

test_number 3 (
tag_ite_val
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_all_topsons_symbol Item_all_topsons_symbol_t.Ending,
   [9; 1; 2; 3; 1; 1])
);;

test_number 4 (
for_ite_val
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   Camlparagraph_comment_symbol_t.Camlfile_title,
  [1; 1; 1; 2; 3; 1; 1]);]
);;
