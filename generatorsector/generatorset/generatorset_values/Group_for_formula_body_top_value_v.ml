(** {3 Group_for_formula_body_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_formula_body_top_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_gbt soi_gro =
  match sym_gbt with
  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_alone_symbol sym_gfa ->
      Group_for_formula_body_top_value_t.Group_for_formula_body_top_alone_value
	(Group_for_formula_body_top_alone_value_v.make sym_gfa soi_gro)

  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_symbol sym_gfs ->
      Group_for_formula_body_top_value_t.Group_for_formula_body_top_builder_value
	(Group_for_formula_body_top_builder_value_v.make sym_gfs soi_gro)

  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_builder_data_symbol sym_gfs ->
      Group_for_formula_body_top_value_t.Group_for_formula_body_top_builder_data_value
	(Group_for_formula_body_top_builder_data_value_v.make sym_gfs soi_gro)

  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_data_symbol sym_gfs ->
      Group_for_formula_body_top_value_t.Group_for_formula_body_top_data_value
	(Group_for_formula_body_top_data_value_v.make sym_gfs soi_gro)

  | Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol sym_gfs ->
      Group_for_formula_body_top_value_t.Group_for_formula_body_top_main_value
	(Group_for_formula_body_top_main_value_v.make sym_gfs soi_gro)

;;

(** {6 Retrieving} *)

let retrieve tag_gbt =
  let soi_gro = Tag_v.sole_index_off_tag tag_gbt in
  let sym_gbt = Tag_v.entity_off_tag tag_gbt in
  make sym_gbt soi_gro
;;

(** {6 Extracting} *)

let camlline_value_list_off_group_for_formula_body_top_value val_gro =
  match val_gro with
  | Group_for_formula_body_top_value_t.Group_for_formula_body_top_alone_value val_gfa ->
      Group_for_formula_body_top_alone_value_v.camlline_value_list_off_group_for_formula_body_top_alone_value val_gfa

  | Group_for_formula_body_top_value_t.Group_for_formula_body_top_builder_value val_gfs ->
      Group_for_formula_body_top_builder_value_v.camlline_value_list_off_group_for_formula_body_top_builder_value val_gfs

  | Group_for_formula_body_top_value_t.Group_for_formula_body_top_builder_data_value val_gfs ->
      Group_for_formula_body_top_builder_data_value_v.camlline_value_list_off_group_for_formula_body_top_builder_data_value val_gfs

 | Group_for_formula_body_top_value_t.Group_for_formula_body_top_data_value val_gfs ->
      Group_for_formula_body_top_data_value_v.camlline_value_list_off_group_for_formula_body_top_data_value val_gfs

  | Group_for_formula_body_top_value_t.Group_for_formula_body_top_main_value val_gfs ->
      Group_for_formula_body_top_main_value_v.camlline_value_list_off_group_for_formula_body_top_main_value val_gfs

;;

let string_list_off_group_for_formula_body_top_value val_gbt =
  let val_cal_l = camlline_value_list_off_group_for_formula_body_top_value val_gbt in
  List.map Camlline_value_v.string_off val_cal_l
;;

let string_list_off_group_for_formula_body_top_tag tag_gbt =
  let val_gbt = retrieve tag_gbt in
  string_list_off_group_for_formula_body_top_value val_gbt
;;

