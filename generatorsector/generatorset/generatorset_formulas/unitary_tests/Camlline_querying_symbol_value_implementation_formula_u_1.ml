open Make_test_v;;

testing "Camlline_querying_symbol_value_implementation_formula_u_1.ml";;

(* toplevel 
   #use "Camlline_querying_symbol_value_implementation_formula_u_1.ml";;
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
    Item_symbol_v.is_querying for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let tag_cap_1 = List.nth for_ite 0;;
let tag_cap_2 = List.nth for_ite 1;;
let tag_cap_3 = List.nth for_ite 2;;
let tag_cap_4 = List.nth for_ite 3;;
let tag_cap_5 = List.nth for_ite 4;;
let tag_cap_6 = List.nth for_ite 5;;
let tag_cap_7 = List.nth for_ite 6;;

let for_cap_1 = Camlparagraph_formula_v.retrieve tag_cap_1;;
let for_cap_2 = Camlparagraph_formula_v.retrieve tag_cap_2;;
let for_cap_3 = Camlparagraph_formula_v.retrieve tag_cap_3;;
let for_cap_4 = Camlparagraph_formula_v.retrieve tag_cap_4;;
let for_cap_5 = Camlparagraph_formula_v.retrieve tag_cap_5;;
let for_cap_6 = Camlparagraph_formula_v.retrieve tag_cap_6;;
let for_cap_7 = Camlparagraph_formula_v.retrieve tag_cap_7;;

let cou_for_cap_1 = List.length for_cap_1;;
let cou_for_cap_4 = List.length for_cap_4;;
let cou_for_cap_7 = List.length for_cap_7;;

let tag_cal_41 = List.nth for_cap_4 0;;
let tag_cal_42 = List.nth for_cap_4 1;;

let for_cal_41 = Camlline_formula_v.retrieve tag_cal_41;;
let for_cal_42 = Camlline_formula_v.retrieve tag_cal_42;;

test_number 1 (
cou_for_cap_4
  =
9
);;

test_number 2 (
tag_cap_4
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
      Camlparagraph_endmarked_let_argument_symbol_t.Let_is_esc_off_est_argument)),
 [4; 6; 1; 2; 3; 1; 1])
);;

test_number 3 (
for_cap_4 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_is_eac_off_eat_space_aat_equal),
  [1; 4; 6; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.If_not_is_ess_off_est_space_ast),
  [2; 4; 6; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Then_false),
  [3; 4; 6; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Else_line),
  [4; 4; 6; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Begin_line),
  [5; 4; 6; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_ass_equal_ess_off_est_space_ast_in),
  [6; 4; 6; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Ass_vdot_is_esc_off_ess_space_ass),
  [7; 4; 6; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.End_line),
  [8; 4; 6; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [9; 4; 6; 1; 2; 3; 1; 1])]
);;

test_number 4 (
for_cal_41
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
[(
   (Entity_symbol_t.Entity_proper "atom_zerotied_anion_minusone"),
  [1; 1; 4; 6; 1; 2; 3; 1; 1]);
 (
   (Entity_symbol_t.Topentity "atom_zerotied"),
  [2; 1; 4; 6; 1; 2; 3; 1; 1])]
);;

test_number 5 (
for_cal_42
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
[(
   (Entity_symbol_t.Sonentity "atom_zerotied_anion"),
  [1; 2; 4; 6; 1; 2; 3; 1; 1]);
 (
   (Entity_symbol_t.Topentity "atom_zerotied"),
  [2; 2; 4; 6; 1; 2; 3; 1; 1])]
);;

