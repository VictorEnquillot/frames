
(** {3 The functionalities for a Symbol for a Id3v2_tag_multiple.} *)

let nam_cod = "id3v2_tag_multiple_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Id3v2_tag_multiple_symbol_t.TPE1 -> "TPE1"
  | Id3v2_tag_multiple_symbol_t.TCOM -> "TCOM"
  | Id3v2_tag_multiple_symbol_t.TEXT -> "TEXT"
  | Id3v2_tag_multiple_symbol_t.TOLY -> "TOLY"
  | Id3v2_tag_multiple_symbol_t.TOPE -> "TOPE"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let TPE1 = Id3v2_tag_multiple_symbol_t.TPE1;;

let TCOM = Id3v2_tag_multiple_symbol_t.TCOM;;

let TEXT = Id3v2_tag_multiple_symbol_t.TEXT;;

let TOLY = Id3v2_tag_multiple_symbol_t.TOLY;;

let TOPE = Id3v2_tag_multiple_symbol_t.TOPE;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "TPE1" -> TPE1
  | "TCOM" -> TCOM
  | "TEXT" -> TEXT
  | "TOLY" -> TOLY
  | "TOPE" -> TOPE
  | _ ->
    failwith "Not_Id3v2_tag_multiple_symbol:id3v2_tag_multiple_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator id3v2_tag_multiple implementation symbol at 17:43 6 Jun 2012. *)



