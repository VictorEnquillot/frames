(** {3 Mp3_file_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_file_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Mp3_file_symbol_t.File_id3v1_symbol sym_fii ->
      File_id3v1_symbol_v.name sym_fii
  | Mp3_file_symbol_t.File_id3v2_symbol sym_fii ->
      File_id3v2_symbol_v.name sym_fii
;;


(** {6 Extracting_topson} *)

let file_id3v1_symbol_off_mp3_file_symbol = function
  | Mp3_file_symbol_t.File_id3v1_symbol sym_fii -> sym_fii
  | sym_mpf -> Error_messages_v.print_fatal_error
      nam_cod "file_id3v1_symbol_off_mp3_file_symbol"
      "File_id3v1_symbol"
      (name sym_mpf) "check"
;;

let file_id3v2_symbol_off_mp3_file_symbol = function
  | Mp3_file_symbol_t.File_id3v2_symbol sym_fii -> sym_fii
  | sym_mpf -> Error_messages_v.print_fatal_error
      nam_cod "file_id3v2_symbol_off_mp3_file_symbol"
      "File_id3v2_symbol"
      (name sym_mpf) "check"
;;


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)

let is_file_id3v1_symbol_off_mp3_file_symbol = function
  | Mp3_file_symbol_t.File_id3v1_symbol _ -> true
  | _ -> false
;;

let is_file_id3v2_symbol_off_mp3_file_symbol = function
  | Mp3_file_symbol_t.File_id3v2_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)

let mp3_file_symbol_of_file_id3v1_symbol sym_fii = 
  Mp3_file_symbol_t.File_id3v1_symbol sym_fii
;;

let mp3_file_symbol_of_file_id3v2_symbol sym_fii = 
  Mp3_file_symbol_t.File_id3v2_symbol sym_fii
;;


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)


(** {6 Abbreviating_grandson} *)

let file_id3v1_mp3_header_1 = mp3_file_symbol_of_file_id3v1_symbol File_id3v1_symbol_v.file_id3v1_mp3_header_1;;

let file_id3v1_mp3_header_2 = mp3_file_symbol_of_file_id3v1_symbol File_id3v1_symbol_v.file_id3v1_mp3_header_2;;

let file_id3v1_mp3_header_2_5 = mp3_file_symbol_of_file_id3v1_symbol File_id3v1_symbol_v.file_id3v1_mp3_header_2_5;;

let file_id3v2_mp3_header_1 = mp3_file_symbol_of_file_id3v2_symbol File_id3v2_symbol_v.file_id3v2_mp3_header_1;;

let file_id3v2_mp3_header_2 = mp3_file_symbol_of_file_id3v2_symbol File_id3v2_symbol_v.file_id3v2_mp3_header_2;;

let file_id3v2_mp3_header_2_5 = mp3_file_symbol_of_file_id3v2_symbol File_id3v2_symbol_v.file_id3v2_mp3_header_2_5;;


(** {6 Making} *)

let make nam s =
  try mp3_file_symbol_of_file_id3v1_symbol
      (File_id3v1_symbol_v.make nam s)
  with Failure "Not_File_id3v1_symbol:File_id3v1_symbol_v:make" ->
  try mp3_file_symbol_of_file_id3v2_symbol
      (File_id3v2_symbol_v.make nam s)
  with Failure "Not_File_id3v2_symbol:File_id3v2_symbol_v:make" ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_file subtype" nam s)
      "it does not exists"
      "Check file mp3_file_symbol_v.ml" 
;;


(** created by ./generator mp3_file implementation symbol at 9:23 14 Jul 2012. *)



