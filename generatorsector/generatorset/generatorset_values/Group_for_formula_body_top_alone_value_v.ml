(** {3 Group_for_formula_body_top_alone_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_formula_body_top_alone_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_formula_body_top_alone_tag tag_gta =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_formula_body_top_alone_tag 
      tag_gta 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making_for_value} *)

let make sym_gta soi_gro =
  let tag_gta = Tag_v.make sym_gta soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_formula_body_top_alone_tag tag_gta in
  match sym_gta with
  | Group_for_formula_body_top_alone_symbol_t.Symbol_of_formula_in_name_top ->
     Group_for_formula_body_top_alone_value_t.Symbol_of_formula_in_name_top val_cal_l
  | Group_for_formula_body_top_alone_symbol_t.Symbol_of_formula_in_string_off_top ->
     Group_for_formula_body_top_alone_value_t.Symbol_of_formula_in_string_off_top val_cal_l

;;

(** {6 Retrieving} *)

let retrieve tag_gta =
  let sym_gta = Tag_v.entity_off_tag tag_gta in
  let soi_cal = Tag_v.sole_index_off_tag tag_gta in
  make sym_gta soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_formula_body_top_alone_tag tag_gta =
  let val_cal_l = camlline_value_list_off_group_for_formula_body_top_alone_tag tag_gta in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_formula_body_top_alone_value val_gta =
  match val_gta with
  | Group_for_formula_body_top_alone_value_t.Symbol_of_formula_in_name_top val_cal_l -> val_cal_l 
  | Group_for_formula_body_top_alone_value_t.Symbol_of_formula_in_string_off_top val_cal_l -> val_cal_l 

;;
