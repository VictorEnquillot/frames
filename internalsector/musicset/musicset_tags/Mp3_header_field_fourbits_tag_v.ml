(** {3 Mp3_header_field_fourbits_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_header_field_fourbits_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_hf4 =
let sym_hf4 = Tag_v.symbol_off_tag tag_hf4 in
  Mp3_header_field_fourbits_symbol_v.name sym_hf4
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

