(** {3 Tag_id3v2_base_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Tag_id3v2_base_tag_v";
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
  Tag_id3v2_base_symbol_v.name sym_mph
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)


(** {6 Abbreviating_topson} *)

(** created by ./generator mp3_header implementation tag at 11:9 14 Jul 2012. *)



