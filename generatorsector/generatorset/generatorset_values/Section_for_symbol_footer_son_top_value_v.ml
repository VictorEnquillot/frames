(** {3 Section_for_symbol_footer_son_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_footer_son_top_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_footer_son type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_son_top_value Datastructure} *)

(** {6 Making} *)

let make sym_sst soi_sec =
  match sym_sst with
  | Section_for_symbol_footer_son_top_symbol_t.Section_for_symbol_footer_son_top_empty ->
      Section_for_symbol_footer_son_top_value_t.Section_for_symbol_footer_son_top_empty
;;

(** {6 Retrieving} *)

let retrieve tag_sst =
  let sym_sst = Tag_v.entity_off_tag tag_sst in
  let soi_sec = Tag_v.sole_index_off_tag tag_sst in
  make sym_sst soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_symbol_footer_son_top_tag tag_sst =
  []
;;

let group_value_list_off_section_for_symbol_footer_son_top_value val_sst =
  match val_sst with
  | Section_for_symbol_footer_son_top_value_t.Section_for_symbol_footer_son_top_empty -> []
;;
