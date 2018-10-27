(** {3 Group_for_formula_body_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Group_for_formula_body_formula_v";
   "Needed-by : FGNR:Group_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlline";
   "Builder_data : Camlline";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gfb = 
  match for_gfb with
  | Group_for_formula_body_formula_t.Group_for_formula_body_builder_alone_formula for_cc1 ->
      Group_for_formula_body_symbol_t.Group_for_formula_body_builder_alone_symbol
        (Group_for_formula_body_builder_alone_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_body_formula_t.Group_for_formula_body_builder_data_formula for_cc1 ->
      Group_for_formula_body_symbol_t.Group_for_formula_body_builder_data_symbol
        (Group_for_formula_body_builder_data_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_body_formula_t.Group_for_formula_body_data_alone_formula for_cc1 ->
      Group_for_formula_body_symbol_t.Group_for_formula_body_data_alone_symbol
        (Group_for_formula_body_data_alone_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_body_formula_t.Group_for_formula_body_localset_builder_formula for_cc1 ->
      Group_for_formula_body_symbol_t.Group_for_formula_body_localset_builder_symbol
        (Group_for_formula_body_localset_builder_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_body_formula_t.Group_for_formula_body_localset_data_formula for_cc1 ->
      Group_for_formula_body_symbol_t.Group_for_formula_body_localset_data_symbol
        (Group_for_formula_body_localset_data_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_body_formula_t.Group_for_formula_body_main_builder_formula for_cc1 ->
      Group_for_formula_body_symbol_t.Group_for_formula_body_main_builder_symbol
        (Group_for_formula_body_main_builder_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_body_formula_t.Group_for_formula_body_main_data_formula for_cc1 ->
      Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol
        (Group_for_formula_body_main_data_formula_v.symbol_of_formula for_cc1)

  | Group_for_formula_body_formula_t.Group_for_formula_body_son_formula for_cc3 ->
      Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol
        (Group_for_formula_body_son_formula_v.symbol_of_formula for_cc3)

  | Group_for_formula_body_formula_t.Group_for_formula_body_top_formula for_cc6 ->
      Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol
        (Group_for_formula_body_top_formula_v.symbol_of_formula for_cc6)

;;

(** {6 Naming_for_formula} *)

let name for_gfb =
  let sym_gfb = symbol_of_formula for_gfb in
  Group_for_formula_body_symbol_v.name sym_gfb
;;
(* ***
let longname for_gfb =
  let sym_gfb = symbol_of_formula for_gfb in
  Group_for_formula_body_symbol_v.longname sym_gfb
;;

let string_off for_gfb =
  let sym_gfb = symbol_of_formula for_gfb in
  Group_for_formula_body_symbol_v.string_off sym_gfb
;;

let fullname for_gfb =
  let sym_gfb = symbol_of_formula for_gfb in
  Group_for_formula_body_symbol_v.longname sym_gfb
;;
*** *)

(** {6 Making_for_formula} *)

let make sym_gfb soi_gro =
  match sym_gfb with 
  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_alone_symbol sym_cc1 ->
      Group_for_formula_body_formula_t.Group_for_formula_body_builder_alone_formula 
        (Group_for_formula_body_builder_alone_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_data_symbol sym_cc1 ->
      Group_for_formula_body_formula_t.Group_for_formula_body_builder_data_formula 
        (Group_for_formula_body_builder_data_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_data_alone_symbol sym_cc1 ->
      Group_for_formula_body_formula_t.Group_for_formula_body_data_alone_formula 
        (Group_for_formula_body_data_alone_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_builder_symbol sym_cc1 ->
      Group_for_formula_body_formula_t.Group_for_formula_body_localset_builder_formula 
        (Group_for_formula_body_localset_builder_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_data_symbol sym_cc1 ->
      Group_for_formula_body_formula_t.Group_for_formula_body_localset_data_formula 
        (Group_for_formula_body_localset_data_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_builder_symbol sym_cc1 ->
      Group_for_formula_body_formula_t.Group_for_formula_body_main_builder_formula 
        (Group_for_formula_body_main_builder_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol sym_cc1 ->
      Group_for_formula_body_formula_t.Group_for_formula_body_main_data_formula 
        (Group_for_formula_body_main_data_formula_v.make sym_cc1 soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol sym_cc3 ->
      Group_for_formula_body_formula_t.Group_for_formula_body_son_formula 
        (Group_for_formula_body_son_formula_v.make sym_cc3 soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol sym_cc7 ->
      Group_for_formula_body_formula_t.Group_for_formula_body_top_formula 
        (Group_for_formula_body_top_formula_v.make sym_cc7 soi_gro)

;;

(** {6 Retrieving} *)

let retrieve tag_gfb =
  let soi_gro = Tag_v.sole_index_off_tag tag_gfb in
  let sym_gfb = Tag_v.entity_off_tag tag_gfb in
  make sym_gfb soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_formula_body_formula for_gfb =
  match for_gfb with 
  | Group_for_formula_body_formula_t.Group_for_formula_body_builder_alone_formula for_cc1 ->
        Group_for_formula_body_builder_alone_formula_v.camlline_tag_list_off_group_for_formula_body_builder_alone_formula for_cc1

  | Group_for_formula_body_formula_t.Group_for_formula_body_builder_data_formula for_cc1 ->
        Group_for_formula_body_builder_data_formula_v.camlline_tag_list_off_group_for_formula_body_builder_data_formula for_cc1

  | Group_for_formula_body_formula_t.Group_for_formula_body_data_alone_formula for_cc1 ->
        Group_for_formula_body_data_alone_formula_v.camlline_tag_list_off_group_for_formula_body_data_alone_formula for_cc1

  | Group_for_formula_body_formula_t.Group_for_formula_body_localset_builder_formula for_cc1 ->
        Group_for_formula_body_localset_builder_formula_v.camlline_tag_list_off_group_for_formula_body_localset_builder_formula for_cc1

  | Group_for_formula_body_formula_t.Group_for_formula_body_localset_data_formula for_cc1 ->
        Group_for_formula_body_localset_data_formula_v.camlline_tag_list_off_group_for_formula_body_localset_data_formula for_cc1

  | Group_for_formula_body_formula_t.Group_for_formula_body_main_builder_formula for_cc1 ->
        Group_for_formula_body_main_builder_formula_v.camlline_tag_list_off_group_for_formula_body_main_builder_formula for_cc1

  | Group_for_formula_body_formula_t.Group_for_formula_body_main_data_formula for_cc1 ->
        Group_for_formula_body_main_data_formula_v.camlline_tag_list_off_group_for_formula_body_main_data_formula for_cc1

  | Group_for_formula_body_formula_t.Group_for_formula_body_son_formula for_cc3 ->
        Group_for_formula_body_son_formula_v.camlline_tag_list_off_group_for_formula_body_son_formula for_cc3

  | Group_for_formula_body_formula_t.Group_for_formula_body_top_formula for_cc6 ->
        Group_for_formula_body_top_formula_v.camlline_tag_list_off_group_for_formula_body_top_formula for_cc6

;;

let camlline_tag_list_off_group_for_formula_body_tag tag_gfb =
  let for_gfb = retrieve tag_gfb in
  camlline_tag_list_off_group_for_formula_body_formula for_gfb
;;
    
(** {6 Iterating_for_formula_for_formula_body} *)

let map f_of_tag_cal for_gfb = 
  let tag_cal_l = camlline_tag_list_off_group_for_formula_body_formula for_gfb in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_gfb = 
  let tag_cal_l = camlline_tag_list_off_group_for_formula_body_formula for_gfb in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_gfb_1 for_gfb_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_formula_body_formula for_gfb_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_formula_body_formula for_gfb_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_gfb_1 for_gfb_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_formula_body_formula for_gfb_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_formula_body_formula for_gfb_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;


