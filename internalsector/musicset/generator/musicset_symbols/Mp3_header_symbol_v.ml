(** {3 Mp3_header_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_header_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Mp3_header_symbol_t.Mp3_header_1 -> "Mp3_header_1"
  | Mp3_header_symbol_t.Mp3_header_2 -> "Mp3_header_2"
  | Mp3_header_symbol_t.Mp3_header_2_5 -> "Mp3_header_2_5"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let mp3_header_1 = Mp3_header_symbol_t.Mp3_header_1;;

let mp3_header_2 = Mp3_header_symbol_t.Mp3_header_2;;

let mp3_header_2_5 = Mp3_header_symbol_t.Mp3_header_2_5;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "mp3_header_1" -> mp3_header_1
  | "mp3_header_2" -> mp3_header_2
  | "mp3_header_2_5" -> mp3_header_2_5
  | _ ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_header subtype" nam s)
      "it does not exists"
      "Check file mp3_header_symbol_v.ml" 
;;


(** created by ./generator mp3_header implementation symbol at 9:23 14 Jul 2012. *)



