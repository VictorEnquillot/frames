(** {3 Mp3_header_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_header_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type mp3_header_symbol =
  | Mp3_header_1
  | Mp3_header_2
  | Mp3_header_2_5
;;


(** created by ./generator mp3_header implementation symbol at 9:23 14 Jul 2012. *)



