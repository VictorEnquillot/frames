open Make_test_v;;

testing "Camlline_naming_symbol_value_implementation_formula_u_figureset_2.ml";;

(* toplevel 
   #use "Camlline_naming_symbol_value_implementation_formula_u_figureset_2.ml";;
*)

let sym_dos = Domainset_symbol_v.make "figureset";;
let soi_dos = [2];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left 
    Category_symbol_v.is_symbol_off_category_symbol for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "vector") for_cat;;
let for_enp = Entity_proper_formula_u_chemicalset_symbol_atom_zerotied.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_value_alone for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left 
    Usagefile_symbol_v.is_implementation_off_usagefile_symbol for_cof;; 
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left 
    Item_symbol_v.is_naming for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let tag_cap_1 = List.nth for_ite 0;;
let for_cap_1 = Camlparagraph_formula_v.retrieve tag_cap_1;;

let cou_for_cap_1 = List.length for_cap_1;;

let tag_cal_11 = List.nth for_cap_1 0;;
let tag_cal_12 = List.nth for_cap_1 1;;

let for_cal_11 = Camlline_formula_v.retrieve tag_cal_11;;
let for_cal_12 = Camlline_formula_v.retrieve tag_cal_12;;

let cou_for_cal_11 = List.length for_cal_11;;
let cou_for_cal_12 = List.length for_cal_12;;

let tag_cap_2 = List.nth for_ite 1;;
let for_cap_2 = Camlparagraph_formula_v.retrieve tag_cap_2;;

let cou_for_cap_2 = List.length for_cap_2;;

let tag_cal_21 = List.nth for_cap_2 0;;
let tag_cal_22 = List.nth for_cap_2 1;;
let tag_cal_23 = List.nth for_cap_2 2;;

let for_cal_21 = Camlline_formula_v.retrieve tag_cal_21;;
let for_cal_22 = Camlline_formula_v.retrieve tag_cal_22;;
let for_cal_23 = Camlline_formula_v.retrieve tag_cal_23;;

let cou_for_cal_21 = List.length for_cal_21;;
let cou_for_cal_22 = List.length for_cal_22;;
let cou_for_cal_23 = List.length for_cal_23;;

test_number 1 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
  [(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
     (Camlparagraph_comment_symbol_t.Item_title "naming"),
    [1; 4; 1; 2; 6; 1; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
     (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
       (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
         Camlparagraph_endmarked_let_function_symbol_t.Let_name_equal_function_for_symbol)),
    [2; 4; 1; 2; 6; 1; 2])]
);;

test_number 2 (
tag_cap_1
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "naming"),
 [1; 4; 1; 2; 6; 1; 2])
);;

test_number 3 (
for_cap_1 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "naming")),
  [1; 1; 4; 1; 2; 6; 1; 2]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 4; 1; 2; 6; 1; 2])]
);;

test_number 4 (
for_cal_11
(* :  Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     Entity_fictive_nullary_symbol_t.Empty),
  [1; 1; 1; 4; 1; 2; 6; 1; 2])]
);;

test_number 5 (
for_cal_12
(* :  Tag_t.tag list *) 
  =
[]
);;

test_number 6 (
tag_cap_2
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
      (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_function_symbol
      Camlparagraph_endmarked_let_function_symbol_t.Let_name_equal_function_for_symbol)),
 [2; 4; 1; 2; 6; 1; 2])
);;

test_number 7 (
for_cap_2 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_function_symbol
     Camlline_constant_function_symbol_t.Let_name_equal_function),
  [1; 2; 4; 1; 2; 6; 1; 2]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_function_symbol
     Camlline_uno_function_symbol_t.Pipe_Est_tdot_Est_arrow_string),
  [2; 2; 4; 1; 2; 6; 1; 2]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [3; 2; 4; 1; 2; 6; 1; 2])]
);;

test_number 8 (
for_cal_21
(* :  Tag_t.tag list *) 
  =
[]
);;

test_number 9 (
for_cal_22
(* :  Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Selfentity "vector"),
  [1; 2; 2; 4; 1; 2; 6; 1; 2])]
);;

test_number 10 (
for_cal_23
(* :  Tag_t.tag list *)
=
[]
);;


