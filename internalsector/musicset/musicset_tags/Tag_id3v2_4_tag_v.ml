(** {3 Tag_id3v2_4_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Tag_id3v2_4_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_mph =
let sym_mph = Tag_v.symbol_off_tag tag_mph in
  Tag_id3v2_4_symbol_v.name sym_mph
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)


(** {6 Abbreviating_topson} *)

let mp3_header_1 = Tag_id3v2_4_tag_t.Tag_id3v2_4_1;;

let mp3_header_2 = Tag_id3v2_4_tag_t.Tag_id3v2_4_2;;

let mp3_header_2_5 = Tag_id3v2_4_tag_t.Tag_id3v2_4_2_5;;


(** {6 Making} *)

let make soi_mph nam_mph s =
  let sym_mph = Tag_id3v2_4_symbol_v.make nam_mph s in
  Tag_v.make sym_mph soi_mph
;;


(** created by ./generator mp3_header implementation tag at 11:9 14 Jul 2012. *)



