open Make_test_v;;

testing "Item_formula_u_extracting_chemicalset_atom_zerotied.ml";;

(* toplevel 
   #use "Item_formula_u_extracting_chemicalset_atom_zerotied.ml";;
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
    Item_symbol_v.is_extracting for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let knv_l = Register_v.entry_list Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;
let cou_knv = List.length knv_l;;

test_number 1 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_v.extracting, [5; 1; 2; 3; 1; 1])
);;

test_number 2 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "extracting"),
  [1; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [2; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [3; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [4; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [5; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [6; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [7; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [8; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_esc_off_est_argument)),
  [9; 5; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
       Camlparagraph_endmarked_let_function_symbol_t.Let_ess_off_est_function)),
  [10; 5; 1; 2; 3; 1; 1])]
);;
