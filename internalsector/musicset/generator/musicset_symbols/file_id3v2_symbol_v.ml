
(** {3 The functionalities for a Symbol for a File_id3v2.} *)

let nam_cod = "file_id3v2_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | File_id3v2_symbol_t.File_id3v2_mp3_header_1 -> "File_id3v2_mp3_header_1"
  | File_id3v2_symbol_t.File_id3v2_mp3_header_2 -> "File_id3v2_mp3_header_2"
  | File_id3v2_symbol_t.File_id3v2_mp3_header_2_5 -> "File_id3v2_mp3_header_2_5"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let file_id3v2_mp3_header_1 = File_id3v2_symbol_t.File_id3v2_mp3_header_1;;

let file_id3v2_mp3_header_2 = File_id3v2_symbol_t.File_id3v2_mp3_header_2;;

let file_id3v2_mp3_header_2_5 = File_id3v2_symbol_t.File_id3v2_mp3_header_2_5;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "File_id3v2_mp3_header_1" -> file_id3v2_mp3_header_1
  | "File_id3v2_mp3_header_2" -> file_id3v2_mp3_header_2
  | "File_id3v2_mp3_header_2_5" -> file_id3v2_mp3_header_2_5
  | _ ->
    failwith "Not_File_id3v2_symbol:file_id3v2_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator file_id3v2 implementation symbol at 17:43 6 Jun 2012. *)



