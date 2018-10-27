(** {3 Group_for_formula_body_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_formula_body_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_gfb soi_gro =
  match sym_gfb with
  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_alone_symbol sym_gfa ->
      Group_for_formula_body_value_t.Group_for_formula_body_builder_alone_value
	(Group_for_formula_body_builder_alone_value_v.make sym_gfa soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_builder_data_symbol sym_gfa ->
      Group_for_formula_body_value_t.Group_for_formula_body_builder_data_value
	(Group_for_formula_body_builder_data_value_v.make sym_gfa soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_data_alone_symbol sym_gfa ->
      Group_for_formula_body_value_t.Group_for_formula_body_data_alone_value
	(Group_for_formula_body_data_alone_value_v.make sym_gfa soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_builder_symbol sym_gfa ->
      Group_for_formula_body_value_t.Group_for_formula_body_localset_builder_value
	(Group_for_formula_body_localset_builder_value_v.make sym_gfa soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_localset_data_symbol sym_gfa ->
      Group_for_formula_body_value_t.Group_for_formula_body_localset_data_value
	(Group_for_formula_body_localset_data_value_v.make sym_gfa soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_builder_symbol sym_gfa ->
      Group_for_formula_body_value_t.Group_for_formula_body_main_builder_value
	(Group_for_formula_body_main_builder_value_v.make sym_gfa soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol sym_gfa ->
      Group_for_formula_body_value_t.Group_for_formula_body_main_data_value
	(Group_for_formula_body_main_data_value_v.make sym_gfa soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_son_symbol sym_gfs ->
      Group_for_formula_body_value_t.Group_for_formula_body_son_value
	(Group_for_formula_body_son_value_v.make sym_gfs soi_gro)

  | Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol sym_gfs ->
      Group_for_formula_body_value_t.Group_for_formula_body_top_value
	(Group_for_formula_body_top_value_v.make sym_gfs soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gfb =
  let soi_gro = Tag_v.sole_index_off_tag tag_gfb in
  let sym_gfb = Tag_v.entity_off_tag tag_gfb in
  make sym_gfb soi_gro
;;

(** {6 Extracting} *)

let camlline_value_list_off_group_for_formula_body_value val_gro =
  match val_gro with
  | Group_for_formula_body_value_t.Group_for_formula_body_builder_alone_value val_gfa ->
      Group_for_formula_body_builder_alone_value_v.camlline_value_list_off_group_for_formula_body_builder_alone_value val_gfa

  | Group_for_formula_body_value_t.Group_for_formula_body_builder_data_value val_gfa ->
      Group_for_formula_body_builder_data_value_v.camlline_value_list_off_group_for_formula_body_builder_data_value val_gfa

  | Group_for_formula_body_value_t.Group_for_formula_body_data_alone_value val_gfa ->
      Group_for_formula_body_data_alone_value_v.camlline_value_list_off_group_for_formula_body_data_alone_value val_gfa

  | Group_for_formula_body_value_t.Group_for_formula_body_localset_builder_value val_gfa ->
      Group_for_formula_body_localset_builder_value_v.camlline_value_list_off_group_for_formula_body_localset_builder_value val_gfa

  | Group_for_formula_body_value_t.Group_for_formula_body_localset_data_value val_gfa ->
      Group_for_formula_body_localset_data_value_v.camlline_value_list_off_group_for_formula_body_localset_data_value val_gfa

  | Group_for_formula_body_value_t.Group_for_formula_body_main_builder_value val_gfa ->
      Group_for_formula_body_main_builder_value_v.camlline_value_list_off_group_for_formula_body_main_builder_value val_gfa

  | Group_for_formula_body_value_t.Group_for_formula_body_main_data_value val_gfa ->
      Group_for_formula_body_main_data_value_v.camlline_value_list_off_group_for_formula_body_main_data_value val_gfa

  | Group_for_formula_body_value_t.Group_for_formula_body_son_value val_gfs ->
      Group_for_formula_body_son_value_v.camlline_value_list_off_group_for_formula_body_son_value val_gfs

  | Group_for_formula_body_value_t.Group_for_formula_body_top_value val_gfs ->
      Group_for_formula_body_top_value_v.camlline_value_list_off_group_for_formula_body_top_value val_gfs
;;

let string_list_off_group_for_formula_body_value val_gfb =
  let val_cal_l = camlline_value_list_off_group_for_formula_body_value val_gfb in
  List.map Camlline_value_v.string_off val_cal_l
;;

let string_list_off_group_for_formula_body_tag tag_gfb =
  let val_gfb = retrieve tag_gfb in
  string_list_off_group_for_formula_body_value val_gfb
;;

