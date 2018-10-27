(** {3 Section_for_any_header_son_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_any_header_son_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_any_header_son type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

(** {6 Making} *)

let make sym_shs soi_sec =
  match sym_shs with
  | Section_for_any_header_son_symbol_t.Section_for_any_header_son_empty ->
      Section_for_any_header_son_value_t.Section_for_any_header_son_empty
;;

(** {6 Retrieving} *)

let retrieve tag_shs =
  let sym_shs = Tag_v.entity_off_tag tag_shs in
  let soi_sec = Tag_v.sole_index_off_tag tag_shs in
  make sym_shs soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_any_header_son_tag tag_shs =
  []
;;

let group_value_list_off_section_for_any_header_son_value val_shs =
  match val_shs with
  | Section_for_any_header_son_value_t.Section_for_any_header_son_empty -> []
;;
