open Make_test_v;;

testing "Camlline_typing_symbol_type_implementation_formula_u_2.ml";;

(* toplevel 
   #use "Camlline_typing_symbol_type_implementation_formula_u_2.ml";;
*)

let fnd_cat = Category_symbol_v.is_symbol_off_category_symbol;;
let fnd_enp = (fun e -> Entity_symbol_v.string_off e = "atom_zerotied_anion_minusone")
let fnd_cof = Contentfile_symbol_v.is_type_alone;;
let fnd_usf = Usagefile_symbol_v.is_implementation_off_usagefile_symbol;; 
let fnd_ite = Item_symbol_v.is_typing;;

let sym_dos = Domainset_symbol_v.make "chemicalset";;
let soi_dos = [1];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left fnd_cat for_dos;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left fnd_enp for_cat;;
let for_enp = Entity_proper_formula_u_chemicalset_symbol_atom_zerotied.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left fnd_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf = Doublet_list_v.find_if_left fnd_usf for_cof;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite = Doublet_list_v.find_if_left fnd_ite for_usf;; 
let for_ite = Item_formula_v.retrieve tag_ite;;

let fnd_cap_1 = Camlparagraph_symbol_v.is_item_title;;
let fnd_cap_2 = Camlparagraph_symbol_v.is_camlparagraph_formula_symbol;;

let tag_cap_1 = Doublet_list_v.find_if_left fnd_cap_1 for_ite;;
let for_cap_1 = Camlparagraph_formula_v.retrieve tag_cap_1;;

let fnd_cal_11 = Camlline_symbol_v.is_item_title;;
let fnd_cal_12 = Camlline_symbol_v.is_empty_line;;

let tag_cal_11 = Doublet_list_v.find_if_left fnd_cal_11 for_cap_1;;
let sym_cal_11 = Tag_v.symbol_off_tag tag_cal_11;;
let for_cal_11 = Camlline_formula_v.retrieve tag_cal_11;;

let tag_cal_12 = Doublet_list_v.find_if_left fnd_cal_12 for_cap_1;;
let sym_cal_12 = Tag_v.symbol_off_tag tag_cal_12;;
let for_cal_12 = Camlline_formula_v.retrieve tag_cal_12;;

let tag_cap_2 = Doublet_list_v.find_if_left fnd_cap_2 for_ite;;
let for_cap_2 = Camlparagraph_formula_v.retrieve tag_cap_2;;

let fnd_cal_21 = Camlline_symbol_v.is_type_t_equal;;
let fnd_cal_22 = Camlline_symbol_v.is_pipe_esl;;

let tag_cal_21 = Doublet_list_v.find_if_left fnd_cal_21 for_cap_2;;
let sym_cal_21 = Tag_v.symbol_off_tag tag_cal_21;;
let for_cal_21 = Camlline_formula_v.retrieve tag_cal_21;;

let tag_cal_22 = Doublet_list_v.find_if_left fnd_cal_22 for_cap_2;;
let sym_cal_22 = Tag_v.symbol_off_tag tag_cal_22;;
let for_cal_22 = Camlline_formula_v.retrieve tag_cal_22;;

test_number 1 (
tag_cap_1
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol * Sole_index_t.sole_index *)
 =
  (Camlparagraph_symbol_t.Camlparagraph_comment_symbol
    (Camlparagraph_comment_symbol_t.Item_title "typing"),
   [1; 3; 1; 1; 6; 1; 1])
);;

test_number 2 (
for_cap_1 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
  [1; 1; 3; 1; 1; 6; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Empty_line),
  [2; 1; 3; 1; 1; 6; 1; 1])]
);;

test_number 3 (
tag_cal_11
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_constant_symbol
  (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
    (Camlline_constant_pervasive_symbol_t.Item_title "typing")),
 [1; 1; 3; 1; 1; 6; 1; 1])
);;

test_number 4 (
tag_cal_12
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
  =
(Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
      Camlline_constant_pervasive_symbol_t.Empty_line),
 [2; 1; 3; 1; 1; 6; 1; 1])
);;

test_number 5 (
for_cal_11
(* :  Tag_t.tag list *)
  =
[(Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      Entity_fictive_nullary_symbol_t.Empty),
  [1; 1; 1; 3; 1; 1; 6; 1; 1])]
);;

test_number 6 (
for_cal_12
(* :  Tag_t.tag list *)
  =
[]
);;

test_number 7 (
tag_cap_2
(* : Camlparagraph_symbol_t.camlparagraph_formula_u_symbol_formula_u_symbol_formula_u_symbol_formula_u_symbol_symbol * Sole_index_t.sole_index *)
 =
(Camlparagraph_symbol_t.Camlparagraph_endmarked_symbol
  Camlparagraph_endmarked_symbol_t.Type_definition_for_symbol,
 [2; 3; 1; 1; 6; 1; 1])
);;

test_number 8 (
for_cap_2 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
[(Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Type_est_equal),
  [1; 2; 3; 1; 1; 6; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl),
  [2; 2; 3; 1; 1; 6; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl),
  [3; 2; 3; 1; 1; 6; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl),
  [4; 2; 3; 1; 1; 6; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl),
  [5; 2; 3; 1; 1; 6; 1; 1]);
 (Camlline_symbol_t.Camlline_uno_symbol
   (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
     Camlline_uno_camltype_symbol_t.Pipe_Esl),
  [6; 2; 3; 1; 1; 6; 1; 1]);
 (Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Double_semicolon),
  [7; 2; 3; 1; 1; 6; 1; 1])]
);;

test_number 9 (
tag_cal_21
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
    Camlline_uno_camltype_symbol_t.Type_est_equal),
 [1; 2; 3; 1; 1; 6; 1; 1])
);;

test_number 10 (
tag_cal_22
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
  =
(Camlline_symbol_t.Camlline_uno_symbol
  (Camlline_uno_symbol_t.Camlline_uno_camltype_symbol
    Camlline_uno_camltype_symbol_t.Pipe_Esl),
 [2; 2; 3; 1; 1; 6; 1; 1])
);;

test_number 11 (
for_cal_21
(* :  Tag_t.tag list *)
  =
[(
   (Entity_symbol_t.Topentity "atom_zerotied_anion_minusone"),
  [1; 1; 2; 3; 1; 1; 6; 1; 1])]
);;

test_number 12 (
for_cal_22
(* :  Tag_t.tag list *)
  =
[(Entity_symbol_t.Entity_fictive_symbol
   (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
     (Entity_fictive_nullary_symbol_t.Sonnullary "f_1m")),
  [1; 2; 2; 3; 1; 1; 6; 1; 1])]
);;

