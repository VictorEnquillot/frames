(** {3 Group_for_any_body_son_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_any_body_son_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_any_body_son_tag tag_gbs =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_any_body_son_tag 
      tag_gbs 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making} *)

let make sym_gbs soi_gro =
  let tag_gbs = Tag_v.make sym_gbs soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_any_body_son_tag tag_gbs in
  match sym_gbs with
  | Group_for_any_body_son_symbol_t.Pipe_topson_any_type_notleaf_one_constructor ->
      Group_for_any_body_son_value_t.Pipe_topson_any_type_notleaf_one_constructor val_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gbs =
  let sym_gbs = Tag_v.entity_off_tag tag_gbs in
  let soi_cal = Tag_v.sole_index_off_tag tag_gbs in
  make sym_gbs soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_any_body_son_tag tag_gbs =
  let val_cal_l = camlline_value_list_off_group_for_any_body_son_tag tag_gbs in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_any_body_son_value val_gbs =
  match val_gbs with
  | Group_for_any_body_son_value_t.Pipe_topson_any_type_notleaf_one_constructor val_cal_l -> val_cal_l
;;
