
(** {3 The functionalities for a Symbol for a Id3v1_tag_227.} *)

let nam_cod = "id3v1_tag_227_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Id3v1_tag_227_symbol_t.Header_4 -> "Header_4"
  | Id3v1_tag_227_symbol_t.Title_60 -> "Title_60"
  | Id3v1_tag_227_symbol_t.Artist_60 -> "Artist_60"
  | Id3v1_tag_227_symbol_t.Album_60 -> "Album_60"
  | Id3v1_tag_227_symbol_t.Speed_1 -> "Speed_1"
  | Id3v1_tag_227_symbol_t.Genre_30 -> "Genre_30"
  | Id3v1_tag_227_symbol_t.Start_time_6 -> "Start_time_6"
  | Id3v1_tag_227_symbol_t.End_time_6 -> "End_time_6"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let header_4 = Id3v1_tag_227_symbol_t.Header_4;;

let title_60 = Id3v1_tag_227_symbol_t.Title_60;;

let artist_60 = Id3v1_tag_227_symbol_t.Artist_60;;

let album_60 = Id3v1_tag_227_symbol_t.Album_60;;

let speed_1 = Id3v1_tag_227_symbol_t.Speed_1;;

let genre_30 = Id3v1_tag_227_symbol_t.Genre_30;;

let start_time_6 = Id3v1_tag_227_symbol_t.Start_time_6;;

let end_time_6 = Id3v1_tag_227_symbol_t.End_time_6;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Header_4" -> header_4
  | "Title_60" -> title_60
  | "Artist_60" -> artist_60
  | "Album_60" -> album_60
  | "Speed_1" -> speed_1
  | "Genre_30" -> genre_30
  | "Start_time_6" -> start_time_6
  | "End_time_6" -> end_time_6
  | _ ->
    failwith "Not_Id3v1_tag_227_symbol:id3v1_tag_227_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator id3v1_tag_227 implementation symbol at 17:43 6 Jun 2012. *)



