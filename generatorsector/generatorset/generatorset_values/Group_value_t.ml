(** {3 Group_value_t.}  *)

(** {6 Typing} *)

let documentation () = 
[
  "Needs: ";
  "Current : VGNR:Group_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Typing} *)

type group_value =
  | Group_for_any_value of Group_for_any_value_t.group_for_any_value
  | Group_for_symbol_value of Group_for_symbol_value_t.group_for_symbol_value
  | Group_for_formula_value of Group_for_formula_value_t.group_for_formula_value
;;

