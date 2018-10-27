(** {3 Group_for_symbol_footer_son_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_symbol_footer_son_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_footer_son type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

(** {6 Making} *)

let make sym_gfs soi_gro =
  match sym_gfs with
  | Group_for_symbol_footer_son_symbol_t.Group_for_symbol_footer_son_empty ->
      Group_for_symbol_footer_son_value_t.Group_for_symbol_footer_son_empty
;;

(** {6 Retrieving} *)

let retrieve tag_gfs =
  let sym_gfs = Tag_v.entity_off_tag tag_gfs in
  let soi_cal = Tag_v.sole_index_off_tag tag_gfs in
  make sym_gfs soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_symbol_footer_son_tag tag_gfs =
  []
;;

let camlline_value_list_off_group_for_symbol_footer_son_value val_gfs =
  match val_gfs with
  | Group_for_symbol_footer_son_value_t.Group_for_symbol_footer_son_empty -> []
;;
