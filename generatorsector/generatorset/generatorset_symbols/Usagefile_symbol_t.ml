(** {3 Usagefile_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Usagefile_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type usagefile_symbol =
  | Usagefile_for_symbol_symbol of Usagefile_for_symbol_symbol_t.usagefile_for_symbol_symbol
  | Usagefile_for_formula_symbol of Usagefile_for_formula_symbol_t.usagefile_for_formula_symbol
;;


(** created by ./generator usagefile implementation symbol at 9:54 18 Feb 2013. *)



