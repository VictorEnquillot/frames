(** {3 Group_for_symbol_header_son_top_value_t} *)

let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Group_for_symbol_header_son_top_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Typing} *)

type group_for_symbol_header_son_top_value =
  | Let_abbreviate_topson_bare of Camlline_value_t.camlline_value list 
  | Let_abbreviate_topson_ofstring of Camlline_value_t.camlline_value list 
  | Let_is_topson_notleaf_symbol_off_top_symbol_equal_function of Camlline_value_t.camlline_value list 
  | Let_topson_notleaf_symbol_off_top_symbol_equal_function of Camlline_value_t.camlline_value list
  | Let_top_symbol_of_topson_notleaf_symbol_argument_equal of Camlline_value_t.camlline_value list 
;;



