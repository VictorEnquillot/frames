(** {3 Id3v1_tag_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v1_tag_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_idt =
let sym_idt = Tag_v.symbol_off_tag tag_idt in
  Id3v1_tag_symbol_v.name sym_idt
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)

let header_3 = id3v1_tag_tag_of_id3v1_tag_128_tag Id3v1_tag_128_tag_v.header_3;;

let title_30 = id3v1_tag_tag_of_id3v1_tag_128_tag Id3v1_tag_128_tag_v.title_30;;

let artist_30 = id3v1_tag_tag_of_id3v1_tag_128_tag Id3v1_tag_128_tag_v.artist_30;;

let album_30 = id3v1_tag_tag_of_id3v1_tag_128_tag Id3v1_tag_128_tag_v.album_30;;

let year_4 = id3v1_tag_tag_of_id3v1_tag_128_tag Id3v1_tag_128_tag_v.year_4;;

let comment_28 = id3v1_tag_tag_of_id3v1_tag_128_tag Id3v1_tag_128_tag_v.comment_28;;

let comment_30 = id3v1_tag_tag_of_id3v1_tag_128_tag Id3v1_tag_128_tag_v.comment_30;;

let zero_byte_1 = id3v1_tag_tag_of_id3v1_tag_128_tag Id3v1_tag_128_tag_v.zero_byte_1;;

let track_1 = id3v1_tag_tag_of_id3v1_tag_128_tag Id3v1_tag_128_tag_v.track_1;;

let genre_1 = id3v1_tag_tag_of_id3v1_tag_128_tag Id3v1_tag_128_tag_v.genre_1;;

let header_4 = id3v1_tag_tag_of_id3v1_tag_227_tag Id3v1_tag_227_tag_v.header_4;;

let title_60 = id3v1_tag_tag_of_id3v1_tag_227_tag Id3v1_tag_227_tag_v.title_60;;

let artist_60 = id3v1_tag_tag_of_id3v1_tag_227_tag Id3v1_tag_227_tag_v.artist_60;;

let album_60 = id3v1_tag_tag_of_id3v1_tag_227_tag Id3v1_tag_227_tag_v.album_60;;

let speed_1 = id3v1_tag_tag_of_id3v1_tag_227_tag Id3v1_tag_227_tag_v.speed_1;;

let genre_30 = id3v1_tag_tag_of_id3v1_tag_227_tag Id3v1_tag_227_tag_v.genre_30;;

let start_time_6 = id3v1_tag_tag_of_id3v1_tag_227_tag Id3v1_tag_227_tag_v.start_time_6;;

let end_time_6 = id3v1_tag_tag_of_id3v1_tag_227_tag Id3v1_tag_227_tag_v.end_time_6;;


(** {6 Abbreviating_topson} *)


(** {6 Making} *)

let make soi_idt nam_idt s =
  let sym_idt = Id3v1_tag_symbol_v.make nam_idt s in
  Tag_v.make sym_idt soi_idt
;;


(** created by ./generator id3v1_tag implementation tag at 11:9 14 Jul 2012. *)



