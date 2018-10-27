(** {3 File_id3v1_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:File_id3v1_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | File_id3v1_symbol_t.File_id3v1_mp3_header_1 -> "File_id3v1_mp3_header_1"
  | File_id3v1_symbol_t.File_id3v1_mp3_header_2 -> "File_id3v1_mp3_header_2"
  | File_id3v1_symbol_t.File_id3v1_mp3_header_2_5 -> "File_id3v1_mp3_header_2_5"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let file_id3v1_mp3_header_1 = File_id3v1_symbol_t.File_id3v1_mp3_header_1;;

let file_id3v1_mp3_header_2 = File_id3v1_symbol_t.File_id3v1_mp3_header_2;;

let file_id3v1_mp3_header_2_5 = File_id3v1_symbol_t.File_id3v1_mp3_header_2_5;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "file_id3v1_mp3_header_1" -> file_id3v1_mp3_header_1
  | "file_id3v1_mp3_header_2" -> file_id3v1_mp3_header_2
  | "file_id3v1_mp3_header_2_5" -> file_id3v1_mp3_header_2_5
  | _ ->
    failwith "Not_File_id3v1_symbol:File_id3v1_symbol_v:make"
;;


(** created by ./generator file_id3v1 implementation symbol at 9:23 14 Jul 2012. *)



