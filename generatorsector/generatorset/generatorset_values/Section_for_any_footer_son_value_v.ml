(** {3 Section_for_any_footer_son_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_any_footer_son_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_any_footer_son type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

(** {6 Making} *)

let make sym_sfs soi_sec =
  match sym_sfs with
  | Section_for_any_footer_son_symbol_t.Section_for_any_footer_son_empty ->
      Section_for_any_footer_son_value_t.Section_for_any_footer_son_empty
;;

(** {6 Retrieving} *)

let retrieve tag_sfs =
  let sym_sfs = Tag_v.entity_off_tag tag_sfs in
  let soi_sec = Tag_v.sole_index_off_tag tag_sfs in
  make sym_sfs soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_any_footer_son_tag tag_sfs =
  []
;;

let group_value_list_off_section_for_any_footer_son_value val_sfs =
  match val_sfs with
  | Section_for_any_footer_son_value_t.Section_for_any_footer_son_empty -> []
;;
