(** {3 Tag_id3v2_3_specific_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Tag_id3v2_3_specific_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Tag_id3v2_3_specific_symbol_t.Equa -> "equa"
  | Tag_id3v2_3_specific_symbol_t.Ipls -> "ipls"
  | Tag_id3v2_3_specific_symbol_t.Rvad -> "rvad"
  | Tag_id3v2_3_specific_symbol_t.Tdat -> "tdat"
  | Tag_id3v2_3_specific_symbol_t.Time -> "time"
  | Tag_id3v2_3_specific_symbol_t.Tory -> "tory"
  | Tag_id3v2_3_specific_symbol_t.Trda -> "trda"
  | Tag_id3v2_3_specific_symbol_t.Tyer -> "tyer"
  | Tag_id3v2_3_specific_symbol_t.Tsiz -> "tsiz"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Tag_id3v2_3_specific_symbol_t.Equa -> ""
  | Tag_id3v2_3_specific_symbol_t.Ipls -> ""
  | Tag_id3v2_3_specific_symbol_t.Rvad -> ""
  | Tag_id3v2_3_specific_symbol_t.Tdat -> ""
  | Tag_id3v2_3_specific_symbol_t.Time -> ""
  | Tag_id3v2_3_specific_symbol_t.Tory -> ""
  | Tag_id3v2_3_specific_symbol_t.Trda -> ""
  | Tag_id3v2_3_specific_symbol_t.Tyer -> ""
  | Tag_id3v2_3_specific_symbol_t.Tsiz -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_t3s =
  Format.sprintf "Tag_id3v2_3_specific_symbol_t.%s" (String.capitalize (name sym_t3s))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_t3s =
  Format.sprintf "%s \"%s\"" (longname sym_t3s) (string_off sym_t3s)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_equa = function
  | Tag_id3v2_3_specific_symbol_t.Equa -> true
  | _ -> false
;;

let is_ipls = function
  | Tag_id3v2_3_specific_symbol_t.Ipls -> true
  | _ -> false
;;

let is_rvad = function
  | Tag_id3v2_3_specific_symbol_t.Rvad -> true
  | _ -> false
;;

let is_tdat = function
  | Tag_id3v2_3_specific_symbol_t.Tdat -> true
  | _ -> false
;;

let is_time = function
  | Tag_id3v2_3_specific_symbol_t.Time -> true
  | _ -> false
;;

let is_tory = function
  | Tag_id3v2_3_specific_symbol_t.Tory -> true
  | _ -> false
;;

let is_trda = function
  | Tag_id3v2_3_specific_symbol_t.Trda -> true
  | _ -> false
;;

let is_tyer = function
  | Tag_id3v2_3_specific_symbol_t.Tyer -> true
  | _ -> false
;;

let is_tsiz = function
  | Tag_id3v2_3_specific_symbol_t.Tsiz -> true
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

let equa = Tag_id3v2_3_specific_symbol_t.Equa;;

let ipls = Tag_id3v2_3_specific_symbol_t.Ipls;;

let rvad = Tag_id3v2_3_specific_symbol_t.Rvad;;

let tdat = Tag_id3v2_3_specific_symbol_t.Tdat;;

let time = Tag_id3v2_3_specific_symbol_t.Time;;

let tory = Tag_id3v2_3_specific_symbol_t.Tory;;

let trda = Tag_id3v2_3_specific_symbol_t.Trda;;

let tyer = Tag_id3v2_3_specific_symbol_t.Tyer;;

let tsiz = Tag_id3v2_3_specific_symbol_t.Tsiz;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "equa" -> equa
  | "ipls" -> ipls
  | "rvad" -> rvad
  | "tdat" -> tdat
  | "time" -> time
  | "tory" -> tory
  | "trda" -> trda
  | "tyer" -> tyer
  | "tsiz" -> tsiz
  | _ ->
  failwith "Not_a_topson_bare:Tag_id3v2_3_specific_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Tag_id3v2_3_specific_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Tag_id3v2_3_specific_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Tag_id3v2_3_specific_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Tag_id3v2_3_specific_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Tag_id3v2_3_specific_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Tag_id3v2_3_specific subtype" nam s)
      "it does not exists"
      "Check file Tag_id3v2_3_specific_symbol_v.ml"
    in
    failwith "Not_a_tag_id3v2_3_specific_symbol:Tag_id3v2_3_specific_symbol_v.ml:make"
;;


(** Tag_id3v2_3_specific_symbol_v at 18:57:21 on 27 Jun 2013. created by version v2.3 of generator *)



