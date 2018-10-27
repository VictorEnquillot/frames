(** {3 Version_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Version_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type version_symbol =
  | Version_1
  | Version_2
  | Version_2_5
;;


(** created by ./generator version implementation symbol at 9:23 14 Jul 2012. *)



