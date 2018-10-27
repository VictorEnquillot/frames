
(** {3 The functionalities for a Symbol for a Mp3_file.} *)

let nam_cod = "mp3_file_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Mp3_file_symbol_t.File_id3v1_symbol sym_fii ->
      File_id3v1_symbol_v.name sym_fii
  | Mp3_file_symbol_t.File_id3v2_symbol sym_fii ->
      File_id3v2_symbol_v.name sym_fii
;;


(** {6 Upgrading} *)


let mp3_file_symbol_of_file_id3v1_symbol sym_fii = 
  Mp3_file_symbol_t.File_id3v1_symbol sym_fii
;;

let mp3_file_symbol_of_file_id3v2_symbol sym_fii = 
  Mp3_file_symbol_t.File_id3v2_symbol sym_fii
;;


(** {6 Abbreviating} *)


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
  with Failure "Not_File_id3v1_symbol:file_id3v1_symbol_v:make" ->
  try mp3_file_symbol_of_file_id3v2_symbol
      (File_id3v2_symbol_v.make nam s)
  with Failure "Not_File_id3v2_symbol:file_id3v2_symbol_v:make" ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_file subtype" nam s)
      "it does not exists"
      "Check file mp3_file_symbol_v.ml" 
;;


(** {6 Extracting} *)


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


(** {6 Querying} *)


let is_file_id3v1_symbol_off_mp3_file_symbol = function
  | Mp3_file_symbol_t.File_id3v1_symbol _ -> true
  | _ -> false
;;

let is_file_id3v2_symbol_off_mp3_file_symbol = function
  | Mp3_file_symbol_t.File_id3v2_symbol _ -> true
  | _ -> false
;;



(** created by ./generator mp3_file implementation symbol at 17:43 6 Jun 2012. *)



