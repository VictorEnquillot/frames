(** {3 Group_for_formula_body_top
_formula_v} *)

(** {3 Group_for_formula_body_top_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_for_formula_body_top_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gbt = 
  match for_gbt with
  | Group_for_formula_body_top_formula_t.Group_for_formula_body_top_alone_formula for_cc1 ->
      Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_alone_symbol
        (Group_for_formula_body_top_alone_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_body_top_formula_t.Group_for_formula_body_top_builder_formula for_cc2 ->
      Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_symbol
        (Group_for_formula_body_top_builder_formula_v.symbol_of_formula for_cc2)

  | Group_for_formula_body_top_formula_t.Group_for_formula_body_top_builder_data_formula for_cc3 ->
      Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_data_symbol
        (Group_for_formula_body_top_builder_data_formula_v.symbol_of_formula for_cc3)

  | Group_for_formula_body_top_formula_t.Group_for_formula_body_top_data_formula for_cc4 ->
      Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_data_symbol
        (Group_for_formula_body_top_data_formula_v.symbol_of_formula for_cc4)

  | Group_for_formula_body_top_formula_t.Group_for_formula_body_top_main_formula for_cc5 ->
      Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol
        (Group_for_formula_body_top_main_formula_v.symbol_of_formula for_cc5)

;;

(** {6 Naming_for_formula} *)

let name for_gbt =
  let sym_gbt = symbol_of_formula for_gbt in
  Group_for_formula_body_top_symbol_v.name sym_gbt
;;
(* ***
let longname for_gbt =
  let sym_gbt = symbol_of_formula for_gbt in
  Group_for_formula_body_top_symbol_v.longname sym_gbt
;;

let string_off for_gbt =
  let sym_gbt = symbol_of_formula for_gbt in
  Group_for_formula_body_top_symbol_v.string_off sym_gbt
;;

let fullname for_gbt =
  let sym_gbt = symbol_of_formula for_gbt in
  Group_for_formula_body_top_symbol_v.longname sym_gbt
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_gbt soi_gro =
  match sym_gbt with 
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_alone_symbol sym_cc1 ->
      Group_for_formula_body_top_formula_t.Group_for_formula_body_top_alone_formula 
        (Group_for_formula_body_top_alone_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_symbol sym_cc2 ->
      Group_for_formula_body_top_formula_t.Group_for_formula_body_top_builder_formula 
        (Group_for_formula_body_top_builder_formula_v.make sym_cc2 soi_gro)

  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_data_symbol sym_cc3 ->
      Group_for_formula_body_top_formula_t.Group_for_formula_body_top_builder_data_formula 
        (Group_for_formula_body_top_builder_data_formula_v.make sym_cc3 soi_gro)

  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_data_symbol sym_cc4 ->
      Group_for_formula_body_top_formula_t.Group_for_formula_body_top_data_formula 
        (Group_for_formula_body_top_data_formula_v.make sym_cc4 soi_gro)

  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol sym_cc5 ->
      Group_for_formula_body_top_formula_t.Group_for_formula_body_top_main_formula 
        (Group_for_formula_body_top_main_formula_v.make sym_cc5 soi_gro)

;;

(** {6 Retrieving} *)

let retrieve tag_gbt =
  let soi_gro = Tag_v.sole_index_off_tag tag_gbt in
  let sym_gbt = Tag_v.entity_off_tag tag_gbt in
  make sym_gbt soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_formula_body_top_formula for_gbt =
  match for_gbt with 
  | Group_for_formula_body_top_formula_t.Group_for_formula_body_top_alone_formula for_cc1 ->
        Group_for_formula_body_top_alone_formula_v.camlline_tag_list_off_group_for_formula_body_top_alone_formula for_cc1

  | Group_for_formula_body_top_formula_t.Group_for_formula_body_top_builder_formula for_cc2 ->
        Group_for_formula_body_top_builder_formula_v.camlline_tag_list_off_group_for_formula_body_top_builder_formula for_cc2

  | Group_for_formula_body_top_formula_t.Group_for_formula_body_top_builder_data_formula for_cc3 ->
        Group_for_formula_body_top_builder_data_formula_v.camlline_tag_list_off_group_for_formula_body_top_builder_data_formula for_cc3

  | Group_for_formula_body_top_formula_t.Group_for_formula_body_top_data_formula for_cc4 ->
        Group_for_formula_body_top_data_formula_v.camlline_tag_list_off_group_for_formula_body_top_data_formula for_cc4

  | Group_for_formula_body_top_formula_t.Group_for_formula_body_top_main_formula for_cc5 ->
        Group_for_formula_body_top_main_formula_v.camlline_tag_list_off_group_for_formula_body_top_main_formula for_cc5

;;

let camlline_tag_list_off_group_for_formula_body_top_tag tag_gbt =
  let for_gbt = retrieve tag_gbt in
  camlline_tag_list_off_group_for_formula_body_top_formula for_gbt
;;
    
(** {6 Iterating_for_formula_for_formula_body_top} *)

let map f_of_tag_cal for_gbt = 
  let tag_cal_l = camlline_tag_list_off_group_for_formula_body_top_formula for_gbt in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_gbt = 
  let tag_cal_l = camlline_tag_list_off_group_for_formula_body_top_formula for_gbt in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_gbt_1 for_gbt_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_formula_body_top_formula for_gbt_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_formula_body_top_formula for_gbt_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_gbt_1 for_gbt_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_formula_body_top_formula for_gbt_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_formula_body_top_formula for_gbt_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;

