
(** {3 The functionalities for a Symbol for a Mp3_header.} *)

let nam_cod = "mp3_header_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Mp3_header_symbol_t.Mp3_header_1 -> "Mp3_header_1"
  | Mp3_header_symbol_t.Mp3_header_2 -> "Mp3_header_2"
  | Mp3_header_symbol_t.Mp3_header_2_5 -> "Mp3_header_2_5"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let mp3_header_1 = Mp3_header_symbol_t.Mp3_header_1;;

let mp3_header_2 = Mp3_header_symbol_t.Mp3_header_2;;

let mp3_header_2_5 = Mp3_header_symbol_t.Mp3_header_2_5;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Mp3_header_1" -> mp3_header_1
  | "Mp3_header_2" -> mp3_header_2
  | "Mp3_header_2_5" -> mp3_header_2_5
  | _ ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_header subtype" nam s)
      "it does not exists"
      "Check file mp3_header_symbol_v.ml" 
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator mp3_header implementation symbol at 17:43 6 Jun 2012. *)



