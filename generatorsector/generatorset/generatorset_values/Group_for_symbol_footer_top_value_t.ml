(** {3 Group_for_symbol_footer_top_value_t} *)

let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Group_for_symbol_footer_top_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Typing} *)

type group_for_symbol_footer_top_value =
  | Failwith_not_a_topson_notleaf of Camlline_value_t.camlline_value list
  | Let_underscore_print_error_failwith_make of Camlline_value_t.camlline_value list
  | Let_underscore_print_error_failwith_name of Camlline_value_t.camlline_value list
  | Let_underscore_print_error_failwith_string_off of Camlline_value_t.camlline_value list
  | Pipe_underscore_failwith_not_a_topson_bare_make of Camlline_value_t.camlline_value list
  | Pipe_underscore_failwith_not_a_topson_bare_name of Camlline_value_t.camlline_value list
  | Pipe_underscore_failwith_not_a_topson_bare_string_off of Camlline_value_t.camlline_value list
  | Pipe_underscore_failwith_not_a_topson_notleaf_make of Camlline_value_t.camlline_value list
  | Pipe_underscore_failwith_not_a_topson_notleaf_name of Camlline_value_t.camlline_value list
  | Pipe_underscore_failwith_not_a_topson_notleaf_string_off of Camlline_value_t.camlline_value list
  | Pipe_underscore_failwith_not_a_topson_ofstring_make of Camlline_value_t.camlline_value list
  | Pipe_underscore_failwith_not_a_topson_ofstring_name of Camlline_value_t.camlline_value list
  | Pipe_underscore_failwith_not_a_topson_ofstring_string_off of Camlline_value_t.camlline_value list
  | Print_fatal_error_make of Camlline_value_t.camlline_value list
  | Print_fatal_error_name of Camlline_value_t.camlline_value list
  | Print_fatal_error_string_off of Camlline_value_t.camlline_value list
;;




