(** {3 Section_for_symbol_footer_value_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_symbol_footer_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_footer type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_sss soi_sec =
  match sym_sss with
  | Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol sym_gfa ->
      Section_for_symbol_footer_value_t.Section_for_symbol_footer_top_value
	(Section_for_symbol_footer_top_value_v.make sym_gfa soi_sec)

;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let soi_sec = Tag_v.sole_index_off_tag tag_sss in
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  make sym_sss soi_sec
;;

(** {6 Extracting} *)

let group_value_list_off_section_for_symbol_footer_value val_sab =
  match val_sab with
  | Section_for_symbol_footer_value_t.Section_for_symbol_footer_top_value val_gfa ->
      Section_for_symbol_footer_top_value_v.group_value_list_off_section_for_symbol_footer_top_value val_gfa

;;

let string_list_off_section_for_symbol_footer_value val_sec =
  let val_gro_l = group_value_list_off_section_for_symbol_footer_value val_sec in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;




