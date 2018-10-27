(** {3 Mp3_elementary_stream_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_elementary_stream_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type mp3_elementary_stream_tag = Mp3_elementary_stream_symbol_t.mp3_elementary_stream_symbol Tag_t.tag
;;


(** created by ./generator mp3_elementary_stream implementation tag at 11:9 14 Jul 2012. *)



