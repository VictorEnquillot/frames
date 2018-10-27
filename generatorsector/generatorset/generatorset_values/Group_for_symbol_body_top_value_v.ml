(** {3 Group_for_symbol_body_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_symbol_body_top_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a For_symbol_body_top type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_symbol_body_top_tag tag_gbt =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_symbol_body_top_tag 
      tag_gbt 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making} *)

let make sym_gbt soi_gro =
  let tag_gbt = Tag_v.make sym_gbt soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_symbol_body_top_tag tag_gbt in
  match sym_gbt with
  | Group_for_symbol_body_top_symbol_t.Documentation_list_for_symbol ->
     Group_for_symbol_body_top_value_t.Documentation_list_for_symbol val_cal_l
  | Group_for_symbol_body_top_symbol_t.Try_make_of_topson_bare_with_failure_arrow ->
     Group_for_symbol_body_top_value_t.Try_make_of_topson_bare_with_failure_arrow val_cal_l
  | Group_for_symbol_body_top_symbol_t.Try_make_of_topson_ofstring_with_failure_arrow ->
     Group_for_symbol_body_top_value_t.Try_make_of_topson_ofstring_with_failure_arrow val_cal_l
  | Group_for_symbol_body_top_symbol_t.Try_make_of_topson_notleaf_with_failure_arrow ->
     Group_for_symbol_body_top_value_t.Try_make_of_topson_notleaf_with_failure_arrow val_cal_l
  | Group_for_symbol_body_top_symbol_t.Try_name_of_topson_bare_with_failure_arrow ->
     Group_for_symbol_body_top_value_t.Try_name_of_topson_bare_with_failure_arrow val_cal_l
  | Group_for_symbol_body_top_symbol_t.Try_name_of_topson_ofstring_with_failure_arrow ->
     Group_for_symbol_body_top_value_t.Try_name_of_topson_ofstring_with_failure_arrow val_cal_l
  | Group_for_symbol_body_top_symbol_t.Try_name_of_topson_notleaf_with_failure_arrow ->
     Group_for_symbol_body_top_value_t.Try_name_of_topson_notleaf_with_failure_arrow val_cal_l

  | Group_for_symbol_body_top_symbol_t.Try_string_off_of_topson_bare_with_failure_arrow ->
     Group_for_symbol_body_top_value_t.Try_string_off_of_topson_bare_with_failure_arrow val_cal_l

  | Group_for_symbol_body_top_symbol_t.Try_string_off_of_topson_notleaf_with_failure_arrow ->
     Group_for_symbol_body_top_value_t.Try_string_off_of_topson_notleaf_with_failure_arrow val_cal_l

  | Group_for_symbol_body_top_symbol_t.Try_string_off_of_topson_ofstring_with_failure_arrow ->
     Group_for_symbol_body_top_value_t.Try_string_off_of_topson_ofstring_with_failure_arrow val_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gbt =
  let sym_gbt = Tag_v.entity_off_tag tag_gbt in
  let soi_cal = Tag_v.sole_index_off_tag tag_gbt in
  make sym_gbt soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_symbol_body_top_tag tag_gbt =
  let val_cal_l = camlline_value_list_off_group_for_symbol_body_top_tag tag_gbt in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_symbol_body_top_value val_ghc =
  match val_ghc with
  | Group_for_symbol_body_top_value_t.Documentation_list_for_symbol val_cal_l -> val_cal_l 
  | Group_for_symbol_body_top_value_t.Try_make_of_topson_bare_with_failure_arrow val_cal_l -> val_cal_l 
  | Group_for_symbol_body_top_value_t.Try_make_of_topson_ofstring_with_failure_arrow val_cal_l -> val_cal_l 
  | Group_for_symbol_body_top_value_t.Try_make_of_topson_notleaf_with_failure_arrow val_cal_l -> val_cal_l 
  | Group_for_symbol_body_top_value_t.Try_name_of_topson_bare_with_failure_arrow val_cal_l -> val_cal_l 
  | Group_for_symbol_body_top_value_t.Try_name_of_topson_ofstring_with_failure_arrow val_cal_l -> val_cal_l 
  | Group_for_symbol_body_top_value_t.Try_name_of_topson_notleaf_with_failure_arrow val_cal_l -> val_cal_l 
  | Group_for_symbol_body_top_value_t.Try_string_off_of_topson_bare_with_failure_arrow val_cal_l -> val_cal_l 
  | Group_for_symbol_body_top_value_t.Try_string_off_of_topson_notleaf_with_failure_arrow val_cal_l -> val_cal_l 
  | Group_for_symbol_body_top_value_t.Try_string_off_of_topson_ofstring_with_failure_arrow val_cal_l -> val_cal_l 
;;
