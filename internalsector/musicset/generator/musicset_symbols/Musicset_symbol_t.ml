(** {3 Musicset_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Musicset_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type musicset_symbol =
  | Mp3_file_symbol of Mp3_file_symbol_t.mp3_file_symbol
  | Id3_tag_symbol of Id3_tag_symbol_t.id3_tag_symbol
  | Mp3_header_symbol of Mp3_header_symbol_t.mp3_header_symbol
  | Mp3_header_field_symbol of Mp3_header_field_symbol_t.mp3_header_field_symbol
  | Elementary_stream_symbol of Elementary_stream_symbol_t.elementary_stream_symbol
;;


(** created by ./generator musicset implementation symbol at 9:23 14 Jul 2012. *)



