(** {3 Group_for_formula_body_son_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_formula_body_son_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_gbs soi_gro =
  match sym_gbs with
  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_builder_symbol sym_gfa ->
      Group_for_formula_body_son_value_t.Group_for_formula_body_son_builder_value
	(Group_for_formula_body_son_builder_value_v.make sym_gfa soi_gro)

  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_symbol sym_gfs ->
      Group_for_formula_body_son_value_t.Group_for_formula_body_son_top_value
	(Group_for_formula_body_son_top_value_v.make sym_gfs soi_gro)

  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_builder_symbol sym_gfs ->
      Group_for_formula_body_son_value_t.Group_for_formula_body_son_top_builder_value
	(Group_for_formula_body_son_top_builder_value_v.make sym_gfs soi_gro)

  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_data_symbol sym_gfs ->
      Group_for_formula_body_son_value_t.Group_for_formula_body_son_top_data_value
	(Group_for_formula_body_son_top_data_value_v.make sym_gfs soi_gro)

  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_symbol sym_gfs ->
      Group_for_formula_body_son_value_t.Group_for_formula_body_son_top_main_value
	(Group_for_formula_body_son_top_main_value_v.make sym_gfs soi_gro)

  | Group_for_formula_body_son_symbol_t.Group_for_formula_body_son_top_main_builder_symbol sym_gfs ->
      Group_for_formula_body_son_value_t.Group_for_formula_body_son_top_main_builder_value
	(Group_for_formula_body_son_top_main_builder_value_v.make sym_gfs soi_gro)

;;

(** {6 Retrieving} *)

let retrieve tag_gbs =
  let soi_gro = Tag_v.sole_index_off_tag tag_gbs in
  let sym_gbs = Tag_v.entity_off_tag tag_gbs in
  make sym_gbs soi_gro
;;

(** {6 Extracting} *)

let camlline_value_list_off_group_for_formula_body_son_value val_gro =
  match val_gro with
  | Group_for_formula_body_son_value_t.Group_for_formula_body_son_builder_value val_gfa ->
      Group_for_formula_body_son_builder_value_v.camlline_value_list_off_group_for_formula_body_son_builder_value val_gfa

  | Group_for_formula_body_son_value_t.Group_for_formula_body_son_top_value val_gfs ->
      Group_for_formula_body_son_top_value_v.camlline_value_list_off_group_for_formula_body_son_top_value val_gfs

  | Group_for_formula_body_son_value_t.Group_for_formula_body_son_top_builder_value val_gfs ->
      Group_for_formula_body_son_top_builder_value_v.camlline_value_list_off_group_for_formula_body_son_top_builder_value val_gfs

  | Group_for_formula_body_son_value_t.Group_for_formula_body_son_top_data_value val_gfs ->
      Group_for_formula_body_son_top_data_value_v.camlline_value_list_off_group_for_formula_body_son_top_data_value val_gfs

 | Group_for_formula_body_son_value_t.Group_for_formula_body_son_top_main_value val_gfs ->
      Group_for_formula_body_son_top_main_value_v.camlline_value_list_off_group_for_formula_body_son_top_main_value val_gfs

  | Group_for_formula_body_son_value_t.Group_for_formula_body_son_top_main_builder_value val_gfs ->
      Group_for_formula_body_son_top_main_builder_value_v.camlline_value_list_off_group_for_formula_body_son_top_main_builder_value val_gfs

;;

let string_list_off_group_for_formula_body_son_value val_gbs =
  let val_cal_l = camlline_value_list_off_group_for_formula_body_son_value val_gbs in
  List.map Camlline_value_v.string_off val_cal_l
;;

let string_list_off_group_for_formula_body_son_tag tag_gbs =
  let val_gbs = retrieve tag_gbs in
  string_list_off_group_for_formula_body_son_value val_gbs
;;

