(** {3 Version_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Version_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Version_symbol_t.Version_1 -> "version_1"
  | Version_symbol_t.Version_2 -> "version_2"
  | Version_symbol_t.Version_2_5 -> "version_2_5"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Version_symbol_t.Version_1 -> ""
  | Version_symbol_t.Version_2 -> ""
  | Version_symbol_t.Version_2_5 -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ver =
  Format.sprintf "Version_symbol_t.%s" (String.capitalize (name sym_ver))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ver =
  Format.sprintf "%s \"%s\"" (longname sym_ver) (string_off sym_ver)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_version_1 = function
  | Version_symbol_t.Version_1 -> true
  | _ -> false
;;

let is_version_2 = function
  | Version_symbol_t.Version_2 -> true
  | _ -> false
;;

let is_version_2_5 = function
  | Version_symbol_t.Version_2_5 -> true
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

let version_1 = Version_symbol_t.Version_1;;

let version_2 = Version_symbol_t.Version_2;;

let version_2_5 = Version_symbol_t.Version_2_5;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "version_1" -> version_1
  | "version_2" -> version_2
  | "version_2_5" -> version_2_5
  | _ ->
  failwith "Not_a_topson_bare:Version_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Version_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Version_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Version_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Version_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Version_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Version subtype" nam s)
      "it does not exists"
      "Check file Version_symbol_v.ml"
    in
    failwith "Not_a_version_symbol:Version_symbol_v.ml:make"
;;


(** Version_symbol_v at 18:57:23 on 27 Jun 2013. created by version v2.3 of generator *)



