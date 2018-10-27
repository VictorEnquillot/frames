(** {3 Mp3_header_field_onebit_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_header_field_onebit_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type mp3_header_field_onebit_symbol =
  | Version_symbol of Version_symbol_t.version_symbol
  | Error_protection
  | Pad_bit
  | Intensity_stereo
  | Ms_stereo
  | Private_bit
  | Copyright
  | Original
;;


(** created by ./generator mp3_header_field_onebit implementation symbol at 9:23 14 Jul 2012. *)



