(** {3 Group_for_formula_body_builder_data_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_formula_body_builder_data_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_formula_body_builder_data_tag tag_gbd =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_formula_body_builder_data_tag 
      tag_gbd 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making_for_value} *)

let make sym_gbd soi_gro =
  let tag_gbd = Tag_v.make sym_gbd soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_formula_body_builder_data_tag tag_gbd in
  match sym_gbd with
  | Group_for_formula_body_builder_data_symbol_t.Data_formula_list ->
     Group_for_formula_body_builder_data_value_t.Data_formula_list val_cal_l

;;

(** {6 Retrieving} *)

let retrieve tag_gbd =
  let sym_gbd = Tag_v.entity_off_tag tag_gbd in
  let soi_cal = Tag_v.sole_index_off_tag tag_gbd in
  make sym_gbd soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_formula_body_builder_data_tag tag_gbd =
  let val_cal_l = camlline_value_list_off_group_for_formula_body_builder_data_tag tag_gbd in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_formula_body_builder_data_value val_gbd =
  match val_gbd with
    | Group_for_formula_body_builder_data_value_t.Data_formula_list val_cal_l -> val_cal_l 


;;
