open Make_test_v;;

testing "Camlline_heading_symbol_value_implementation_formula_u_1.ml";;

(* toplevel 
   #use "Camlline_heading_symbol_value_implementation_formula_u_1.ml";;
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
    Item_symbol_v.is_heading for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let tag_cap_1 = List.nth for_ite 0;;
let for_cap_1 = Camlparagraph_formula_v.retrieve tag_cap_1;;

let cou_for_cap_1 = List.length for_cap_1;;

let tag_cal_11 = List.nth for_cap_1 0;;
let tag_cal_12 = List.nth for_cap_1 1;;
let tag_cal_13 = List.nth for_cap_1 2;;

let for_cal_11 = Camlline_formula_v.retrieve tag_cal_11;;
let for_cal_12 = Camlline_formula_v.retrieve tag_cal_12;;
let for_cal_13 = Camlline_formula_v.retrieve tag_cal_13;;
let cou_for_cal_11 = List.length for_cal_11;;
let cou_for_cal_12 = List.length for_cal_12;;
let cou_for_cal_13 = List.length for_cal_13;;

test_number 1 (
cou_for_cap_1
  =
3
);;

test_number 2 (
tag_cap_1
(* : Item_upgrading_symbol_value_implementation_formula_v.Tsisdcs_v.Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  Camlparagraph_comment_symbol_t.Camlfile_title,
 [1; 1; 1; 2; 3; 1; 1])
);;

test_number 3 (
for_cap_1 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol Camlline_uno_symbol_t.Camlfile_title,
  [1; 1; 1; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 1; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Let_nam_cod_equal_eat_vdot_ml),
  [3; 1; 1; 1; 2; 3; 1; 1])]
);;

test_number 4 (
for_cal_11
(* :  Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Topentity "atom_zerotied"),
  [1; 1; 1; 1; 1; 2; 3; 1; 1])]
);;

test_number 5 (
for_cal_12
(* :  Tag_t.tag list *) 
  =
[]
);;

test_number 6 (
for_cal_13
(* :  Tag_t.tag list *) 
  =
[(
   (Entity_symbol_t.Topentity "atom_zerotied"),
  [1; 3; 1; 1; 1; 2; 3; 1; 1])]
);;

