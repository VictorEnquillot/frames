(** {3 Mp3_file_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_file_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type mp3_file_tag = Mp3_file_symbol_t.mp3_file_symbol Tag_t.tag
;;


(** created by ./generator mp3_file implementation tag at 11:9 14 Jul 2012. *)


