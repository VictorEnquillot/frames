(** {3 Id3v1_tag_227_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v1_tag_227_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


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


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let header_4 = Id3v1_tag_227_symbol_t.Header_4;;

let title_60 = Id3v1_tag_227_symbol_t.Title_60;;

let artist_60 = Id3v1_tag_227_symbol_t.Artist_60;;

let album_60 = Id3v1_tag_227_symbol_t.Album_60;;

let speed_1 = Id3v1_tag_227_symbol_t.Speed_1;;

let genre_30 = Id3v1_tag_227_symbol_t.Genre_30;;

let start_time_6 = Id3v1_tag_227_symbol_t.Start_time_6;;

let end_time_6 = Id3v1_tag_227_symbol_t.End_time_6;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "header_4" -> header_4
  | "title_60" -> title_60
  | "artist_60" -> artist_60
  | "album_60" -> album_60
  | "speed_1" -> speed_1
  | "genre_30" -> genre_30
  | "start_time_6" -> start_time_6
  | "end_time_6" -> end_time_6
  | _ ->
    failwith "Not_Id3v1_tag_227_symbol:Id3v1_tag_227_symbol_v:make"
;;


(** created by ./generator id3v1_tag_227 implementation symbol at 9:23 14 Jul 2012. *)



