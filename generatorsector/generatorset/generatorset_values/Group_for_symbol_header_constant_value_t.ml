(** {3 Group_for_symbol_header_constant_value_t} *)

let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Group_for_symbol_header_constant_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Typing} *)

type group_for_symbol_header_constant_value =
  | Let_make_equal_function of Camlline_value_t.camlline_value list
  | Let_make_nam_s_equal of Camlline_value_t.camlline_value list
  | Let_make_of_topson_bare_nam_equal of Camlline_value_t.camlline_value list
  | Let_make_of_topson_notleaf_nam_s_equal of Camlline_value_t.camlline_value list
  | Let_make_of_topson_ofstring_nam_s_equal of Camlline_value_t.camlline_value list
  | Let_name_equal_function of Camlline_value_t.camlline_value list
  | Let_name_of_topson_bare_equal_function of Camlline_value_t.camlline_value list
  | Let_name_of_topson_notleaf_equal_function of Camlline_value_t.camlline_value list
  | Let_name_of_topson_ofstring_equal_function of Camlline_value_t.camlline_value list
  | Let_string_off_equal_function of Camlline_value_t.camlline_value list
  | Let_string_off_of_topson_bare_equal_function of Camlline_value_t.camlline_value list
  | Let_string_off_of_topson_notleaf_equal_function of Camlline_value_t.camlline_value list
  | Let_string_off_of_topson_ofstring_equal_function of Camlline_value_t.camlline_value list
;;
