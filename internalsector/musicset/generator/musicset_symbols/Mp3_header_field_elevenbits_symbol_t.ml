(** {3 Mp3_header_field_elevenbits_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_header_field_elevenbits_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type mp3_header_field_elevenbits_symbol =
  | Sync_word
;;


(** created by ./generator mp3_header_field_elevenbits implementation symbol at 9:23 14 Jul 2012. *)



