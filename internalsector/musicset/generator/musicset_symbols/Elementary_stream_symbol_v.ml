(** {3 Elementary_stream_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Elementary_stream_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Elementary_stream_symbol_t.Elementary_stream_audio -> "Elementary_stream_audio"
  | Elementary_stream_symbol_t.Elementary_stream_video -> "Elementary_stream_video"
  | Elementary_stream_symbol_t.Elementary_stream_closed_caption -> "Elementary_stream_closed_caption"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let elementary_stream_audio = Elementary_stream_symbol_t.Elementary_stream_audio;;

let elementary_stream_video = Elementary_stream_symbol_t.Elementary_stream_video;;

let elementary_stream_closed_caption = Elementary_stream_symbol_t.Elementary_stream_closed_caption;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "elementary_stream_audio" -> elementary_stream_audio
  | "elementary_stream_video" -> elementary_stream_video
  | "elementary_stream_closed_caption" -> elementary_stream_closed_caption
  | _ ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_stream subtype" nam s)
      "it does not exists"
      "Check file elementary_stream_symbol_v.ml" 
;;


(** created by ./generator elementary_stream implementation symbol at 9:23 14 Jul 2012. *)



