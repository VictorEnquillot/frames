(** {3 Group_for_symbol_body_son_top_value_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : FGNR:";
   "Current : VGNR:Group_for_symbol_body_son_top_value_v";
   "Needed-by : VGNR:Group_value_v";
   "What-is-it : It upgrades Value type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 BT_Son_value Datastructure} *)

let camlline_value_list_off_group_for_symbol_body_son_top_tag tag_gst =
  let tag_gro = 
    Group_tag_v.group_tag_of_group_for_symbol_body_son_top_tag 
      tag_gst 
  in
  let for_gro = Group_formula_v.retrieve tag_gro in
  Group_formula_v.map Camlline_value_v.retrieve for_gro
;;

(** {6 Making_for_value} *)

let make sym_gst soi_gro =
  let tag_gst = Tag_v.make sym_gst soi_gro in
  let val_cal_l = camlline_value_list_off_group_for_symbol_body_son_top_tag tag_gst in
  match sym_gst with
  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_onlyson_bare_symbol_off_top_symbol ->
     Group_for_symbol_body_son_top_value_t.Pipe_is_onlyson_bare_symbol_off_top_symbol val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_onlyson_notleaf_symbol_off_top_symbol ->
     Group_for_symbol_body_son_top_value_t.Pipe_is_onlyson_notleaf_symbol_off_top_symbol val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_onlyson_ofstring_symbol_off_top_symbol ->
     Group_for_symbol_body_son_top_value_t.Pipe_is_onlyson_ofstring_symbol_off_top_symbol val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_bare_symbol_off_top_symbol ->
     Group_for_symbol_body_son_top_value_t.Pipe_is_topson_bare_symbol_off_top_symbol val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_notleaf_symbol_off_top_symbol ->
     Group_for_symbol_body_son_top_value_t.Pipe_is_topson_notleaf_symbol_off_top_symbol val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_is_topson_ofstring_symbol_off_top_symbol ->
     Group_for_symbol_body_son_top_value_t.Pipe_is_topson_ofstring_symbol_off_top_symbol val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_onlyson_notleaf_symbol_off_top_symbol ->
     Group_for_symbol_body_son_top_value_t.Pipe_onlyson_notleaf_symbol_off_top_symbol val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_topson_notleaf_symbol_off_top_symbol ->
     Group_for_symbol_body_son_top_value_t.Pipe_topson_notleaf_symbol_off_top_symbol val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_bare_function ->
     Group_for_symbol_body_son_top_value_t.Pipe_upgrade_name_bare_function val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function ->
     Group_for_symbol_body_son_top_value_t.Pipe_upgrade_name_notleaf_function val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_ofstring_function ->
     Group_for_symbol_body_son_top_value_t.Pipe_upgrade_name_ofstring_function val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_string_off_bare_function ->
     Group_for_symbol_body_son_top_value_t.Pipe_upgrade_string_off_bare_function val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_string_off_notleaf_function ->
     Group_for_symbol_body_son_top_value_t.Pipe_upgrade_string_off_notleaf_function val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_string_off_ofstring_function ->
     Group_for_symbol_body_son_top_value_t.Pipe_upgrade_string_off_ofstring_function val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Try_top_of_topson_with_failure_arrow ->
     Group_for_symbol_body_son_top_value_t.Try_top_of_topson_with_failure_arrow val_cal_l
  | Group_for_symbol_body_son_top_symbol_t.Upgrade_topson_symbol ->
     Group_for_symbol_body_son_top_value_t.Upgrade_topson_symbol val_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gst =
  let sym_gst = Tag_v.entity_off_tag tag_gst in
  let soi_cal = Tag_v.sole_index_off_tag tag_gst in
  make sym_gst soi_cal
;;

(** {6 Extracting} *)

let string_list_off_group_for_symbol_body_son_top_tag tag_gst =
  let val_cal_l = camlline_value_list_off_group_for_symbol_body_son_top_tag tag_gst in
  List.map Camlline_value_v.string_off val_cal_l
;;

let camlline_value_list_off_group_for_symbol_body_son_top_value val_gst =
  match val_gst with
  | Group_for_symbol_body_son_top_value_t.Pipe_is_onlyson_bare_symbol_off_top_symbol val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_is_onlyson_notleaf_symbol_off_top_symbol val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_is_onlyson_ofstring_symbol_off_top_symbol val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_is_topson_bare_symbol_off_top_symbol val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_is_topson_notleaf_symbol_off_top_symbol val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_is_topson_ofstring_symbol_off_top_symbol val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_onlyson_notleaf_symbol_off_top_symbol val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_topson_notleaf_symbol_off_top_symbol val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_upgrade_name_bare_function val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_upgrade_name_notleaf_function val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_upgrade_name_ofstring_function val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_upgrade_string_off_bare_function val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_upgrade_string_off_notleaf_function val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Pipe_upgrade_string_off_ofstring_function val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Try_top_of_topson_with_failure_arrow val_cal_l -> val_cal_l 
  | Group_for_symbol_body_son_top_value_t.Upgrade_topson_symbol val_cal_l -> val_cal_l 
;;
