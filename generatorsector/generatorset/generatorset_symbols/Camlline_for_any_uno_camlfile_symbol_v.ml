(** {3 Camlline_for_any_uno_camlfile_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_any_uno_camlfile_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_any_uno_camlfile_symbol_t.Camlfile_title -> "camlfile_title"
  | Camlline_for_any_uno_camlfile_symbol_t.Ending -> "ending"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_any_uno_camlfile_symbol_t.Camlfile_title -> ""
  | Camlline_for_any_uno_camlfile_symbol_t.Ending -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_auc =
  Format.sprintf "Camlline_for_any_uno_camlfile_symbol_t.%s" (String.capitalize_ascii (name sym_auc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_auc =
  Format.sprintf "%s \"%s\"" (longname sym_auc) (string_off sym_auc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_camlfile_title = function
  | Camlline_for_any_uno_camlfile_symbol_t.Camlfile_title -> true
  | _ -> false
;;

let is_ending = function
  | Camlline_for_any_uno_camlfile_symbol_t.Ending -> true
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

let camlfile_title = Camlline_for_any_uno_camlfile_symbol_t.Camlfile_title;;

let ending = Camlline_for_any_uno_camlfile_symbol_t.Ending;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "camlfile_title" -> camlfile_title
  | "ending" -> ending
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_any_uno_camlfile_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_any_uno_camlfile_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlline_for_any_uno_camlfile_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_any_uno_camlfile_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_any_uno_camlfile_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_any_uno_camlfile_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_any_uno_camlfile subtype" nam s)
      "it does not exists"
      "Check file camlline_for_any_uno_camlfile_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_any_uno_camlfile_symbol:Camlline_for_any_uno_camlfile_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_any_uno_camlfile implementation_for_symbol symbol at 9:15 6 May 2013. *)



