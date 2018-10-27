open Make_test_v;;

testing "Camlline_upgrading_symbol_implementation_formula_u_chemicalset_chemicalset.ml";;

(* toplevel 
   #use "Camlline_upgrading_symbol_implementation_formula_u_chemicalset_chemicalset.ml";;
*)

let fnd_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let fnd_enp = (fun e -> Entity_symbol_v.string_off e = "atom_zerotied")
let fnd_cof = Contentfile_symbol_v.is_value_alone;;
let fnd_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;;
let fnd_ite = Item_symbol_v.is_upgrading;;

let sym_dos = Domainset_symbol_v.make "chemicalset";;
let soi_dos = [1];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left 
    Category_symbol_v.is_symbol_off_category_symbol for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left fnd_enp for_cat;;
let for_enp = Entity_proper_formula_u_chemicalset_symbol_atom_zerotied.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left fnd_cof for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left fnd_usf for_cof;; 
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left fnd_ite for_usf;;
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

let tag_cal_11 = List.nth for_cap_1 0;;
let tag_cal_12 = List.nth for_cap_1 1;;

let for_cal_11 = Camlline_formula_v.retrieve tag_cal_11;;
let for_cal_12 = Camlline_formula_v.retrieve tag_cal_12;;

let tag_cal_41 = List.nth for_cap_4 0;;
let for_cal_41 = Camlline_formula_v.retrieve tag_cal_41;;

let tag_cal_71 = List.nth for_cap_7 0;;
let for_cal_71 = Camlline_formula_v.retrieve tag_cal_71;;

test_number 1 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag list *)
=
[(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
   (Camlparagraph_comment_symbol_t.Item_title "upgrading"),
  [1; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
  [2; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
  [3; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [4; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [5; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
  [6; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [7; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [8; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
  [9; 7; 1; 2; 3; 1; 1]);
 (Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
   (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
     (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
       Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_ess_argument)),
  [10; 7; 1; 2; 3; 1; 1])]
);;

test_number 2 (
tag_cap_1
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_comment_symbol
  (Camlparagraph_comment_symbol_t.Item_title "upgrading"),
 [1; 7; 1; 2; 3; 1; 1])
);;

test_number 3 (
for_cap_1 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "upgrading")),
  [1; 1; 7; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 7; 1; 2; 3; 1; 1])]
);;

test_number 4 (
for_cal_11
(* :  Tag_t.tag list *)
=
[(Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     Entity_fictive_nullary_symbol_t.Empty),
  [1; 1; 1; 7; 1; 2; 3; 1; 1])]
);;

test_number 5 (
for_cal_12
(* :  Tag_t.tag list *)
=
[]
);;

test_number 6 (
tag_cap_4
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol Tag_t.tag *)
=
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  (Camlparagraph_endmarked_symbol_t.Camlparagraph_endmarked_let_symbol
    (Camlparagraph_endmarked_let_symbol_t.Camlparagraph_endmarked_let_argument_symbol
      Camlparagraph_endmarked_let_argument_symbol_t.Let_est_of_esc_argument)),
 [4; 7; 1; 2; 3; 1; 1])
);;

test_number 7 (
for_cap_4 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal),
  [1; 4; 7; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Let_ass_equal_As_vdot_ess_of_esc_space_asc_in),
  [2; 4; 7; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_duo_symbol
   (Camlline_duo_symbol_t.Camlline_duo_function_symbol
     Camlline_duo_function_symbol_t.Space_est_of_ess_space_ass),
  [3; 4; 7; 1; 2; 3; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [4; 4; 7; 1; 2; 3; 1; 1])]
);;

test_number 8 (
for_cal_41 
(* :  Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Entity_proper "atom_zerotied_anion_minusone"),
  [1; 1; 4; 7; 1; 2; 3; 1; 1]);
 (
   (Entity_symbol_t.Topentity "atom_zerotied"),
  [2; 1; 4; 7; 1; 2; 3; 1; 1])]
);;

test_number 9 (
tag_cal_71 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_duo_symbol
  (Camlline_duo_symbol_t.Camlline_duo_function_symbol
    Camlline_duo_function_symbol_t.Let_et_any_of_ec_any_space_ac_ac_equal),
 [1; 7; 7; 1; 2; 3; 1; 1])
);;

test_number 10 (
for_cal_71 
(* :  Tag_t.tag list *)
=
[(
   (Entity_symbol_t.Entity_proper "atom_zerotied_cation_plusone"),
  [1; 1; 7; 7; 1; 2; 3; 1; 1]);
 (
   (Entity_symbol_t.Topentity "atom_zerotied"),
  [2; 1; 7; 7; 1; 2; 3; 1; 1])]
);;

