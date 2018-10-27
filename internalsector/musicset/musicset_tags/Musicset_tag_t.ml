(** {3 Musicset_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Musicset_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type musicset_tag = Musicset_symbol_t.musicset_symbol Tag_t.tag
;;


(** created by ./generator musicset implementation tag at 11:9 14 Jul 2012. *)



