(** {3 Group_for_formula_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_formula_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making_for_value} *)

let make sym_gff soi_gro =
  match sym_gff with
  | Group_for_formula_symbol_t.Group_for_formula_body_symbol sym_gfa ->
      Group_for_formula_value_t.Group_for_formula_body_value
	(Group_for_formula_body_value_v.make sym_gfa soi_gro)

  | Group_for_formula_symbol_t.Group_for_formula_header_symbol sym_gfs ->
      Group_for_formula_value_t.Group_for_formula_header_value
	(Group_for_formula_header_value_v.make sym_gfs soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gff =
  let soi_gro = Tag_v.sole_index_off_tag tag_gff in
  let sym_gff = Tag_v.entity_off_tag tag_gff in
  make sym_gff soi_gro
;;

(** {6 Extracting} *)

let camlline_value_list_off_group_for_formula_value val_gro =
  match val_gro with
  | Group_for_formula_value_t.Group_for_formula_body_value val_gfa ->
      Group_for_formula_body_value_v.camlline_value_list_off_group_for_formula_body_value val_gfa

  | Group_for_formula_value_t.Group_for_formula_header_value val_gfs ->
      Group_for_formula_header_value_v.camlline_value_list_off_group_for_formula_header_value val_gfs
;;

let string_list_off_group_for_formula_value val_gff =
  let val_cal_l = camlline_value_list_off_group_for_formula_value val_gff in
  List.map Camlline_value_v.string_off val_cal_l
;;

let string_list_off_group_for_formula_tag tag_gff =
  let val_gff = retrieve tag_gff in
  string_list_off_group_for_formula_value val_gff
;;

