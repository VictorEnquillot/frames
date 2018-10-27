(** {3 Id3_tag_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3_tag_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3_tag_tag = Id3_tag_symbol_t.id3_tag_symbol Tag_t.tag
;;


(** created by ./generator id3_tag implementation tag at 11:9 14 Jul 2012. *)



