
(** {3 The functionalities for a Symbol for a Mp3_header_field_fourbits.} *)

let nam_cod = "mp3_header_field_fourbits_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Mp3_header_field_fourbits_symbol_t.Bit_rate -> "Bit_rate"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let bit_rate = Mp3_header_field_fourbits_symbol_t.Bit_rate;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Bit_rate" -> bit_rate
  | _ ->
    failwith "Not_Mp3_header_field_fourbits_symbol:mp3_header_field_fourbits_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator mp3_header_field_fourbits implementation symbol at 17:43 6 Jun 2012. *)



