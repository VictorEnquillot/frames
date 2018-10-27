(** {3 Section_for_symbol_header_son_value_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Section_for_symbol_header_son_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type section_for_symbol_header_son_value =
  | Let_is_topson_bare of Group_value_t.group_value list
  | Let_is_topson_ofstring of Group_value_t.group_value list
;;

