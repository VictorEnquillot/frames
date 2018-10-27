(** {3 Group_for_symbol_body_top_value_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Group_for_symbol_body_top_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Typing} *)

type group_for_symbol_body_top_value =
  | Documentation_list_for_symbol of Camlline_value_t.camlline_value list
  | Try_make_of_topson_bare_with_failure_arrow of Camlline_value_t.camlline_value list
  | Try_make_of_topson_ofstring_with_failure_arrow of Camlline_value_t.camlline_value list
  | Try_make_of_topson_notleaf_with_failure_arrow of Camlline_value_t.camlline_value list
  | Try_name_of_topson_bare_with_failure_arrow of Camlline_value_t.camlline_value list
  | Try_name_of_topson_ofstring_with_failure_arrow of Camlline_value_t.camlline_value list
  | Try_name_of_topson_notleaf_with_failure_arrow of Camlline_value_t.camlline_value list
  | Try_string_off_of_topson_bare_with_failure_arrow of Camlline_value_t.camlline_value list
  | Try_string_off_of_topson_notleaf_with_failure_arrow of Camlline_value_t.camlline_value list
  | Try_string_off_of_topson_ofstring_with_failure_arrow of Camlline_value_t.camlline_value list
;;




