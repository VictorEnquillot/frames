
(** {3 The functionalities for a Symbol for a Mp3_header_field_twobits.} *)

let nam_cod = "mp3_header_field_twobits_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Mp3_header_field_twobits_symbol_t.Layer -> "Layer"
  | Mp3_header_field_twobits_symbol_t.Frequency -> "Frequency"
  | Mp3_header_field_twobits_symbol_t.Mode -> "Mode"
  | Mp3_header_field_twobits_symbol_t.Mode_extension -> "Mode_extension"
  | Mp3_header_field_twobits_symbol_t.Emphasis -> "Emphasis"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let layer = Mp3_header_field_twobits_symbol_t.Layer;;

let frequency = Mp3_header_field_twobits_symbol_t.Frequency;;

let mode = Mp3_header_field_twobits_symbol_t.Mode;;

let mode_extension = Mp3_header_field_twobits_symbol_t.Mode_extension;;

let emphasis = Mp3_header_field_twobits_symbol_t.Emphasis;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Layer" -> layer
  | "Frequency" -> frequency
  | "Mode" -> mode
  | "Mode_extension" -> mode_extension
  | "Emphasis" -> emphasis
  | _ ->
    failwith "Not_Mp3_header_field_twobits_symbol:mp3_header_field_twobits_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator mp3_header_field_twobits implementation symbol at 17:43 6 Jun 2012. *)



