(** {3 Energy_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Energy_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type energy_tag = Energy_symbol_t.energy_symbol Tag_t.tag
;;


(** created by ./generator energy implementation tag at 10:35 26 Sep 2012. *)



