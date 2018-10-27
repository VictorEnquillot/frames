(** {3 Group_for_symbol_footer_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_symbol_footer_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_header type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_symbol_footer_tag tag_gsf =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_symbol_footer_tag 
      tag_gsf 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making} *)

let make sym_gsf soi_gro =
  match sym_gsf with
  | Group_for_symbol_footer_symbol_t.Group_for_symbol_footer_top_symbol sym_gbc ->
      Group_for_symbol_footer_value_t.Group_for_symbol_footer_top_value
	(Group_for_symbol_footer_top_value_v.make sym_gbc soi_gro)
;;

(** {6 Retrieving} *)

let retrieve tag_gsf =
  let soi_gro = Tag_v.sole_index_off_tag tag_gsf in
  let sym_gsf = Tag_v.entity_off_tag tag_gsf in
  make sym_gsf soi_gro
;;

(** {6 Extracting} *)

let camlline_value_list_off_group_for_symbol_footer_value val_gsf =
  match val_gsf with
  | Group_for_symbol_footer_value_t.Group_for_symbol_footer_top_value val_gsf ->
      Group_for_symbol_footer_top_value_v.camlline_value_list_off_group_for_symbol_footer_top_value val_gsf
;;

let string_list_off_group_for_symbol_footer_value val_gro =
  let val_cal_l = camlline_value_list_off_group_for_symbol_footer_value val_gro in
  List.map Camlline_value_v.string_off val_cal_l
;;

