(** {3 Group_for_symbol_footer_value_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Group_for_symbol_footer_value_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type group_for_symbol_footer_value =
  | Group_for_symbol_footer_top_value of Group_for_symbol_footer_top_value_t.group_for_symbol_footer_top_value
;;



