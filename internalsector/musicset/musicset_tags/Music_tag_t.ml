(** {3 Music_tag_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Music_tag_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type music_tag = Music_symbol_t.music_symbol Tag_t.tag
;;


(** created by ./generator mp3_layout_tag implementation tag at 11:9 14 Jul 2012. *)



