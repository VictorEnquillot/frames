
(** {3 The functionalities for a Symbol for a Id3v1_tag_128.} *)

let nam_cod = "id3v1_tag_128_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Id3v1_tag_128_symbol_t.Header_3 -> "Header_3"
  | Id3v1_tag_128_symbol_t.Title_30 -> "Title_30"
  | Id3v1_tag_128_symbol_t.Artist_30 -> "Artist_30"
  | Id3v1_tag_128_symbol_t.Album_30 -> "Album_30"
  | Id3v1_tag_128_symbol_t.Year_4 -> "Year_4"
  | Id3v1_tag_128_symbol_t.Comment_28 -> "Comment_28"
  | Id3v1_tag_128_symbol_t.Comment_30 -> "Comment_30"
  | Id3v1_tag_128_symbol_t.Zero_byte_1 -> "Zero_byte_1"
  | Id3v1_tag_128_symbol_t.Track_1 -> "Track_1"
  | Id3v1_tag_128_symbol_t.Genre_1 -> "Genre_1"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let header_3 = Id3v1_tag_128_symbol_t.Header_3;;

let title_30 = Id3v1_tag_128_symbol_t.Title_30;;

let artist_30 = Id3v1_tag_128_symbol_t.Artist_30;;

let album_30 = Id3v1_tag_128_symbol_t.Album_30;;

let year_4 = Id3v1_tag_128_symbol_t.Year_4;;

let comment_28 = Id3v1_tag_128_symbol_t.Comment_28;;

let comment_30 = Id3v1_tag_128_symbol_t.Comment_30;;

let zero_byte_1 = Id3v1_tag_128_symbol_t.Zero_byte_1;;

let track_1 = Id3v1_tag_128_symbol_t.Track_1;;

let genre_1 = Id3v1_tag_128_symbol_t.Genre_1;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Header_3" -> header_3
  | "Title_30" -> title_30
  | "Artist_30" -> artist_30
  | "Album_30" -> album_30
  | "Year_4" -> year_4
  | "Comment_28" -> comment_28
  | "Comment_30" -> comment_30
  | "Zero_byte_1" -> zero_byte_1
  | "Track_1" -> track_1
  | "Genre_1" -> genre_1
  | _ ->
    failwith "Not_Id3v1_tag_128_symbol:id3v1_tag_128_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator id3v1_tag_128 implementation symbol at 17:43 6 Jun 2012. *)



