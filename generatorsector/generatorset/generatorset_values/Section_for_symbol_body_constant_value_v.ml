(** {3 Section_for_symbol_body_constant_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_body_constant_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_body_constant type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

(** {6 Making} *)

let make sym_sbc soi_sec =
  match sym_sbc with
  | Section_for_symbol_body_constant_symbol_t.Section_for_symbol_body_constant_empty ->
      Section_for_symbol_body_constant_value_t.Section_for_symbol_body_constant_empty
;;

(** {6 Retrieving} *)

let retrieve tag_sbc =
  let sym_sbc = Tag_v.entity_off_tag tag_sbc in
  let soi_sec = Tag_v.sole_index_off_tag tag_sbc in
  make sym_sbc soi_sec
;;

(** {6 Extracting} *)

let string_list_off_section_for_symbol_body_constant_tag tag_sbc =
  []
;;

let group_value_list_off_section_for_symbol_body_constant_value val_sbc =
  match val_sbc with
  | Section_for_symbol_body_constant_value_t.Section_for_symbol_body_constant_empty -> []
;;
