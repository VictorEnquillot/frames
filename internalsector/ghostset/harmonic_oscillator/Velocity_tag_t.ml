(** {3 Velocity_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current : CDOS:Velocity_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type velocity_tag = Velocity_symbol_t.velocity_symbol Tag_t.tag
;;


(** created by ./generator velocity implementation tag at 10:35 26 Sep 2012. *)



