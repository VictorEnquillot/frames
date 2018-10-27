(** {3 Group_for_symbol_header_son_value_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Group_for_symbol_header_son_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Typing} *)

type group_for_symbol_header_son_value =
  | Let_is_topson_bare of Camlline_value_t.camlline_value list
  | Let_is_topson_ofstring of Camlline_value_t.camlline_value list
;;





