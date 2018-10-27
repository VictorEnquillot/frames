(** {3 Group_for_symbol_header_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_symbol_header_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_header type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make sym_gsh soi_gro =
  match sym_gsh with
  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol sym_gfa ->
      Group_for_symbol_header_value_t.Group_for_symbol_header_constant_value
	(Group_for_symbol_header_constant_value_v.make sym_gfa soi_gro)

  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_top_symbol sym_gfs ->
      Group_for_symbol_header_value_t.Group_for_symbol_header_current_top_value
	(Group_for_symbol_header_current_top_value_v.make sym_gfs soi_gro)

  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol sym_gfs ->
      Group_for_symbol_header_value_t.Group_for_symbol_header_son_top_value
	(Group_for_symbol_header_son_top_value_v.make sym_gfs soi_gro)

  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_symbol sym_gfs ->
      Group_for_symbol_header_value_t.Group_for_symbol_header_son_value
	(Group_for_symbol_header_son_value_v.make sym_gfs soi_gro)

  | Group_for_symbol_header_symbol_t.Group_for_symbol_header_current_son_top_symbol sym_gfs ->
      Group_for_symbol_header_value_t.Group_for_symbol_header_current_son_top_value
	(Group_for_symbol_header_current_son_top_value_v.make sym_gfs soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gsh =
  let soi_gro = Tag_v.sole_index_off_tag tag_gsh in
  let sym_gsh = Tag_v.entity_off_tag tag_gsh in
  make sym_gsh soi_gro
;;

(** {6 Extracting} *)

let camlline_value_list_off_group_for_symbol_header_value val_gsh =
  match val_gsh with
  | Group_for_symbol_header_value_t.Group_for_symbol_header_constant_value val_ghc ->
      Group_for_symbol_header_constant_value_v.camlline_value_list_off_group_for_symbol_header_constant_value val_ghc

  | Group_for_symbol_header_value_t.Group_for_symbol_header_current_top_value val_ghs ->
      Group_for_symbol_header_current_top_value_v.camlline_value_list_off_group_for_symbol_header_current_top_value val_ghs

 | Group_for_symbol_header_value_t.Group_for_symbol_header_son_top_value val_gst ->
      Group_for_symbol_header_son_top_value_v.camlline_value_list_off_group_for_symbol_header_son_top_value val_gst

 | Group_for_symbol_header_value_t.Group_for_symbol_header_son_value val_gst ->
      Group_for_symbol_header_son_value_v.camlline_value_list_off_group_for_symbol_header_son_value val_gst

  | Group_for_symbol_header_value_t.Group_for_symbol_header_current_son_top_value val_gst ->
      Group_for_symbol_header_current_son_top_value_v.camlline_value_list_off_group_for_symbol_header_current_son_top_value val_gst
;;

let string_list_off_group_for_symbol_header_value val_gro =
  let val_cal_l = camlline_value_list_off_group_for_symbol_header_value val_gro in
  List.map Camlline_value_v.string_off val_cal_l
;;

