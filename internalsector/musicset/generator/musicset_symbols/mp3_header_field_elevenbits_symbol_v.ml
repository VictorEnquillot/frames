
(** {3 The functionalities for a Symbol for a Mp3_header_field_elevenbits.} *)

let nam_cod = "mp3_header_field_elevenbits_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Mp3_header_field_elevenbits_symbol_t.Sync_word -> "Sync_word"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let sync_word = Mp3_header_field_elevenbits_symbol_t.Sync_word;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Sync_word" -> sync_word
  | _ ->
    failwith "Not_Mp3_header_field_elevenbits_symbol:mp3_header_field_elevenbits_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator mp3_header_field_elevenbits implementation symbol at 17:43 6 Jun 2012. *)



