(** {3 Section_for_symbol_body_current_son_top_value_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Section_for_symbol_body_current_son_top_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type section_for_symbol_body_current_son_top_value =
  | Grandson_symbol_off_topson_notleaf_symbol_off_top_symbol of Group_value_t.group_value list
  | If_not_is_topson_begin_bare_end of Group_value_t.group_value list
  | If_not_is_topson_begin_ofstring_end of Group_value_t.group_value list
  | If_not_is_topson_begin_notleaf_end of Group_value_t.group_value list
  | Upgrade_grandson_symbol of Group_value_t.group_value list
;;


(** created by ./generator section_for_symbol_body_current_son_top implementation symbol at 13:55 4 Nov 2012. *)



