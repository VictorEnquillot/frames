(** {3 Group_for_formula_body_son_top_data_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_formula_body_son_top_data_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_formula_body_son_top_data_tag tag_gtd =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_formula_body_son_top_data_tag 
      tag_gtd 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making_for_value} *)

let make sym_gtd soi_gro =
  let tag_gtd = Tag_v.make sym_gtd soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_formula_body_son_top_data_tag tag_gtd in
  match sym_gtd with
  | Group_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_bare_for_formula ->
     Group_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_bare_for_formula val_cal_l
  | Group_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_notleaf_for_formula ->
     Group_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_notleaf_for_formula val_cal_l
  | Group_for_formula_body_son_top_data_symbol_t.Data_tag_list_topson_pattern_ofstring_for_formula ->
     Group_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_ofstring_for_formula val_cal_l

;;

(** {6 Retrieving} *)

let retrieve tag_gtd =
  let sym_gtd = Tag_v.entity_off_tag tag_gtd in
  let soi_cal = Tag_v.sole_index_off_tag tag_gtd in
  make sym_gtd soi_cal

;;

(** {6 Extracting} *)

let string_list_off_group_for_formula_body_son_top_data_tag tag_gtd =
  let val_cal_l = camlline_value_list_off_group_for_formula_body_son_top_data_tag tag_gtd in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_formula_body_son_top_data_value val_gtd =
  match val_gtd with
  | Group_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_bare_for_formula val_cal_l -> val_cal_l 
  | Group_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_notleaf_for_formula val_cal_l -> val_cal_l 
  | Group_for_formula_body_son_top_data_value_t.Data_tag_list_topson_pattern_ofstring_for_formula val_cal_l -> val_cal_l 
  
;;
