(** {3 File_id3v2_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:File_id3v2_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type file_id3v2_symbol =
  | File_id3v2_mp3_header_1
  | File_id3v2_mp3_header_2
  | File_id3v2_mp3_header_2_5
;;


(** created by ./generator file_id3v2 implementation symbol at 9:23 14 Jul 2012. *)



