(** {3 Mp3_header_field_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_header_field_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type mp3_header_field_symbol =
  | Mp3_header_field_onebit_symbol of Mp3_header_field_onebit_symbol_t.mp3_header_field_onebit_symbol
  | Mp3_header_field_twobits_symbol of Mp3_header_field_twobits_symbol_t.mp3_header_field_twobits_symbol
  | Mp3_header_field_fourbits_symbol of Mp3_header_field_fourbits_symbol_t.mp3_header_field_fourbits_symbol
  | Mp3_header_field_elevenbits_symbol of Mp3_header_field_elevenbits_symbol_t.mp3_header_field_elevenbits_symbol
;;


(** created by ./generator mp3_header_field implementation symbol at 9:23 14 Jul 2012. *)



