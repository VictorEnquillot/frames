(** {3 Group_for_formula_body_alone_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_formula_body_alone_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_formula_body_alone_tag tag_ggg =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_formula_body_alone_tag 
      tag_ggg 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making_for_value} *)

let make sym_ggg soi_gro =
  let tag_ggg = Tag_v.make sym_ggg soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_formula_body_alone_tag tag_ggg in
  match sym_ggg with

  mv

;;

(** {6 Retrieving} *)

let retrieve tag_ggg =
  let sym_ggg = Tag_v.entity_off_tag tag_ggg in
  let soi_cal = Tag_v.sole_index_off_tag tag_ggg in
  make sym_ggg soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_formula_body_alone_tag tag_ggg =
  let val_cal_l = camlline_value_list_off_group_for_formula_body_alone_tag tag_ggg in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_formula_body_alone_value val_ggg =
  match val_ggg with
  
  bv

;;
