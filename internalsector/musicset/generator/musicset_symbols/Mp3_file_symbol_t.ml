(** {3 Mp3_file_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_file_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type mp3_file_symbol =
  | File_id3v1_symbol of File_id3v1_symbol_t.file_id3v1_symbol
  | File_id3v2_symbol of File_id3v2_symbol_t.file_id3v2_symbol
;;


(** created by ./generator mp3_file implementation symbol at 9:23 14 Jul 2012. *)



