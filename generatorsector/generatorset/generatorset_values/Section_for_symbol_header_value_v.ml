(** {3 Section_for_symbol_header_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_header_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_header type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_ssh soi_sec =
  match sym_ssh with
  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol sym_gfa ->
      Section_for_symbol_header_value_t.Section_for_symbol_header_constant_value
	(Section_for_symbol_header_constant_value_v.make sym_gfa soi_sec)

  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_son_top_symbol sym_ssh ->
      Section_for_symbol_header_value_t.Section_for_symbol_header_current_son_top_value
	(Section_for_symbol_header_current_son_top_value_v.make sym_ssh soi_sec)

  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_current_top_symbol sym_ssh ->
      Section_for_symbol_header_value_t.Section_for_symbol_header_current_top_value
	(Section_for_symbol_header_current_top_value_v.make sym_ssh soi_sec)

  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_symbol sym_ssh ->
      Section_for_symbol_header_value_t.Section_for_symbol_header_son_value
	(Section_for_symbol_header_son_value_v.make sym_ssh soi_sec)

  | Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol sym_ssh ->
      Section_for_symbol_header_value_t.Section_for_symbol_header_son_top_value
	(Section_for_symbol_header_son_top_value_v.make sym_ssh soi_sec)

;;

(** {6 Retrieving} *)

let retrieve tag_ssh =
  let soi_sec = Tag_v.sole_index_off_tag tag_ssh in
  let sym_ssh = Tag_v.entity_off_tag tag_ssh in
  make sym_ssh soi_sec
;;

(** {6 Extracting} *)

let group_value_list_off_section_for_symbol_header_value val_sec =
  match val_sec with
  | Section_for_symbol_header_value_t.Section_for_symbol_header_constant_value val_gfa ->
      Section_for_symbol_header_constant_value_v.group_value_list_off_section_for_symbol_header_constant_value val_gfa

  | Section_for_symbol_header_value_t.Section_for_symbol_header_current_son_top_value val_ssh ->
      Section_for_symbol_header_current_son_top_value_v.group_value_list_off_section_for_symbol_header_current_son_top_value val_ssh

  | Section_for_symbol_header_value_t.Section_for_symbol_header_current_top_value val_ssh ->
      Section_for_symbol_header_current_top_value_v.group_value_list_off_section_for_symbol_header_current_top_value val_ssh

  | Section_for_symbol_header_value_t.Section_for_symbol_header_son_value val_ssh ->
      Section_for_symbol_header_son_value_v.group_value_list_off_section_for_symbol_header_son_value val_ssh

 | Section_for_symbol_header_value_t.Section_for_symbol_header_son_top_value val_ssh ->
      Section_for_symbol_header_son_top_value_v.group_value_list_off_section_for_symbol_header_son_top_value val_ssh
;;

let string_list_off_section_for_symbol_header_value val_sec =
  let val_gro_l = group_value_list_off_section_for_symbol_header_value val_sec in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;




