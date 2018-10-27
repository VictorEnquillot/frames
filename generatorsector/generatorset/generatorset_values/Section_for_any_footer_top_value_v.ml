(** {3 Section_for_any_footer_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_any_footer_top_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_any_footer_top type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

(** {6 Making} *)

let make sym_sft soi_sec =
  match sym_sft with
  | Section_for_any_footer_top_symbol_t.Section_for_any_footer_top_empty ->
      Section_for_any_footer_top_value_t.Section_for_any_footer_top_empty
;;

(** {6 Retrieving} *)

let retrieve tag_sft =
  let sym_sft = Tag_v.entity_off_tag tag_sft in
  let soi_sec = Tag_v.sole_index_off_tag tag_sft in
  make sym_sft soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_any_footer_top_tag tag_sft =
  []
;;

let group_value_list_off_section_for_any_footer_top_value val_sft =
  match val_sft with
  | Section_for_any_footer_top_value_t.Section_for_any_footer_top_empty -> []
;;
