(** {3 Section_for_symbol_body_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_body_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_body type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_sss soi_sec =
  match sym_sss with
  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_current_son_top_symbol sym_gfs ->
      Section_for_symbol_body_value_t.Section_for_symbol_body_current_son_top_value
	(Section_for_symbol_body_current_son_top_value_v.make sym_gfs soi_sec)

  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol sym_gfs ->
      Section_for_symbol_body_value_t.Section_for_symbol_body_son_value
	(Section_for_symbol_body_son_value_v.make sym_gfs soi_sec)

  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol sym_gfs ->
      Section_for_symbol_body_value_t.Section_for_symbol_body_son_top_value
	(Section_for_symbol_body_son_top_value_v.make sym_gfs soi_sec)

  | Section_for_symbol_body_symbol_t.Section_for_symbol_body_top_symbol sym_gfs ->
      Section_for_symbol_body_value_t.Section_for_symbol_body_top_value
	(Section_for_symbol_body_top_value_v.make sym_gfs soi_sec)
;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let soi_sec = Tag_v.sole_index_off_tag tag_sss in
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  make sym_sss soi_sec
;;

(** {6 Extracting} *)

let group_value_list_off_section_for_symbol_body_value val_sab =
  match val_sab with
  | Section_for_symbol_body_value_t.Section_for_symbol_body_current_son_top_value val_gfs ->
      Section_for_symbol_body_current_son_top_value_v.group_value_list_off_section_for_symbol_body_current_son_top_value val_gfs

  | Section_for_symbol_body_value_t.Section_for_symbol_body_son_value val_gfs ->
      Section_for_symbol_body_son_value_v.group_value_list_off_section_for_symbol_body_son_value val_gfs

 | Section_for_symbol_body_value_t.Section_for_symbol_body_son_top_value val_gfs ->
      Section_for_symbol_body_son_top_value_v.group_value_list_off_section_for_symbol_body_son_top_value val_gfs

  | Section_for_symbol_body_value_t.Section_for_symbol_body_top_value val_gfs ->
      Section_for_symbol_body_top_value_v.group_value_list_off_section_for_symbol_body_top_value val_gfs
;;

let string_list_off_section_for_symbol_body_value val_sec =
  let val_gro_l = group_value_list_off_section_for_symbol_body_value val_sec in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;




