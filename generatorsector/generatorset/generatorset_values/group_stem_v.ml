(** {3 Group_stem_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_stem_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_stem_tag tag_sss =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_stem_tag 
      tag_sss 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making_for_value} *)

let make sym_sss soi_gro =
  let tag_sss = Tag_v.make sym_sss soi_gro in
  let val_cal_l = camlline_value_list_off_group_stem_tag tag_sss in
  match sym_sss with

;;

(** {6 Retrieving} *)

let retrieve tag_sss =
  let sym_sss = Tag_v.entity_off_tag tag_sss in
  let soi_cal = Tag_v.sole_index_off_tag tag_sss in
  make sym_sss soi_cal

;;

(** {6 Extracting} *)

let string_list_off_group_stem_tag tag_sss =
  let val_cal_l = camlline_value_list_off_group_stem_tag tag_sss in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_stem_value val_sss =
  match val_sss with
  
;;
