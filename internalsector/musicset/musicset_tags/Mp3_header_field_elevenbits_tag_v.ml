(** {3 Mp3_header_field_elevenbits_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_header_field_elevenbits_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_hfe =
  let sym_hfe = Tag_v.symbol_off_tag tag_hfe in
  Mp3_header_field_elevenbits_symbol_v.name sym_hfe
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)


(** {6 Abbreviating_topson} *)


(** {6 Making} *)


(** created by ./generator mp3_header_field_elevenbits implementation tag at 11:9 14 Jul 2012. *)



