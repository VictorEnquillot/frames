(** {3 Id3v1_tag_128_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v1_tag_128_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_it1 =
let sym_it1 = Tag_v.symbol_off_tag tag_it1 in
  Id3v1_tag_128_symbol_v.name sym_it1
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)


(** {6 Abbreviating_topson} *)

let header_3 = Id3v1_tag_128_tag_t.Header_3;;

let title_30 = Id3v1_tag_128_tag_t.Title_30;;

let artist_30 = Id3v1_tag_128_tag_t.Artist_30;;

let album_30 = Id3v1_tag_128_tag_t.Album_30;;

let year_4 = Id3v1_tag_128_tag_t.Year_4;;

let comment_28 = Id3v1_tag_128_tag_t.Comment_28;;

let comment_30 = Id3v1_tag_128_tag_t.Comment_30;;

let zero_byte_1 = Id3v1_tag_128_tag_t.Zero_byte_1;;

let track_1 = Id3v1_tag_128_tag_t.Track_1;;

let genre_1 = Id3v1_tag_128_tag_t.Genre_1;;


(** {6 Making} *)

let make soi_it1 nam_it1 s =
  let sym_it1 = Id3v1_tag_128_symbol_v.make nam_it1 s in
  Tag_v.make sym_it1 soi_it1
;;


(** created by ./generator id3v1_tag_128 implementation tag at 11:9 14 Jul 2012. *)



