(** {3 Usagefile_for_formula_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Usagefile_for_formula_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type usagefile_for_formula_symbol =
  | Implementation_for_formula
  | Interface_for_formula
;;


(** created by ./generator usagefile_for_formula implementation symbol at 9:54 18 Feb 2013. *)



