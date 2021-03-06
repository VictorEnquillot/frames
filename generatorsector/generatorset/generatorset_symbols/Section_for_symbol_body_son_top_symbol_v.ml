(** {3 Section_for_symbol_body_son_top_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Section_for_symbol_body_son_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_bare_off_pattern_for_symbol -> "is_one_topson_bare_off_pattern_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol -> "is_one_topson_notleaf_off_pattern_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_ofstring_off_pattern_for_symbol -> "is_one_topson_ofstring_off_pattern_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_bare_off_pattern_for_symbol -> "is_onlyson_bare_off_pattern_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_notleaf_off_pattern_for_symbol -> "is_onlyson_notleaf_off_pattern_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_ofstring_off_pattern_for_symbol -> "is_onlyson_ofstring_off_pattern_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_bare_for_symbol -> "name_topson_pattern_bare_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_notleaf_for_symbol -> "name_topson_pattern_notleaf_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_ofstring_for_symbol -> "name_topson_pattern_ofstring_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.One_topson_off_pattern_for_symbol -> "one_topson_off_pattern_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.Onlyson_off_pattern_for_symbol -> "onlyson_off_pattern_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_bare_for_symbol -> "string_off_topson_pattern_bare_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_notleaf_for_symbol -> "string_off_topson_pattern_notleaf_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_ofstring_for_symbol -> "string_off_topson_pattern_ofstring_for_symbol"
  | Section_for_symbol_body_son_top_symbol_t.Try_make_of_topson_with_failure_arrow -> "try_make_of_topson_with_failure_arrow"
  | Section_for_symbol_body_son_top_symbol_t.Try_name_of_topson_with_failure_arrow -> "try_name_of_topson_with_failure_arrow"
  | Section_for_symbol_body_son_top_symbol_t.Try_string_off_of_topson_with_failure_arrow -> "try_string_off_of_topson_with_failure_arrow"
  | Section_for_symbol_body_son_top_symbol_t.Try_top_of_topson_with_failure_arrow -> "try_top_of_topson_with_failure_arrow"
  | Section_for_symbol_body_son_top_symbol_t.Upgrade_topson_symbol -> "upgrade_topson_symbol"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_bare_off_pattern_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_ofstring_off_pattern_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_bare_off_pattern_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_notleaf_off_pattern_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_ofstring_off_pattern_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_bare_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_notleaf_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_ofstring_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.One_topson_off_pattern_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.Onlyson_off_pattern_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_bare_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_notleaf_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_ofstring_for_symbol -> ""
  | Section_for_symbol_body_son_top_symbol_t.Try_make_of_topson_with_failure_arrow -> ""
  | Section_for_symbol_body_son_top_symbol_t.Try_name_of_topson_with_failure_arrow -> ""
  | Section_for_symbol_body_son_top_symbol_t.Try_string_off_of_topson_with_failure_arrow -> ""
  | Section_for_symbol_body_son_top_symbol_t.Try_top_of_topson_with_failure_arrow -> ""
  | Section_for_symbol_body_son_top_symbol_t.Upgrade_topson_symbol -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_bst =
  Format.sprintf "Section_for_symbol_body_son_top_symbol_t.%s" (String.capitalize_ascii (name sym_bst))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_bst =
  Format.sprintf "%s \"%s\"" (longname sym_bst) (string_off sym_bst)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_is_one_topson_bare_off_pattern_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_bare_off_pattern_for_symbol -> true
  | _ -> false
;;

let is_is_one_topson_notleaf_off_pattern_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol -> true
  | _ -> false
;;

let is_is_one_topson_ofstring_off_pattern_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.Is_one_topson_ofstring_off_pattern_for_symbol -> true
  | _ -> false
;;

let is_is_onlyson_bare_off_pattern_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_bare_off_pattern_for_symbol -> true
  | _ -> false
;;

let is_is_onlyson_notleaf_off_pattern_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_notleaf_off_pattern_for_symbol -> true
  | _ -> false
;;

let is_is_onlyson_ofstring_off_pattern_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.Is_onlyson_ofstring_off_pattern_for_symbol -> true
  | _ -> false
;;

let is_name_topson_pattern_bare_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_bare_for_symbol -> true
  | _ -> false
;;

let is_name_topson_pattern_notleaf_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_notleaf_for_symbol -> true
  | _ -> false
;;

let is_name_topson_pattern_ofstring_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_ofstring_for_symbol -> true
  | _ -> false
;;

let is_one_topson_off_pattern_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.One_topson_off_pattern_for_symbol -> true
  | _ -> false
;;

let is_onlyson_off_pattern_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.Onlyson_off_pattern_for_symbol -> true
  | _ -> false
;;

let is_string_off_topson_pattern_bare_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_bare_for_symbol -> true
  | _ -> false
;;

let is_string_off_topson_pattern_notleaf_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_notleaf_for_symbol -> true
  | _ -> false
;;

let is_string_off_topson_pattern_ofstring_for_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_ofstring_for_symbol -> true
  | _ -> false
;;

let is_try_make_of_topson_with_failure_arrow = function
  | Section_for_symbol_body_son_top_symbol_t.Try_make_of_topson_with_failure_arrow -> true
  | _ -> false
;;

let is_try_name_of_topson_with_failure_arrow = function
  | Section_for_symbol_body_son_top_symbol_t.Try_name_of_topson_with_failure_arrow -> true
  | _ -> false
;;

let is_try_string_off_of_topson_with_failure_arrow = function
  | Section_for_symbol_body_son_top_symbol_t.Try_string_off_of_topson_with_failure_arrow -> true
  | _ -> false
;;

let is_try_top_of_topson_with_failure_arrow = function
  | Section_for_symbol_body_son_top_symbol_t.Try_top_of_topson_with_failure_arrow -> true
  | _ -> false
;;

let is_upgrade_topson_symbol = function
  | Section_for_symbol_body_son_top_symbol_t.Upgrade_topson_symbol -> true
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

let is_one_topson_bare_off_pattern_for_symbol = Section_for_symbol_body_son_top_symbol_t.Is_one_topson_bare_off_pattern_for_symbol;;

let is_one_topson_notleaf_off_pattern_for_symbol = Section_for_symbol_body_son_top_symbol_t.Is_one_topson_notleaf_off_pattern_for_symbol;;

let is_one_topson_ofstring_off_pattern_for_symbol = Section_for_symbol_body_son_top_symbol_t.Is_one_topson_ofstring_off_pattern_for_symbol;;

let is_onlyson_bare_off_pattern_for_symbol = Section_for_symbol_body_son_top_symbol_t.Is_onlyson_bare_off_pattern_for_symbol;;

let is_onlyson_notleaf_off_pattern_for_symbol = Section_for_symbol_body_son_top_symbol_t.Is_onlyson_notleaf_off_pattern_for_symbol;;

let is_onlyson_ofstring_off_pattern_for_symbol = Section_for_symbol_body_son_top_symbol_t.Is_onlyson_ofstring_off_pattern_for_symbol;;

let name_topson_pattern_bare_for_symbol = Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_bare_for_symbol;;

let name_topson_pattern_notleaf_for_symbol = Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_notleaf_for_symbol;;

let name_topson_pattern_ofstring_for_symbol = Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_ofstring_for_symbol;;

let one_topson_off_pattern_for_symbol = Section_for_symbol_body_son_top_symbol_t.One_topson_off_pattern_for_symbol;;

let onlyson_off_pattern_for_symbol = Section_for_symbol_body_son_top_symbol_t.Onlyson_off_pattern_for_symbol;;

let string_off_topson_pattern_bare_for_symbol = Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_bare_for_symbol;;

let string_off_topson_pattern_notleaf_for_symbol = Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_notleaf_for_symbol;;

let string_off_topson_pattern_ofstring_for_symbol = Section_for_symbol_body_son_top_symbol_t.String_off_topson_pattern_ofstring_for_symbol;;

let try_make_of_topson_with_failure_arrow = Section_for_symbol_body_son_top_symbol_t.Try_make_of_topson_with_failure_arrow;;

let try_name_of_topson_with_failure_arrow = Section_for_symbol_body_son_top_symbol_t.Try_name_of_topson_with_failure_arrow;;

let try_string_off_of_topson_with_failure_arrow = Section_for_symbol_body_son_top_symbol_t.Try_string_off_of_topson_with_failure_arrow;;

let try_top_of_topson_with_failure_arrow = Section_for_symbol_body_son_top_symbol_t.Try_top_of_topson_with_failure_arrow;;

let upgrade_topson_symbol = Section_for_symbol_body_son_top_symbol_t.Upgrade_topson_symbol;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "is_one_topson_bare_off_pattern_for_symbol" -> is_one_topson_bare_off_pattern_for_symbol
  | "is_one_topson_notleaf_off_pattern_for_symbol" -> is_one_topson_notleaf_off_pattern_for_symbol
  | "is_one_topson_ofstring_off_pattern_for_symbol" -> is_one_topson_ofstring_off_pattern_for_symbol
  | "is_onlyson_bare_off_pattern_for_symbol" -> is_onlyson_bare_off_pattern_for_symbol
  | "is_onlyson_notleaf_off_pattern_for_symbol" -> is_onlyson_notleaf_off_pattern_for_symbol
  | "is_onlyson_ofstring_off_pattern_for_symbol" -> is_onlyson_ofstring_off_pattern_for_symbol
  | "name_topson_pattern_bare_for_symbol" -> name_topson_pattern_bare_for_symbol
  | "name_topson_pattern_notleaf_for_symbol" -> name_topson_pattern_notleaf_for_symbol
  | "name_topson_pattern_ofstring_for_symbol" -> name_topson_pattern_ofstring_for_symbol
  | "one_topson_off_pattern_for_symbol" -> one_topson_off_pattern_for_symbol
  | "onlyson_off_pattern_for_symbol" -> onlyson_off_pattern_for_symbol
  | "string_off_topson_pattern_bare_for_symbol" -> string_off_topson_pattern_bare_for_symbol
  | "string_off_topson_pattern_notleaf_for_symbol" -> string_off_topson_pattern_notleaf_for_symbol
  | "string_off_topson_pattern_ofstring_for_symbol" -> string_off_topson_pattern_ofstring_for_symbol
  | "try_make_of_topson_with_failure_arrow" -> try_make_of_topson_with_failure_arrow
  | "try_name_of_topson_with_failure_arrow" -> try_name_of_topson_with_failure_arrow
  | "try_string_off_of_topson_with_failure_arrow" -> try_string_off_of_topson_with_failure_arrow
  | "try_top_of_topson_with_failure_arrow" -> try_top_of_topson_with_failure_arrow
  | "upgrade_topson_symbol" -> upgrade_topson_symbol
  | _ ->
  failwith "Not_a_topson_bare:Section_for_symbol_body_son_top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_symbol_body_son_top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Section_for_symbol_body_son_top_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_symbol_body_son_top_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_symbol_body_son_top_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_symbol_body_son_top_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_symbol_body_son_top subtype" nam s)
      "it does not exists"
      "Check file section_for_symbol_body_son_top_symbol_v.ml"
    in
    failwith "Not_a_valid_section_for_symbol_body_son_top_symbol:Section_for_symbol_body_son_top_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator section_for_symbol_body_son_top implementation_for_symbol symbol at 10:33 30 Apr 2013. *)



