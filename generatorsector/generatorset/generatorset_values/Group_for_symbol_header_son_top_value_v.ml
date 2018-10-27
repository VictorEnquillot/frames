(** {3 Group_for_symbol_header_son_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_symbol_header_son_top_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_header_son_top type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_symbol_header_son_top_tag tag_gst =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_symbol_header_son_top_tag 
      tag_gst 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making} *)

let make sym_gst soi_gro =
  let tag_gst = Tag_v.make sym_gst soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_symbol_header_son_top_tag tag_gst in
  match sym_gst with
  | Group_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_bare ->
      Group_for_symbol_header_son_top_value_t.Let_abbreviate_topson_bare val_cal_l

  | Group_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_ofstring ->
      Group_for_symbol_header_son_top_value_t.Let_abbreviate_topson_ofstring val_cal_l

  | Group_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function ->
      Group_for_symbol_header_son_top_value_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function val_cal_l
  | Group_for_symbol_header_son_top_symbol_t.Let_topson_notleaf_symbol_off_top_symbol_equal_function ->
      Group_for_symbol_header_son_top_value_t.Let_topson_notleaf_symbol_off_top_symbol_equal_function val_cal_l
  | Group_for_symbol_header_son_top_symbol_t.Let_top_symbol_of_topson_notleaf_symbol_argument_equal ->
      Group_for_symbol_header_son_top_value_t.Let_top_symbol_of_topson_notleaf_symbol_argument_equal val_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_cal = Tag_v.sole_index_off_tag tag_gst in
  make sym_gst soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_symbol_header_son_top_tag tag_gst =
  let val_cal_l = camlline_value_list_off_group_for_symbol_header_son_top_tag tag_gst in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_symbol_header_son_top_value val_ghc =
  match val_ghc with
  | Group_for_symbol_header_son_top_value_t.Let_abbreviate_topson_bare val_cal_l -> val_cal_l

  | Group_for_symbol_header_son_top_value_t.Let_abbreviate_topson_ofstring val_cal_l -> val_cal_l

  | Group_for_symbol_header_son_top_value_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function val_cal_l -> val_cal_l
  | Group_for_symbol_header_son_top_value_t.Let_topson_notleaf_symbol_off_top_symbol_equal_function val_cal_l -> val_cal_l
  | Group_for_symbol_header_son_top_value_t.Let_top_symbol_of_topson_notleaf_symbol_argument_equal val_cal_l -> val_cal_l
;;
