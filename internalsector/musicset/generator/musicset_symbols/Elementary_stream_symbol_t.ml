(** {3 Elementary_stream_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Elementary_stream_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type elementary_stream_symbol =
  | Elementary_stream_audio
  | Elementary_stream_video
  | Elementary_stream_closed_caption
;;


(** created by ./generator elementary_stream implementation symbol at 9:23 14 Jul 2012. *)



