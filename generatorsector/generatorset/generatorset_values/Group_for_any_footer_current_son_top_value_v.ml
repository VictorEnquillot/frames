(** {3 Group_for_any_footer_current_son_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_any_footer_current_son_top_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_any_footer_current_son_top type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

(** {6 Making} *)

let make sym_gst soi_gro =
  match sym_gst with
  | Group_for_any_footer_current_son_top_symbol_t.Group_for_any_footer_current_son_top_empty ->
      Group_for_any_footer_current_son_top_value_t.Group_for_any_footer_current_son_top_empty
;;

(** {6 Retrieving} *)

let retrieve tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_cal = Tag_v.sole_index_off_tag tag_gst in
  make sym_gst soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_any_footer_current_son_top_tag tag_gst =
  []
;;

let camlline_value_list_off_group_for_any_footer_current_son_top_value val_gst =
  match val_gst with
  | Group_for_any_footer_current_son_top_value_t.Group_for_any_footer_current_son_top_empty -> []
;;
