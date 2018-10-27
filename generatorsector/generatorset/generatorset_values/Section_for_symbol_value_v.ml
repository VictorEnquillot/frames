(** {3 Section_for_symbol_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_sfs soi_sec =
  match sym_sfs with
  | Section_for_symbol_symbol_t.Section_for_symbol_body_symbol sym_ssb ->
      Section_for_symbol_value_t.Section_for_symbol_body_value
	(Section_for_symbol_body_value_v.make sym_ssb soi_sec)

  | Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol sym_ssf ->
      Section_for_symbol_value_t.Section_for_symbol_footer_value
	(Section_for_symbol_footer_value_v.make sym_ssf soi_sec)

 | Section_for_symbol_symbol_t.Section_for_symbol_header_symbol sym_ssh ->
      Section_for_symbol_value_t.Section_for_symbol_header_value
	(Section_for_symbol_header_value_v.make sym_ssh soi_sec)
;;

(** {6 Retrieving} *)

let retrieve tag_sfs =
  let soi_sec = Tag_v.sole_index_off_tag tag_sfs in
  let sym_sfs = Tag_v.entity_off_tag tag_sfs in
  make sym_sfs soi_sec
;;

(** {6 Extracting} *)

let group_value_list_off_section_for_symbol_value val_sfs =
  match val_sfs with
  | Section_for_symbol_value_t.Section_for_symbol_body_value val_ssb ->
      Section_for_symbol_body_value_v.group_value_list_off_section_for_symbol_body_value val_ssb

  | Section_for_symbol_value_t.Section_for_symbol_footer_value val_ssf ->
      Section_for_symbol_footer_value_v.group_value_list_off_section_for_symbol_footer_value val_ssf

  | Section_for_symbol_value_t.Section_for_symbol_header_value val_ssf ->
      Section_for_symbol_header_value_v.group_value_list_off_section_for_symbol_header_value val_ssf

;;

let string_list_off_section_for_symbol_value val_sec =
  let val_gro_l = group_value_list_off_section_for_symbol_value val_sec in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

