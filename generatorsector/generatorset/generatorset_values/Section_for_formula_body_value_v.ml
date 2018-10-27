(** {3 Section_for_formula_body_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Section_for_formula_body_value_v";
   "Needed-by : VGNR:Section_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_ssb soi_sec =
  match sym_ssb with
  | Section_for_formula_body_symbol_t.Section_for_formula_body_builder_data_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_builder_data_value
	(Section_for_formula_body_builder_data_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_builder_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_localset_builder_value
	(Section_for_formula_body_localset_builder_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_data_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_localset_data_value
	(Section_for_formula_body_localset_data_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_son_builder_value
	(Section_for_formula_body_son_builder_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_son_top_value
	(Section_for_formula_body_son_top_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_son_top_builder_value
	(Section_for_formula_body_son_top_builder_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_data_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_son_top_data_value
	(Section_for_formula_body_son_top_data_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_symbol sym_gfa ->
      Section_for_formula_body_value_t.Section_for_formula_body_son_top_main_value
	(Section_for_formula_body_son_top_main_value_v.make sym_gfa soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_builder_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_son_top_main_builder_value
	(Section_for_formula_body_son_top_main_builder_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_top_builder_value
	(Section_for_formula_body_top_builder_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_data_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_top_builder_data_value
	(Section_for_formula_body_top_builder_data_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_data_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_top_data_value
	(Section_for_formula_body_top_data_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_top_main_builder_value
	(Section_for_formula_body_top_main_builder_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_data_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_top_main_data_value
	(Section_for_formula_body_top_main_data_value_v.make sym_gfs soi_sec)

  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_symbol sym_gfs ->
      Section_for_formula_body_value_t.Section_for_formula_body_top_value
	(Section_for_formula_body_top_value_v.make sym_gfs soi_sec)
;;

(** {6 Retrieving} *)

let retrieve tag_ssb =
  let soi_sec = Tag_v.sole_index_off_tag tag_ssb in
  let sym_ssb = Tag_v.entity_off_tag tag_ssb in
  make sym_ssb soi_sec
;;

(** {6 Extracting} *)

let group_value_list_off_section_for_formula_body_value val_ssb =
  match val_ssb with
  | Section_for_formula_body_value_t.Section_for_formula_body_builder_data_value val_gfs ->
      Section_for_formula_body_builder_data_value_v.group_value_list_off_section_for_formula_body_builder_data_value val_gfs

   | Section_for_formula_body_value_t.Section_for_formula_body_son_builder_value val_gfs ->
      Section_for_formula_body_son_builder_value_v.group_value_list_off_section_for_formula_body_son_builder_value val_gfs

  | Section_for_formula_body_value_t.Section_for_formula_body_localset_builder_value val_gfs ->
      Section_for_formula_body_localset_builder_value_v.group_value_list_off_section_for_formula_body_localset_builder_value val_gfs

  | Section_for_formula_body_value_t.Section_for_formula_body_localset_data_value val_gfs ->
      Section_for_formula_body_localset_data_value_v.group_value_list_off_section_for_formula_body_localset_data_value val_gfs
	
  | Section_for_formula_body_value_t.Section_for_formula_body_son_top_value val_gfs ->
      Section_for_formula_body_son_top_value_v.group_value_list_off_section_for_formula_body_son_top_value val_gfs
	
  | Section_for_formula_body_value_t.Section_for_formula_body_son_top_builder_value val_gfs ->
      Section_for_formula_body_son_top_builder_value_v.group_value_list_off_section_for_formula_body_son_top_builder_value val_gfs

  | Section_for_formula_body_value_t.Section_for_formula_body_son_top_data_value val_gfs ->
      Section_for_formula_body_son_top_data_value_v.group_value_list_off_section_for_formula_body_son_top_data_value val_gfs

  | Section_for_formula_body_value_t.Section_for_formula_body_son_top_main_value val_gfa ->
      Section_for_formula_body_son_top_main_value_v.group_value_list_off_section_for_formula_body_son_top_main_value val_gfa

  | Section_for_formula_body_value_t.Section_for_formula_body_son_top_main_builder_value val_gfs ->
      Section_for_formula_body_son_top_main_builder_value_v.group_value_list_off_section_for_formula_body_son_top_main_builder_value val_gfs

  | Section_for_formula_body_value_t.Section_for_formula_body_top_builder_value val_gfs ->
      Section_for_formula_body_top_builder_value_v.group_value_list_off_section_for_formula_body_top_builder_value val_gfs

  | Section_for_formula_body_value_t.Section_for_formula_body_top_builder_data_value val_gfs ->
      Section_for_formula_body_top_builder_data_value_v.group_value_list_off_section_for_formula_body_top_builder_data_value val_gfs

  | Section_for_formula_body_value_t.Section_for_formula_body_top_data_value val_gfs ->
      Section_for_formula_body_top_data_value_v.group_value_list_off_section_for_formula_body_top_data_value val_gfs

  | Section_for_formula_body_value_t.Section_for_formula_body_top_main_builder_value val_gfs ->
      Section_for_formula_body_top_main_builder_value_v.group_value_list_off_section_for_formula_body_top_main_builder_value val_gfs

  | Section_for_formula_body_value_t.Section_for_formula_body_top_main_data_value val_gfs ->
      Section_for_formula_body_top_main_data_value_v.group_value_list_off_section_for_formula_body_top_main_data_value val_gfs

  | Section_for_formula_body_value_t.Section_for_formula_body_top_value val_gfs ->
      Section_for_formula_body_top_value_v.group_value_list_off_section_for_formula_body_top_value val_gfs
;;

let string_list_off_section_for_formula_body_value val_sec =
  let val_gro_l = group_value_list_off_section_for_formula_body_value val_sec in
  List.map Group_value_v.string_list_off_group_value val_gro_l
;;

