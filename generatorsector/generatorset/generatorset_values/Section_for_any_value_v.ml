(** {3 Section_for_any_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_any_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_any type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_sfa soi_sec =
  match sym_sfa with
  | Section_for_any_symbol_t.Section_for_any_body_symbol sym_gab ->
      Section_for_any_value_t.Section_for_any_body_value
	(Section_for_any_body_value_v.make sym_gab soi_sec)

  | Section_for_any_symbol_t.Section_for_any_footer_symbol sym_gaf ->
      Section_for_any_value_t.Section_for_any_footer_value
	(Section_for_any_footer_value_v.make sym_gaf soi_sec)

  | Section_for_any_symbol_t.Section_for_any_header_symbol sym_gah ->
      Section_for_any_value_t.Section_for_any_header_value
	(Section_for_any_header_value_v.make sym_gah soi_sec)

;;

(** {6 Retrieving} *)

let retrieve tag_sfa =
  let soi_sec = Tag_v.sole_index_off_tag tag_sfa in
  let sym_sfa = Tag_v.entity_off_tag tag_sfa in
  make sym_sfa soi_sec
;;

(** {6 Extracting} *)

let group_value_list_off_section_for_any_value val_sfa =
  match val_sfa with
  | Section_for_any_value_t.Section_for_any_body_value val_gfa ->
      Section_for_any_body_value_v.group_value_list_off_section_for_any_body_value val_gfa

  | Section_for_any_value_t.Section_for_any_footer_value val_gfs ->
      Section_for_any_footer_value_v.group_value_list_off_section_for_any_footer_value val_gfs

  | Section_for_any_value_t.Section_for_any_header_value val_gfs ->
      Section_for_any_header_value_v.group_value_list_off_section_for_any_header_value val_gfs

;;

let string_list_off_section_for_any_value val_sec =
  let val_gro_l = group_value_list_off_section_for_any_value val_sec in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

