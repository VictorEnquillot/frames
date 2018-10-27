(** {3 Id3v1_tag_227_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v1_tag_227_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3v1_tag_227_tag = Id3v1_tag_227_symbol_t.id3v1_tag_227_symbol Tag_t.tag
;;


(** created by ./generator id3v1_tag_227 implementation tag at 11:9 14 Jul 2012. *)



