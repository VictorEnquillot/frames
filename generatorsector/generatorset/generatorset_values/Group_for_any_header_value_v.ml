(** {3 Group_for_any_header_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_any_header_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_any_header type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_gsb soi_gro =
  match sym_gsb with
  | Group_for_any_header_symbol_t.Group_for_any_header_constant_symbol sym_gbc ->
      Group_for_any_header_value_t.Group_for_any_header_constant_value
	(Group_for_any_header_constant_value_v.make sym_gbc soi_gro)

  | Group_for_any_header_symbol_t.Group_for_any_header_top_symbol sym_gbt ->
      Group_for_any_header_value_t.Group_for_any_header_top_value
	(Group_for_any_header_top_value_v.make sym_gbt soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gsb =
  let soi_gro = Tag_v.sole_index_off_tag tag_gsb in
  let sym_gsb = Tag_v.entity_off_tag tag_gsb in
  make sym_gsb soi_gro
;;

(** {6 Extracting} *)

let camlline_value_list_off_group_for_any_header_value val_gsb =
  match val_gsb with
  | Group_for_any_header_value_t.Group_for_any_header_constant_value val_gsa ->
      Group_for_any_header_constant_value_v.camlline_value_list_off_group_for_any_header_constant_value val_gsa
  | Group_for_any_header_value_t.Group_for_any_header_top_value val_gss ->
      Group_for_any_header_top_value_v.camlline_value_list_off_group_for_any_header_top_value val_gss
;;

let string_list_off_group_for_any_header_value val_gro =
  let val_cal_l = camlline_value_list_off_group_for_any_header_value val_gro in
  List.map Camlline_value_v.string_off val_cal_l
;;

