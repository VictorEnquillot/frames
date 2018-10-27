(** {3 Section_for_formula_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_formula_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_sff soi_sec =
  match sym_sff with
  | Section_for_formula_symbol_t.Section_for_formula_body_symbol sym_gfa ->
      Section_for_formula_value_t.Section_for_formula_body_value
	(Section_for_formula_body_value_v.make sym_gfa soi_sec)

  | Section_for_formula_symbol_t.Section_for_formula_header_symbol sym_gfs ->
      Section_for_formula_value_t.Section_for_formula_header_value
	(Section_for_formula_header_value_v.make sym_gfs soi_sec)

;;

(** {6 Retrieving} *)

let retrieve tag_sff =
  let soi_sec = Tag_v.sole_index_off_tag tag_sff in
  let sym_sff = Tag_v.entity_off_tag tag_sff in
  make sym_sff soi_sec
;;

(** {6 Extracting} *)

let group_value_list_off_section_for_formula_value val_sff =
  match val_sff with
  | Section_for_formula_value_t.Section_for_formula_body_value val_gfa ->
      Section_for_formula_body_value_v.group_value_list_off_section_for_formula_body_value val_gfa

  | Section_for_formula_value_t.Section_for_formula_header_value val_gfs ->
      Section_for_formula_header_value_v.group_value_list_off_section_for_formula_header_value val_gfs

;;

let string_list_off_section_for_formula_value val_sec =
  let val_gro_l = group_value_list_off_section_for_formula_value val_sec in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

