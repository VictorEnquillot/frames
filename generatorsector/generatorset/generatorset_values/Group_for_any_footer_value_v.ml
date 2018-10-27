(** {3 Group_for_any_footer_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_any_footer_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_any_footer_tag tag_gaf =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_any_footer_tag 
      tag_gaf 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making} *)

let make sym_gaf soi_gro =
  let tag_gaf = Tag_v.make sym_gaf soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_any_footer_tag tag_gaf in

  match sym_gaf with
  | Group_for_any_footer_symbol_t.Ending ->
      Group_for_any_footer_value_t.Ending val_cal_l

  | Group_for_any_footer_symbol_t.Double_semicolon ->
      Group_for_any_footer_value_t.Double_semicolon val_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gaf =
  let soi_gro = Tag_v.sole_index_off_tag tag_gaf in
  let sym_gaf = Tag_v.entity_off_tag tag_gaf in
  make sym_gaf soi_gro
;;

(** {6 Extracting} *)

let camlline_value_list_off_group_for_any_footer_value val_gaf =
  match val_gaf with
  | Group_for_any_footer_value_t.Ending val_cal_l -> val_cal_l
  | Group_for_any_footer_value_t.Double_semicolon val_cal_l -> val_cal_l
;;

let string_list_off_group_for_any_footer_value val_gro =
  let val_cal_l = camlline_value_list_off_group_for_any_footer_value val_gro in
  List.map Camlline_value_v.string_off val_cal_l
;;

