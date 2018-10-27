(** {3 Id3v1_tag_227_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v1_tag_227_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_it2 =
let sym_it2 = Tag_v.symbol_off_tag tag_it2 in
  Id3v1_tag_227_symbol_v.name sym_it2
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)


(** {6 Abbreviating_topson} *)

let header_4 = Id3v1_tag_227_tag_t.Header_4;;

let title_60 = Id3v1_tag_227_tag_t.Title_60;;

let artist_60 = Id3v1_tag_227_tag_t.Artist_60;;

let album_60 = Id3v1_tag_227_tag_t.Album_60;;

let speed_1 = Id3v1_tag_227_tag_t.Speed_1;;

let genre_30 = Id3v1_tag_227_tag_t.Genre_30;;

let start_time_6 = Id3v1_tag_227_tag_t.Start_time_6;;

let end_time_6 = Id3v1_tag_227_tag_t.End_time_6;;


(** {6 Making} *)

let make soi_it2 nam_it2 s =
  let sym_it2 = Id3v1_tag_227_symbol_v.make nam_it2 s in
  Tag_v.make sym_it2 soi_it2
;;


(** created by ./generator id3v1_tag_227 implementation tag at 11:9 14 Jul 2012. *)



