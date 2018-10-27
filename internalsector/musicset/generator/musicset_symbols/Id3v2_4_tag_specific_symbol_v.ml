(** {3 Id3v2_4_tag_specific_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_4_tag_specific_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Id3v2_4_tag_specific_symbol_t.Aspi -> "Aspi"
  | Id3v2_4_tag_specific_symbol_t.Equ2 -> "Equ2"
  | Id3v2_4_tag_specific_symbol_t.Rva2 -> "Rva2"
  | Id3v2_4_tag_specific_symbol_t.Seek -> "Seek"
  | Id3v2_4_tag_specific_symbol_t.Sign -> "Sign"
  | Id3v2_4_tag_specific_symbol_t.Tden -> "Tden"
  | Id3v2_4_tag_specific_symbol_t.Tdor -> "Tdor"
  | Id3v2_4_tag_specific_symbol_t.Tdrc -> "Tdrc"
  | Id3v2_4_tag_specific_symbol_t.Tdrl -> "Tdrl"
  | Id3v2_4_tag_specific_symbol_t.Tdtg -> "Tdtg"
  | Id3v2_4_tag_specific_symbol_t.Tipl -> "Tipl"
  | Id3v2_4_tag_specific_symbol_t.Tmcl -> "Tmcl"
  | Id3v2_4_tag_specific_symbol_t.Tmoo -> "Tmoo"
  | Id3v2_4_tag_specific_symbol_t.Tpro -> "Tpro"
  | Id3v2_4_tag_specific_symbol_t.Tsoa -> "Tsoa"
  | Id3v2_4_tag_specific_symbol_t.Tsop -> "Tsop"
  | Id3v2_4_tag_specific_symbol_t.Tsot -> "Tsot"
  | Id3v2_4_tag_specific_symbol_t.Tsst -> "Tsst"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let aspi = Id3v2_4_tag_specific_symbol_t.Aspi;;

let equ2 = Id3v2_4_tag_specific_symbol_t.Equ2;;

let rva2 = Id3v2_4_tag_specific_symbol_t.Rva2;;

let seek = Id3v2_4_tag_specific_symbol_t.Seek;;

let sign = Id3v2_4_tag_specific_symbol_t.Sign;;

let tden = Id3v2_4_tag_specific_symbol_t.Tden;;

let tdor = Id3v2_4_tag_specific_symbol_t.Tdor;;

let tdrc = Id3v2_4_tag_specific_symbol_t.Tdrc;;

let tdrl = Id3v2_4_tag_specific_symbol_t.Tdrl;;

let tdtg = Id3v2_4_tag_specific_symbol_t.Tdtg;;

let tipl = Id3v2_4_tag_specific_symbol_t.Tipl;;

let tmcl = Id3v2_4_tag_specific_symbol_t.Tmcl;;

let tmoo = Id3v2_4_tag_specific_symbol_t.Tmoo;;

let tpro = Id3v2_4_tag_specific_symbol_t.Tpro;;

let tsoa = Id3v2_4_tag_specific_symbol_t.Tsoa;;

let tsop = Id3v2_4_tag_specific_symbol_t.Tsop;;

let tsot = Id3v2_4_tag_specific_symbol_t.Tsot;;

let tsst = Id3v2_4_tag_specific_symbol_t.Tsst;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "aspi" -> aspi
  | "equ2" -> equ2
  | "rva2" -> rva2
  | "seek" -> seek
  | "sign" -> sign
  | "tden" -> tden
  | "tdor" -> tdor
  | "tdrc" -> tdrc
  | "tdrl" -> tdrl
  | "tdtg" -> tdtg
  | "tipl" -> tipl
  | "tmcl" -> tmcl
  | "tmoo" -> tmoo
  | "tpro" -> tpro
  | "tsoa" -> tsoa
  | "tsop" -> tsop
  | "tsot" -> tsot
  | "tsst" -> tsst
  | _ ->
    failwith "Not_Id3v2_4_tag_specific_symbol:Id3v2_4_tag_specific_symbol_v:make"
;;


(** created by ./generator id3v2_4_tag_specific implementation symbol at 9:23 14 Jul 2012. *)



