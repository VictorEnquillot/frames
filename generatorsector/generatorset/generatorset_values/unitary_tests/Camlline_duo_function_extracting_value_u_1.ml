(** {3 Test for camlline_value_v} *)

open Make_test_v;;

testing "Camlline_duo_function_extracting_value_u_1.ml";; 

(* toplevel 
   #use "Camlline_duo_function_extracting_value_u_1.ml";; 
*)

let nam_cod = "camlline_duo_function_extracting_value_v";;

module Camlline_formula_v = Camlline_formula_v
module Camlline_symbol_t = Camlline_symbol_t
module Camlline_symbol_v = Camlline_symbol_v
module Camlline_value_v = Camlline_value_v
module Camlparagraph_formula_v = Camlparagraph_formula_v
module Camlparagraph_symbol_v = Camlparagraph_symbol_v
module Camlparagraph_value_v = Camlparagraph_value_v
module Fileio_v = Fileio_v
module Item_formula_v = Item_formula_v
module Item_symbol_v = Item_symbol_v
module Item_tag_v = Item_tag_v
module Item_value_v = Item_value_v
module Target_data_t = Target_data_t
module Target_data_v = Target_data_v
module Target_formula_v = Target_formula_v
module Target_tag_v = Target_tag_v
module Target_data_v = Target_value_v
module Target_data_by_target_tag_provider_v = Target_data_by_target_tag_provider_v

let nam_ent = "atom_zerotied";;
let nam_cat = "symbol";;
let nam_cof = "value";;
let nam_usf = "implementation";;
let val_tar = Target_data_v.make 
    "chemicalset" nam_ent nam_cat nam_cof nam_usf "unconstrained"
;;

let tag_tar = Target_tag_v.make_of_string "current";;
Target_data_by_target_tag_provider_v.store tag_tar val_tar;;
let for_tar = Target_formula_v.retrieve tag_tar;;

let tag_caf = List.hd for_tar;;
let for_caf = Contentfile_formula_v.retrieve tag_caf ;;

let tag_ite = List.find Item_tag_v.is_item_extracting for_caf;;
let for_ite = Item_formula_v.retrieve tag_ite;;
let val_ite = Item_value_v.make tag_ite;;
let sym_ite = Tag_v.entity_off_tag tag_ite;;
let nam_ite = String.lowercase (Item_symbol_v.name sym_ite);;
let tag_cap_1 = List.nth for_ite 0;;
let sym_cap_1 = Tag_v.entity_off_tag tag_cap_1;;
let nam_cap_1 = Camlparagraph_symbol_v.name sym_cap_1;;
let for_cap_1 = Camlparagraph_formula_v.retrieve tag_cap_1;;

let tag_cal_11 = List.nth for_cap_1 0;;
let sym_cal_11 = Tag_v.entity_off_tag tag_cal_11;;
let nam_cal_11 = Camlline_symbol_v.name sym_cal_11;;
let for_cal_11 = Camlline_formula_v.retrieve tag_cal_11;;

let tag_cal_12 = List.nth for_cap_1 1;;

let for_cal_11 = Camlline_formula_v.retrieve tag_cal_11;;
let for_cal_12 = Camlline_formula_v.retrieve tag_cal_12;;

let val_cal_11 = Camlline_value_v.make tag_cal_11;;
let val_cal_12 = Camlline_value_v.make tag_cal_12;;

let tag_cap_4 = List.nth for_ite 3;;
let for_cap_4 = Camlparagraph_formula_v.retrieve tag_cap_4;;

let tag_cal_41 = List.nth for_cap_4 0;;
let tag_cal_42 = List.nth for_cap_4 1;;
let tag_cal_43 = List.nth for_cap_4 2;;

let for_cal_41 = Camlline_formula_v.retrieve tag_cal_41;;
let for_cal_42 = Camlline_formula_v.retrieve tag_cal_42;;
let for_cal_43 = Camlline_formula_v.retrieve tag_cal_43;;

let val_cal_41 = Camlline_value_v.make tag_cal_41;;
let val_cal_42 = Camlline_value_v.make tag_cal_42;;
let val_cal_43 = Camlline_value_v.make tag_cal_43;;

let nam_cfb = Target_formula_v.camlfile_bodyname_of_target_data val_tar;;
let nof_cal_11 = Format.sprintf "%s_%s_%s_%s_v.ml" nam_cfb nam_ite nam_cap_1 nam_cal_11;;
let oc_cal_11 = Fileio_v.open_out_channel_of_string_of_string_of_fullnameoffile nam_cod "oc" nof_cal_11;; 

test_number 1 (
val_cal_11
=
"let atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function"
);;

test_number 2 (
val_cal_12
=
"  | A0s_t.atom_zerotied_raregas_symbol sym_a0r -> sym_a0r"
);;

test_number 3 (
val_cal_41
=
"let atom_zerotied_cation_plusone_symbol_off_atom_zerotied_symbol sym_at0 = "
);;

test_number 4 (
val_cal_42
=
"  let sym_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0 in "
);;

test_number 5 (
val_cal_43
=
"    A0cps_v.atom_zerotied_cation_plusone_symbol_off_atom_zerotied_cation_symbol sym_a0c"
);;

Camlline_value_v.write oc_cal_11 val_cal_11;
close_out oc_cal_11;
;;
