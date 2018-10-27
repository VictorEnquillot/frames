(** {3 Group_for_symbol_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_symbol_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_gfs soi_gro =
  match sym_gfs with
  | Group_for_symbol_symbol_t.Group_for_symbol_body_symbol sym_gsb ->
      Group_for_symbol_value_t.Group_for_symbol_body_value
	(Group_for_symbol_body_value_v.make sym_gsb soi_gro)

  | Group_for_symbol_symbol_t.Group_for_symbol_footer_symbol sym_gsf ->
      Group_for_symbol_value_t.Group_for_symbol_footer_value
	(Group_for_symbol_footer_value_v.make sym_gsf soi_gro)

  | Group_for_symbol_symbol_t.Group_for_symbol_header_symbol sym_gsh ->
      Group_for_symbol_value_t.Group_for_symbol_header_value
	(Group_for_symbol_header_value_v.make sym_gsh soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gfs =
  let soi_gro = Tag_v.sole_index_off_tag tag_gfs in
  let sym_gfs = Tag_v.entity_off_tag tag_gfs in
  make sym_gfs soi_gro
;;

(** {6 Extracting} *)

let camlline_value_list_off_group_for_symbol_value val_gro =
  match val_gro with
  | Group_for_symbol_value_t.Group_for_symbol_body_value val_gsb ->
      Group_for_symbol_body_value_v.camlline_value_list_off_group_for_symbol_body_value val_gsb

  | Group_for_symbol_value_t.Group_for_symbol_footer_value val_gsf ->
      Group_for_symbol_footer_value_v.camlline_value_list_off_group_for_symbol_footer_value val_gsf

  | Group_for_symbol_value_t.Group_for_symbol_header_value val_gsh ->
      Group_for_symbol_header_value_v.camlline_value_list_off_group_for_symbol_header_value val_gsh
;;

let string_list_off_group_for_symbol_value val_gro =
  let val_cal_l = camlline_value_list_off_group_for_symbol_value val_gro in
  List.map Camlline_value_v.string_off val_cal_l
;;

