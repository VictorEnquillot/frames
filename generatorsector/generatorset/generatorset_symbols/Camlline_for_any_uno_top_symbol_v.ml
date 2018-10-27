(** {3 Camlline_for_any_uno_top_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_any_uno_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_any_uno_top_symbol_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote -> "format_sprintf_doublequote_et_any_tdot_percents_doublequote"
  | Camlline_for_any_uno_top_symbol_t.Let_fullname_ac_at_equal -> "let_fullname_ac_at_equal"
  | Camlline_for_any_uno_top_symbol_t.Let_longname_ac_at_equal -> "let_longname_ac_at_equal"
  | Camlline_for_any_uno_top_symbol_t.Let_name_ac_at_equal -> "let_name_ac_at_equal"
  | Camlline_for_any_uno_top_symbol_t.Let_retrieve_tag_top_equal -> "let_retrieve_tag_top_equal"
  | Camlline_for_any_uno_top_symbol_t.Let_string_off_ac_at_equal -> "let_string_off_ac_at_equal"
  | Camlline_for_any_uno_top_symbol_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar -> "lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar"
  | Camlline_for_any_uno_top_symbol_t.Double_quote_current -> "double_quote_current"
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_fullname -> "sprintf_for_any_fullname"
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_longname -> "sprintf_for_any_longname"
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_bare -> "try_name_of_topson_bare"
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_notleaf -> "try_name_of_topson_notleaf"
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_ofstring -> "try_name_of_topson_ofstring"
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_bare -> "try_string_off_of_topson_bare"
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_notleaf -> "try_string_off_of_topson_notleaf"
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_ofstring -> "try_string_off_of_topson_ofstring"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_any_uno_top_symbol_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote -> ""
  | Camlline_for_any_uno_top_symbol_t.Let_fullname_ac_at_equal -> ""
  | Camlline_for_any_uno_top_symbol_t.Let_longname_ac_at_equal -> ""
  | Camlline_for_any_uno_top_symbol_t.Let_name_ac_at_equal -> ""
  | Camlline_for_any_uno_top_symbol_t.Let_retrieve_tag_top_equal -> ""
  | Camlline_for_any_uno_top_symbol_t.Let_string_off_ac_at_equal -> ""
  | Camlline_for_any_uno_top_symbol_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar -> ""
  | Camlline_for_any_uno_top_symbol_t.Double_quote_current -> ""
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_fullname -> ""
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_longname -> ""
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_bare -> ""
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_notleaf -> ""
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_ofstring -> ""
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_bare -> ""
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_notleaf -> ""
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_ofstring -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_aut =
  Format.sprintf "Camlline_for_any_uno_top_symbol_t.%s" (String.capitalize (name sym_aut))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_aut =
  Format.sprintf "%s \"%s\"" (longname sym_aut) (string_off sym_aut)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_format_sprintf_doublequote_et_any_tdot_percents_doublequote = function
  | Camlline_for_any_uno_top_symbol_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote -> true
  | _ -> false
;;

let is_let_fullname_ac_at_equal = function
  | Camlline_for_any_uno_top_symbol_t.Let_fullname_ac_at_equal -> true
  | _ -> false
;;

let is_let_longname_ac_at_equal = function
  | Camlline_for_any_uno_top_symbol_t.Let_longname_ac_at_equal -> true
  | _ -> false
;;

let is_let_name_ac_at_equal = function
  | Camlline_for_any_uno_top_symbol_t.Let_name_ac_at_equal -> true
  | _ -> false
;;

let is_let_retrieve_tag_top_equal = function
  | Camlline_for_any_uno_top_symbol_t.Let_retrieve_tag_top_equal -> true
  | _ -> false
;;

let is_let_string_off_ac_at_equal = function
  | Camlline_for_any_uno_top_symbol_t.Let_string_off_ac_at_equal -> true
  | _ -> false
;;

let is_lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar = function
  | Camlline_for_any_uno_top_symbol_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar -> true
  | _ -> false
;;

let is_double_quote_current = function
  | Camlline_for_any_uno_top_symbol_t.Double_quote_current -> true
  | _ -> false
;;

let is_sprintf_for_any_fullname = function
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_fullname -> true
  | _ -> false
;;

let is_sprintf_for_any_longname = function
  | Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_longname -> true
  | _ -> false
;;

let is_try_name_of_topson_bare = function
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_bare -> true
  | _ -> false
;;

let is_try_name_of_topson_notleaf = function
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_notleaf -> true
  | _ -> false
;;

let is_try_name_of_topson_ofstring = function
  | Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_ofstring -> true
  | _ -> false
;;

let is_try_string_off_of_topson_bare = function
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_bare -> true
  | _ -> false
;;

let is_try_string_off_of_topson_notleaf = function
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_notleaf -> true
  | _ -> false
;;

let is_try_string_off_of_topson_ofstring = function
  | Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_ofstring -> true
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

let format_sprintf_doublequote_et_any_tdot_percents_doublequote = Camlline_for_any_uno_top_symbol_t.Format_sprintf_doublequote_et_any_tdot_percents_doublequote;;

let let_fullname_ac_at_equal = Camlline_for_any_uno_top_symbol_t.Let_fullname_ac_at_equal;;

let let_longname_ac_at_equal = Camlline_for_any_uno_top_symbol_t.Let_longname_ac_at_equal;;

let let_name_ac_at_equal = Camlline_for_any_uno_top_symbol_t.Let_name_ac_at_equal;;

let let_retrieve_tag_top_equal = Camlline_for_any_uno_top_symbol_t.Let_retrieve_tag_top_equal;;

let let_string_off_ac_at_equal = Camlline_for_any_uno_top_symbol_t.Let_string_off_ac_at_equal;;

let lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar = Camlline_for_any_uno_top_symbol_t.Lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar;;

let double_quote_current = Camlline_for_any_uno_top_symbol_t.Double_quote_current;;

let sprintf_for_any_fullname = Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_fullname;;

let sprintf_for_any_longname = Camlline_for_any_uno_top_symbol_t.Sprintf_for_any_longname;;

let try_name_of_topson_bare = Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_bare;;

let try_name_of_topson_notleaf = Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_notleaf;;

let try_name_of_topson_ofstring = Camlline_for_any_uno_top_symbol_t.Try_name_of_topson_ofstring;;

let try_string_off_of_topson_bare = Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_bare;;

let try_string_off_of_topson_notleaf = Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_notleaf;;

let try_string_off_of_topson_ofstring = Camlline_for_any_uno_top_symbol_t.Try_string_off_of_topson_ofstring;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "format_sprintf_doublequote_et_any_tdot_percents_doublequote" -> format_sprintf_doublequote_et_any_tdot_percents_doublequote
  | "let_fullname_ac_at_equal" -> let_fullname_ac_at_equal
  | "let_longname_ac_at_equal" -> let_longname_ac_at_equal
  | "let_name_ac_at_equal" -> let_name_ac_at_equal
  | "let_retrieve_tag_top_equal" -> let_retrieve_tag_top_equal
  | "let_string_off_ac_at_equal" -> let_string_off_ac_at_equal
  | "lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar" -> lpar_string_dot_capitalize_lpar_name_ac_at_rpar_rpar
  | "double_quote_current" -> double_quote_current
  | "sprintf_for_any_fullname" -> sprintf_for_any_fullname
  | "sprintf_for_any_longname" -> sprintf_for_any_longname
  | "try_name_of_topson_bare" -> try_name_of_topson_bare
  | "try_name_of_topson_notleaf" -> try_name_of_topson_notleaf
  | "try_name_of_topson_ofstring" -> try_name_of_topson_ofstring
  | "try_string_off_of_topson_bare" -> try_string_off_of_topson_bare
  | "try_string_off_of_topson_notleaf" -> try_string_off_of_topson_notleaf
  | "try_string_off_of_topson_ofstring" -> try_string_off_of_topson_ofstring
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_any_uno_top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_any_uno_top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlline_for_any_uno_top_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_any_uno_top_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_any_uno_top_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_any_uno_top_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_any_uno_top subtype" nam s)
      "it does not exists"
      "Check file camlline_for_any_uno_top_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_any_uno_top_symbol:Camlline_for_any_uno_top_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_any_uno_top implementation_for_symbol symbol at 9:15 6 May 2013. *)



