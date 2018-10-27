(** {3 Mp3_header_field_twobits_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_header_field_twobits_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_hf2 =
let sym_hf2 = Tag_v.symbol_off_tag tag_hf2 in
  Mp3_header_field_twobits_symbol_v.name sym_hf2
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)


(** {6 Abbreviating_topson} *)

