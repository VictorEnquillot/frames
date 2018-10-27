(** {3 Tag_id3v2_4_specific_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Tag_id3v2_4_specific_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Tag_id3v2_4_specific_symbol_t.Aspi -> "aspi"
  | Tag_id3v2_4_specific_symbol_t.Equ2 -> "equ2"
  | Tag_id3v2_4_specific_symbol_t.Rva2 -> "rva2"
  | Tag_id3v2_4_specific_symbol_t.Seek -> "seek"
  | Tag_id3v2_4_specific_symbol_t.Sign -> "sign"
  | Tag_id3v2_4_specific_symbol_t.Tden -> "tden"
  | Tag_id3v2_4_specific_symbol_t.Tdor -> "tdor"
  | Tag_id3v2_4_specific_symbol_t.Tdrc -> "tdrc"
  | Tag_id3v2_4_specific_symbol_t.Tdrl -> "tdrl"
  | Tag_id3v2_4_specific_symbol_t.Tdtg -> "tdtg"
  | Tag_id3v2_4_specific_symbol_t.Tipl -> "tipl"
  | Tag_id3v2_4_specific_symbol_t.Tmcl -> "tmcl"
  | Tag_id3v2_4_specific_symbol_t.Tmoo -> "tmoo"
  | Tag_id3v2_4_specific_symbol_t.Tpro -> "tpro"
  | Tag_id3v2_4_specific_symbol_t.Tsoa -> "tsoa"
  | Tag_id3v2_4_specific_symbol_t.Tsop -> "tsop"
  | Tag_id3v2_4_specific_symbol_t.Tsot -> "tsot"
  | Tag_id3v2_4_specific_symbol_t.Tsst -> "tsst"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Tag_id3v2_4_specific_symbol_t.Aspi -> ""
  | Tag_id3v2_4_specific_symbol_t.Equ2 -> ""
  | Tag_id3v2_4_specific_symbol_t.Rva2 -> ""
  | Tag_id3v2_4_specific_symbol_t.Seek -> ""
  | Tag_id3v2_4_specific_symbol_t.Sign -> ""
  | Tag_id3v2_4_specific_symbol_t.Tden -> ""
  | Tag_id3v2_4_specific_symbol_t.Tdor -> ""
  | Tag_id3v2_4_specific_symbol_t.Tdrc -> ""
  | Tag_id3v2_4_specific_symbol_t.Tdrl -> ""
  | Tag_id3v2_4_specific_symbol_t.Tdtg -> ""
  | Tag_id3v2_4_specific_symbol_t.Tipl -> ""
  | Tag_id3v2_4_specific_symbol_t.Tmcl -> ""
  | Tag_id3v2_4_specific_symbol_t.Tmoo -> ""
  | Tag_id3v2_4_specific_symbol_t.Tpro -> ""
  | Tag_id3v2_4_specific_symbol_t.Tsoa -> ""
  | Tag_id3v2_4_specific_symbol_t.Tsop -> ""
  | Tag_id3v2_4_specific_symbol_t.Tsot -> ""
  | Tag_id3v2_4_specific_symbol_t.Tsst -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_t4s =
  Format.sprintf "Tag_id3v2_4_specific_symbol_t.%s" (String.capitalize (name sym_t4s))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_t4s =
  Format.sprintf "%s \"%s\"" (longname sym_t4s) (string_off sym_t4s)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_aspi = function
  | Tag_id3v2_4_specific_symbol_t.Aspi -> true
  | _ -> false
;;

let is_equ2 = function
  | Tag_id3v2_4_specific_symbol_t.Equ2 -> true
  | _ -> false
;;

let is_rva2 = function
  | Tag_id3v2_4_specific_symbol_t.Rva2 -> true
  | _ -> false
;;

let is_seek = function
  | Tag_id3v2_4_specific_symbol_t.Seek -> true
  | _ -> false
;;

let is_sign = function
  | Tag_id3v2_4_specific_symbol_t.Sign -> true
  | _ -> false
;;

let is_tden = function
  | Tag_id3v2_4_specific_symbol_t.Tden -> true
  | _ -> false
;;

let is_tdor = function
  | Tag_id3v2_4_specific_symbol_t.Tdor -> true
  | _ -> false
;;

let is_tdrc = function
  | Tag_id3v2_4_specific_symbol_t.Tdrc -> true
  | _ -> false
;;

let is_tdrl = function
  | Tag_id3v2_4_specific_symbol_t.Tdrl -> true
  | _ -> false
;;

let is_tdtg = function
  | Tag_id3v2_4_specific_symbol_t.Tdtg -> true
  | _ -> false
;;

let is_tipl = function
  | Tag_id3v2_4_specific_symbol_t.Tipl -> true
  | _ -> false
;;

let is_tmcl = function
  | Tag_id3v2_4_specific_symbol_t.Tmcl -> true
  | _ -> false
;;

let is_tmoo = function
  | Tag_id3v2_4_specific_symbol_t.Tmoo -> true
  | _ -> false
;;

let is_tpro = function
  | Tag_id3v2_4_specific_symbol_t.Tpro -> true
  | _ -> false
;;

let is_tsoa = function
  | Tag_id3v2_4_specific_symbol_t.Tsoa -> true
  | _ -> false
;;

let is_tsop = function
  | Tag_id3v2_4_specific_symbol_t.Tsop -> true
  | _ -> false
;;

let is_tsot = function
  | Tag_id3v2_4_specific_symbol_t.Tsot -> true
  | _ -> false
;;

let is_tsst = function
  | Tag_id3v2_4_specific_symbol_t.Tsst -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let aspi = Tag_id3v2_4_specific_symbol_t.Aspi;;

let equ2 = Tag_id3v2_4_specific_symbol_t.Equ2;;

let rva2 = Tag_id3v2_4_specific_symbol_t.Rva2;;

let seek = Tag_id3v2_4_specific_symbol_t.Seek;;

let sign = Tag_id3v2_4_specific_symbol_t.Sign;;

let tden = Tag_id3v2_4_specific_symbol_t.Tden;;

let tdor = Tag_id3v2_4_specific_symbol_t.Tdor;;

let tdrc = Tag_id3v2_4_specific_symbol_t.Tdrc;;

let tdrl = Tag_id3v2_4_specific_symbol_t.Tdrl;;

let tdtg = Tag_id3v2_4_specific_symbol_t.Tdtg;;

let tipl = Tag_id3v2_4_specific_symbol_t.Tipl;;

let tmcl = Tag_id3v2_4_specific_symbol_t.Tmcl;;

let tmoo = Tag_id3v2_4_specific_symbol_t.Tmoo;;

let tpro = Tag_id3v2_4_specific_symbol_t.Tpro;;

let tsoa = Tag_id3v2_4_specific_symbol_t.Tsoa;;

let tsop = Tag_id3v2_4_specific_symbol_t.Tsop;;

let tsot = Tag_id3v2_4_specific_symbol_t.Tsot;;

let tsst = Tag_id3v2_4_specific_symbol_t.Tsst;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
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
  failwith "Not_a_topson_bare:Tag_id3v2_4_specific_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Tag_id3v2_4_specific_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Tag_id3v2_4_specific_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Tag_id3v2_4_specific_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Tag_id3v2_4_specific_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Tag_id3v2_4_specific_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Tag_id3v2_4_specific subtype" nam s)
      "it does not exists"
      "Check file Tag_id3v2_4_specific_symbol_v.ml"
    in
    failwith "Not_a_tag_id3v2_4_specific_symbol:Tag_id3v2_4_specific_symbol_v.ml:make"
;;


(** Tag_id3v2_4_specific_symbol_v at 18:57:22 on 27 Jun 2013. created by version v2.3 of generator *)



