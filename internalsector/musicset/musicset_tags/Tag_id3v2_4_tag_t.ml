(** {3 Tag_id3v2_4_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Tag_id3v2_4_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type mp3_header_tag = Tag_id3v2_4_symbol_t.mp3_header_symbol Tag_t.tag
;;


(** created by ./generator mp3_header implementation tag at 11:9 14 Jul 2012. *)



