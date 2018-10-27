(** {3 Group_for_any_body_top_main_builder_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_any_body_top_main_builder_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_any_body_top_main_builder_tag tag_gmb =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_any_body_top_main_builder_tag 
      tag_gmb 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making_for_value} *)

let make sym_gmb soi_gro =
  let tag_gmb = Tag_v.make sym_gmb soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_any_body_top_main_builder_tag tag_gmb in
  match sym_gmb with

  mv

;;

(** {6 Retrieving} *)

let retrieve tag_gmb =
  let sym_gmb = Tag_v.entity_off_tag tag_gmb in
  let soi_cal = Tag_v.sole_index_off_tag tag_gmb in
  make sym_gmb soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_any_body_top_main_builder_tag tag_gmb =
  let val_cal_l = camlline_value_list_off_group_for_any_body_top_main_builder_tag tag_gmb in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_any_body_top_main_builder_value val_gmb =
  match val_gmb with

;;
