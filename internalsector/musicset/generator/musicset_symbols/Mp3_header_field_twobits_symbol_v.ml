(** {3 Mp3_header_field_twobits_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_header_field_twobits_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Mp3_header_field_twobits_symbol_t.Layer -> "Layer"
  | Mp3_header_field_twobits_symbol_t.Frequency -> "Frequency"
  | Mp3_header_field_twobits_symbol_t.Mode -> "Mode"
  | Mp3_header_field_twobits_symbol_t.Mode_extension -> "Mode_extension"
  | Mp3_header_field_twobits_symbol_t.Emphasis -> "Emphasis"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let layer = Mp3_header_field_twobits_symbol_t.Layer;;

let frequency = Mp3_header_field_twobits_symbol_t.Frequency;;

let mode = Mp3_header_field_twobits_symbol_t.Mode;;

let mode_extension = Mp3_header_field_twobits_symbol_t.Mode_extension;;

let emphasis = Mp3_header_field_twobits_symbol_t.Emphasis;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "layer" -> layer
  | "frequency" -> frequency
  | "mode" -> mode
  | "mode_extension" -> mode_extension
  | "emphasis" -> emphasis
  | _ ->
    failwith "Not_Mp3_header_field_twobits_symbol:Mp3_header_field_twobits_symbol_v:make"
;;


(** created by ./generator mp3_header_field_twobits implementation symbol at 9:23 14 Jul 2012. *)



