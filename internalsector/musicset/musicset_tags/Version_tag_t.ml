(** {3 Version_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Version_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type version_tag = Version_symbol_t.version_symbol Tag_t.tag
;;


(** created by ./generator version implementation tag at 11:9 14 Jul 2012. *)



