
(** {3 The functionalities for a Symbol for a Id3v2_3_tag_specific.} *)

let nam_cod = "id3v2_3_tag_specific_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Id3v2_3_tag_specific_symbol_t.EQUA -> "EQUA"
  | Id3v2_3_tag_specific_symbol_t.IPLS -> "IPLS"
  | Id3v2_3_tag_specific_symbol_t.RVAD -> "RVAD"
  | Id3v2_3_tag_specific_symbol_t.TDAT -> "TDAT"
  | Id3v2_3_tag_specific_symbol_t.TIME -> "TIME"
  | Id3v2_3_tag_specific_symbol_t.TORY -> "TORY"
  | Id3v2_3_tag_specific_symbol_t.TRDA -> "TRDA"
  | Id3v2_3_tag_specific_symbol_t.TYER -> "TYER"
  | Id3v2_3_tag_specific_symbol_t.TSIZ -> "TSIZ"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let EQUA = Id3v2_3_tag_specific_symbol_t.EQUA;;

let IPLS = Id3v2_3_tag_specific_symbol_t.IPLS;;

let RVAD = Id3v2_3_tag_specific_symbol_t.RVAD;;

let TDAT = Id3v2_3_tag_specific_symbol_t.TDAT;;

let TIME = Id3v2_3_tag_specific_symbol_t.TIME;;

let TORY = Id3v2_3_tag_specific_symbol_t.TORY;;

let TRDA = Id3v2_3_tag_specific_symbol_t.TRDA;;

let TYER = Id3v2_3_tag_specific_symbol_t.TYER;;

let TSIZ = Id3v2_3_tag_specific_symbol_t.TSIZ;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "EQUA" -> EQUA
  | "IPLS" -> IPLS
  | "RVAD" -> RVAD
  | "TDAT" -> TDAT
  | "TIME" -> TIME
  | "TORY" -> TORY
  | "TRDA" -> TRDA
  | "TYER" -> TYER
  | "TSIZ" -> TSIZ
  | _ ->
    failwith "Not_Id3v2_3_tag_specific_symbol:id3v2_3_tag_specific_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator id3v2_3_tag_specific implementation symbol at 17:43 6 Jun 2012. *)



