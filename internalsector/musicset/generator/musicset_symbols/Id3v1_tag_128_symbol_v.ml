(** {3 Id3v1_tag_128_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v1_tag_128_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


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


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

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


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "header_3" -> header_3
  | "title_30" -> title_30
  | "artist_30" -> artist_30
  | "album_30" -> album_30
  | "year_4" -> year_4
  | "comment_28" -> comment_28
  | "comment_30" -> comment_30
  | "zero_byte_1" -> zero_byte_1
  | "track_1" -> track_1
  | "genre_1" -> genre_1
  | _ ->
    failwith "Not_Id3v1_tag_128_symbol:Id3v1_tag_128_symbol_v:make"
;;


(** created by ./generator id3v1_tag_128 implementation symbol at 9:23 14 Jul 2012. *)



