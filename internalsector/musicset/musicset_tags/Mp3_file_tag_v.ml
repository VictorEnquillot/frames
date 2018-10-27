(** {3 Mp3_file_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_file_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_mpf =
let sym_mpf = Tag_v.symbol_off_tag tag_mpf in
  Mp3_file_symbol_v.name sym_mpf
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_grandson} *)

