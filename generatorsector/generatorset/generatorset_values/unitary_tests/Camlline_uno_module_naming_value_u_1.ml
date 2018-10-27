(** {3 Test for camlline_uno_module_value_v} *)

open Make_test_v;;

testing "Camlline_uno_module_naming_value_u_1.ml";;

(* toplevel 
   #use "Camlline_uno_module_naming_value_u_1.ml";; 
*)

let nam_cod = "Camlline_uno_module_naming_value_u_1.ml";;


let tag_caf = List.hd for_tar;;
let for_caf = Contentfile_formula_v.retrieve tag_caf ;;

let tag_ite = List.find Item_tag_v.is_item_naming for_caf;;
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

let tag_cal_11 = List.nth for_cap_1 0;;
let tag_cal_21 = List.nth for_cap_2 0;;
let tag_cal_22 = List.nth for_cap_2 1;;
let tag_cal_31 = List.nth for_cap_3 0;;
let tag_cal_32 = List.nth for_cap_3 1;;
let tag_cal_41 = List.nth for_cap_4 0;;
let tag_cal_42 = List.nth for_cap_4 1;;
let tag_cal_51 = List.nth for_cap_5 0;;
let tag_cal_52 = List.nth for_cap_5 1;;
let tag_cal_61 = List.nth for_cap_6 0;;
let tag_cal_62 = List.nth for_cap_6 1;;
let tag_cal_71 = List.nth for_cap_7 0;;
let tag_cal_72 = List.nth for_cap_7 1;;

let for_cal_11 = Camlline_formula_v.retrieve tag_cal_11;;
let for_cal_21 = Camlline_formula_v.retrieve tag_cal_21;;
let for_cal_22 = Camlline_formula_v.retrieve tag_cal_22;;
let for_cal_31 = Camlline_formula_v.retrieve tag_cal_31;;
let for_cal_32 = Camlline_formula_v.retrieve tag_cal_32;;
let for_cal_41 = Camlline_formula_v.retrieve tag_cal_41;;
let for_cal_42 = Camlline_formula_v.retrieve tag_cal_42;;
let for_cal_51 = Camlline_formula_v.retrieve tag_cal_51;;
let for_cal_52 = Camlline_formula_v.retrieve tag_cal_52;;
let for_cal_61 = Camlline_formula_v.retrieve tag_cal_61;;
let for_cal_62 = Camlline_formula_v.retrieve tag_cal_62;;
let for_cal_71 = Camlline_formula_v.retrieve tag_cal_71;;
let for_cal_72 = Camlline_formula_v.retrieve tag_cal_72;;

let val_cal_11 = Camlline_value_v.make tag_cal_11;;
let val_cal_21 = Camlline_value_v.make tag_cal_21;;
let val_cal_22 = Camlline_value_v.make tag_cal_22;;
let val_cal_31 = Camlline_value_v.make tag_cal_31;;
let val_cal_32 = Camlline_value_v.make tag_cal_32;;
let val_cal_41 = Camlline_value_v.make tag_cal_41;;
let val_cal_42 = Camlline_value_v.make tag_cal_42;;
let val_cal_51 = Camlline_value_v.make tag_cal_51;;
let val_cal_52 = Camlline_value_v.make tag_cal_52;;
let val_cal_61 = Camlline_value_v.make tag_cal_61;;
let val_cal_62 = Camlline_value_v.make tag_cal_62;;
let val_cal_71 = Camlline_value_v.make tag_cal_71;;
let val_cal_72 = Camlline_value_v.make tag_cal_72;;

let val_cap_1 = Camlparagraph_value_v.make tag_cap_1;;
let val_cap_4 = Camlparagraph_value_v.make tag_cap_4;;

let val_ite = Item_value_v.make tag_ite;;

let sym_ite = Tag_v.entity_off_tag tag_ite;;
let nam_ite = String.lowercase (Item_symbol_v.name sym_ite);;
let nof_ite = Format.sprintf "%s_%s_%s_v.ml" nam_ent nam_cat nam_ite;; 
let oc_ite = Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof_ite;; 

test_number 1 (
val_ite 
(* : string list list *)
  =
[["module A0s_t = atom_zerotied_symbol_t"];
 ["module A0rs_t = atom_zerotied_raregas_symbol_t";
  "module A0rs_v = atom_zerotied_raregas_symbol_v"];
 ["module A0as_t = atom_zerotied_anion_symbol_t";
  "module A0as_v = atom_zerotied_anion_symbol_v"];
 ["module A0cs_t = atom_zerotied_cation_symbol_t";
  "module A0cs_v = atom_zerotied_cation_symbol_v"];
 ["module A0cps_t = atom_zerotied_cation_plusone_symbol_t";
  "module A0cps_v = atom_zerotied_cation_plusone_symbol_v"];
 ["module A0cps_t = atom_zerotied_cation_plustwo_symbol_t";
  "module A0cps_v = atom_zerotied_cation_plustwo_symbol_v"];
 ["module A0cps_t = atom_zerotied_cation_plusthree_symbol_t";
  "module A0cps_v = atom_zerotied_cation_plusthree_symbol_v"]]
);;

test_number 2 (
val_cal_11
(* : string *)
=
"module A0s_t = atom_zerotied_symbol_t"
);;

test_number 3 (
val_cal_21
(* : string *)
=
 "module A0rs_t = atom_zerotied_raregas_symbol_t"
);;

test_number 4 (
val_cal_22
(* : string *)
=
  "module A0rs_v = atom_zerotied_raregas_symbol_v"
);;

test_number 5 (
val_cal_31
(* : string *)
=
 "module A0as_t = atom_zerotied_anion_symbol_t"
);;

test_number 6 (
val_cal_32
(* : string *)
=
  "module A0as_v = atom_zerotied_anion_symbol_v"
);;

test_number 7 (
val_cal_41
(* : string *)
=
 "module A0cs_t = atom_zerotied_cation_symbol_t"
);;

test_number 8 (
val_cal_42
(* : string *)
=
  "module A0cs_v = atom_zerotied_cation_symbol_v"
);;

test_number 9 (
val_cal_51
(* : string *)
=
 "module A0cps_t = atom_zerotied_cation_plusone_symbol_t"
);;

test_number 10 (
val_cal_52
(* : string *)
=
  "module A0cps_v = atom_zerotied_cation_plusone_symbol_v"
);;

test_number 11 (
val_cal_61
(* : string *)
=
 "module A0cps_t = atom_zerotied_cation_plustwo_symbol_t"
);;

test_number 12 (
val_cal_62
(* : string *)
=
  "module A0cps_v = atom_zerotied_cation_plustwo_symbol_v"
);;

test_number 13 (
val_cal_71
(* : string *)
=
 "module A0cps_t = atom_zerotied_cation_plusthree_symbol_t"
);;

test_number 14 (
val_cal_72
(* : string *)
=
  "module A0cps_v = atom_zerotied_cation_plusthree_symbol_v"
);;

Item_value_v.write oc_ite val_ite;
close_out oc_ite;
;;
