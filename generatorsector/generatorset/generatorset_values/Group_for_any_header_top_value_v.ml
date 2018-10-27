(** {3 Group_for_any_header_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_any_header_top_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_any_header_top_tag tag_ght =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_any_header_top_tag 
      tag_ght 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making_for_value} *)

let make sym_ght soi_gro =
  let tag_ght = Tag_v.make sym_ght soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_any_header_top_tag tag_ght in
  match sym_ght with
  | Group_for_any_header_top_symbol_t.Camlfile_title ->
     Group_for_any_header_top_value_t.Camlfile_title val_cal_l
  | Group_for_any_header_top_symbol_t.Item_title ->
     Group_for_any_header_top_value_t.Item_title val_cal_l
  | Group_for_any_header_top_symbol_t.Let_fullname_argument_equal ->
     Group_for_any_header_top_value_t.Let_fullname_argument_equal val_cal_l
  | Group_for_any_header_top_symbol_t.Let_longname_argument_equal ->
     Group_for_any_header_top_value_t.Let_longname_argument_equal val_cal_l
  | Group_for_any_header_top_symbol_t.Let_name_argument_equal ->
     Group_for_any_header_top_value_t.Let_name_argument_equal val_cal_l
  | Group_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal ->
     Group_for_any_header_top_value_t.Let_retrieve_tag_top_equal val_cal_l
  | Group_for_any_header_top_symbol_t.Let_string_off_argument_equal ->
     Group_for_any_header_top_value_t.Let_string_off_argument_equal val_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_ght =
  let sym_ght = Tag_v.entity_off_tag tag_ght in
  let soi_cal = Tag_v.sole_index_off_tag tag_ght in
  make sym_ght soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_any_header_top_tag tag_ght =
  let val_cal_l = camlline_value_list_off_group_for_any_header_top_tag tag_ght in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_any_header_top_value val_ght =
  match val_ght with
  | Group_for_any_header_top_value_t.Camlfile_title val_cal_l -> val_cal_l 
  | Group_for_any_header_top_value_t.Item_title val_cal_l -> val_cal_l 
  | Group_for_any_header_top_value_t.Let_fullname_argument_equal val_cal_l -> val_cal_l 
  | Group_for_any_header_top_value_t.Let_longname_argument_equal val_cal_l -> val_cal_l 
  | Group_for_any_header_top_value_t.Let_name_argument_equal val_cal_l -> val_cal_l 
  | Group_for_any_header_top_value_t.Let_retrieve_tag_top_equal val_cal_l -> val_cal_l 
  | Group_for_any_header_top_value_t.Let_string_off_argument_equal val_cal_l -> val_cal_l 

;;
