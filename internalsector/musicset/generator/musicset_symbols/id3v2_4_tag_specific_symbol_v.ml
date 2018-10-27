
(** {3 The functionalities for a Symbol for a Id3v2_4_tag_specific.} *)

let nam_cod = "id3v2_4_tag_specific_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Id3v2_4_tag_specific_symbol_t.ASPI -> "ASPI"
  | Id3v2_4_tag_specific_symbol_t.EQU2 -> "EQU2"
  | Id3v2_4_tag_specific_symbol_t.RVA2 -> "RVA2"
  | Id3v2_4_tag_specific_symbol_t.SEEK -> "SEEK"
  | Id3v2_4_tag_specific_symbol_t.SIGN -> "SIGN"
  | Id3v2_4_tag_specific_symbol_t.TDEN -> "TDEN"
  | Id3v2_4_tag_specific_symbol_t.TDOR -> "TDOR"
  | Id3v2_4_tag_specific_symbol_t.TDRC -> "TDRC"
  | Id3v2_4_tag_specific_symbol_t.TDRL -> "TDRL"
  | Id3v2_4_tag_specific_symbol_t.TDTG -> "TDTG"
  | Id3v2_4_tag_specific_symbol_t.TIPL -> "TIPL"
  | Id3v2_4_tag_specific_symbol_t.TMCL -> "TMCL"
  | Id3v2_4_tag_specific_symbol_t.TMOO -> "TMOO"
  | Id3v2_4_tag_specific_symbol_t.TPRO -> "TPRO"
  | Id3v2_4_tag_specific_symbol_t.TSOA -> "TSOA"
  | Id3v2_4_tag_specific_symbol_t.TSOP -> "TSOP"
  | Id3v2_4_tag_specific_symbol_t.TSOT -> "TSOT"
  | Id3v2_4_tag_specific_symbol_t.TSST -> "TSST"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let ASPI = Id3v2_4_tag_specific_symbol_t.ASPI;;

let EQU2 = Id3v2_4_tag_specific_symbol_t.EQU2;;

let RVA2 = Id3v2_4_tag_specific_symbol_t.RVA2;;

let SEEK = Id3v2_4_tag_specific_symbol_t.SEEK;;

let SIGN = Id3v2_4_tag_specific_symbol_t.SIGN;;

let TDEN = Id3v2_4_tag_specific_symbol_t.TDEN;;

let TDOR = Id3v2_4_tag_specific_symbol_t.TDOR;;

let TDRC = Id3v2_4_tag_specific_symbol_t.TDRC;;

let TDRL = Id3v2_4_tag_specific_symbol_t.TDRL;;

let TDTG = Id3v2_4_tag_specific_symbol_t.TDTG;;

let TIPL = Id3v2_4_tag_specific_symbol_t.TIPL;;

let TMCL = Id3v2_4_tag_specific_symbol_t.TMCL;;

let TMOO = Id3v2_4_tag_specific_symbol_t.TMOO;;

let TPRO = Id3v2_4_tag_specific_symbol_t.TPRO;;

let TSOA = Id3v2_4_tag_specific_symbol_t.TSOA;;

let TSOP = Id3v2_4_tag_specific_symbol_t.TSOP;;

let TSOT = Id3v2_4_tag_specific_symbol_t.TSOT;;

let TSST = Id3v2_4_tag_specific_symbol_t.TSST;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "ASPI" -> ASPI
  | "EQU2" -> EQU2
  | "RVA2" -> RVA2
  | "SEEK" -> SEEK
  | "SIGN" -> SIGN
  | "TDEN" -> TDEN
  | "TDOR" -> TDOR
  | "TDRC" -> TDRC
  | "TDRL" -> TDRL
  | "TDTG" -> TDTG
  | "TIPL" -> TIPL
  | "TMCL" -> TMCL
  | "TMOO" -> TMOO
  | "TPRO" -> TPRO
  | "TSOA" -> TSOA
  | "TSOP" -> TSOP
  | "TSOT" -> TSOT
  | "TSST" -> TSST
  | _ ->
    failwith "Not_Id3v2_4_tag_specific_symbol:id3v2_4_tag_specific_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator id3v2_4_tag_specific implementation symbol at 17:43 6 Jun 2012. *)



