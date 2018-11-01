(** {3 Section_for_symbol_header_current_top_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Section_for_symbol_header_current_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_symbol_header_current_top_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol_argument_equal -> "let_grandson_notleaf_symbol_off_top_symbol_argument_equal"
  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_bare -> "let_is_grandson_bare"
  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal -> "let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal"
  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_ofstring -> "let_is_grandson_ofstring"
  | Section_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol_argument_equal -> "let_top_symbol_of_grandson_notleaf_symbol_argument_equal"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_symbol_header_current_top_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol_argument_equal -> ""
  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_bare -> ""
  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal -> ""
  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_ofstring -> ""
  | Section_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol_argument_equal -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_hct =
  Format.sprintf "Section_for_symbol_header_current_top_symbol_t.%s" (String.capitalize_ascii (name sym_hct))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_hct =
  Format.sprintf "%s \"%s\"" (longname sym_hct) (string_off sym_hct)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_let_grandson_notleaf_symbol_off_top_symbol_argument_equal = function
  | Section_for_symbol_header_current_top_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol_argument_equal -> true
  | _ -> false
;;

let is_let_is_grandson_bare = function
  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_bare -> true
  | _ -> false
;;

let is_let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal = function
  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal -> true
  | _ -> false
;;

let is_let_is_grandson_ofstring = function
  | Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_ofstring -> true
  | _ -> false
;;

let is_let_top_symbol_of_grandson_notleaf_symbol_argument_equal = function
  | Section_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol_argument_equal -> true
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

let let_grandson_notleaf_symbol_off_top_symbol_argument_equal = Section_for_symbol_header_current_top_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_bare = Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_bare;;

let let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal = Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal;;

let let_is_grandson_ofstring = Section_for_symbol_header_current_top_symbol_t.Let_is_grandson_ofstring;;

let let_top_symbol_of_grandson_notleaf_symbol_argument_equal = Section_for_symbol_header_current_top_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol_argument_equal;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "let_grandson_notleaf_symbol_off_top_symbol_argument_equal" -> let_grandson_notleaf_symbol_off_top_symbol_argument_equal
  | "let_is_grandson_bare" -> let_is_grandson_bare
  | "let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal" -> let_is_grandson_notleaf_symbol_off_top_symbol_argument_equal
  | "let_is_grandson_ofstring" -> let_is_grandson_ofstring
  | "let_top_symbol_of_grandson_notleaf_symbol_argument_equal" -> let_top_symbol_of_grandson_notleaf_symbol_argument_equal
  | _ ->
  failwith "Not_a_topson_bare:Section_for_symbol_header_current_top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_symbol_header_current_top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Section_for_symbol_header_current_top_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_symbol_header_current_top_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_symbol_header_current_top_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_symbol_header_current_top_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_symbol_header_current_top subtype" nam s)
      "it does not exists"
      "Check file section_for_symbol_header_current_top_symbol_v.ml"
    in
    failwith "Not_a_valid_section_for_symbol_header_current_top_symbol:Section_for_symbol_header_current_top_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator section_for_symbol_header_current_top implementation_for_symbol symbol at 10:33 30 Apr 2013. *)



