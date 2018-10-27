(** {3 Group_for_formula_body_son_top_main_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_formula_body_son_top_main_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_formula_body_son_top_main_tag tag_gtm =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_formula_body_son_top_main_tag 
      tag_gtm 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making_for_value} *)

let make sym_gtm soi_gro =
  let tag_gtm = Tag_v.make sym_gtm soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_formula_body_son_top_main_tag tag_gtm in
  match sym_gtm with
  | Group_for_formula_body_son_top_main_symbol_t.Make_topson_pattern_notleaf_for_formula ->
     Group_for_formula_body_son_top_main_value_t.Make_topson_pattern_notleaf_for_formula val_cal_l

;;

(** {6 Retrieving} *)

let retrieve tag_gtm =
  let sym_gtm = Tag_v.entity_off_tag tag_gtm in
  let soi_cal = Tag_v.sole_index_off_tag tag_gtm in
  make sym_gtm soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_formula_body_son_top_main_tag tag_gtm =
  let val_cal_l = camlline_value_list_off_group_for_formula_body_son_top_main_tag tag_gtm in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_formula_body_son_top_main_value val_gtm =
  match val_gtm with
    | Group_for_formula_body_son_top_main_value_t.Make_topson_pattern_notleaf_for_formula val_cal_l -> val_cal_l 

;;
