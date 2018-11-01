(** {3 Camlparagraph_for_symbol_let_argument_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlparagraph_for_symbol_let_argument_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_documentation_for_symbol -> "let_documentation_for_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_es_symbol_off_et_symbol_datastructure_argument -> "let_es_symbol_off_et_symbol_datastructure_argument"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_fullname_argument_for_symbol -> "let_fullname_argument_for_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol -> "let_grandson_notleaf_symbol_off_top_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol -> "let_is_grandson_notleaf_symbol_off_top_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare -> "let_is_grandson_bare"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_ofstring -> "let_is_grandson_ofstring"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_longname_argument_for_symbol -> "let_longname_argument_for_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_argument_for_symbol -> "let_make_argument_for_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol -> "let_make_nam_s_equal_for_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_bare_nam_equal_for_symbol -> "let_make_of_topson_bare_nam_equal_for_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_ofstring_nam_s_equal_for_symbol -> "let_make_of_topson_ofstring_nam_s_equal_for_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_notleaf_nam_s_equal_for_symbol -> "let_make_of_topson_notleaf_nam_s_equal_for_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_name_argument_for_symbol -> "let_name_argument_for_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_string_off_argument_for_symbol -> "let_string_off_argument_for_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol -> "let_top_symbol_of_grandson_notleaf_symbol"
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol -> "let_top_symbol_of_topson_notleaf_symbol"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_documentation_for_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_es_symbol_off_et_symbol_datastructure_argument -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_fullname_argument_for_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_ofstring -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_longname_argument_for_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_argument_for_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_bare_nam_equal_for_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_ofstring_nam_s_equal_for_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_notleaf_nam_s_equal_for_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_name_argument_for_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_string_off_argument_for_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol -> ""
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sla =
  Format.sprintf "Camlparagraph_for_symbol_let_argument_symbol_t.%s" (String.capitalize_ascii (name sym_sla))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sla =
  Format.sprintf "%s \"%s\"" (longname sym_sla) (string_off sym_sla)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_let_documentation_for_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_documentation_for_symbol -> true
  | _ -> false
;;

let is_let_es_symbol_off_et_symbol_datastructure_argument = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_es_symbol_off_et_symbol_datastructure_argument -> true
  | _ -> false
;;

let is_let_fullname_argument_for_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_fullname_argument_for_symbol -> true
  | _ -> false
;;

let is_let_grandson_notleaf_symbol_off_top_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol -> true
  | _ -> false
;;

let is_let_is_grandson_notleaf_symbol_off_top_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol -> true
  | _ -> false
;;

let is_let_is_grandson_bare = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare -> true
  | _ -> false
;;

let is_let_is_grandson_ofstring = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_ofstring -> true
  | _ -> false
;;

let is_let_longname_argument_for_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_longname_argument_for_symbol -> true
  | _ -> false
;;

let is_let_make_argument_for_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_argument_for_symbol -> true
  | _ -> false
;;

let is_let_make_nam_s_equal_for_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol -> true
  | _ -> false
;;

let is_let_make_of_topson_bare_nam_equal_for_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_bare_nam_equal_for_symbol -> true
  | _ -> false
;;

let is_let_make_of_topson_ofstring_nam_s_equal_for_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_ofstring_nam_s_equal_for_symbol -> true
  | _ -> false
;;

let is_let_make_of_topson_notleaf_nam_s_equal_for_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_notleaf_nam_s_equal_for_symbol -> true
  | _ -> false
;;

let is_let_name_argument_for_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_name_argument_for_symbol -> true
  | _ -> false
;;

let is_let_string_off_argument_for_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_string_off_argument_for_symbol -> true
  | _ -> false
;;

let is_let_top_symbol_of_grandson_notleaf_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol -> true
  | _ -> false
;;

let is_let_top_symbol_of_topson_notleaf_symbol = function
  | Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol -> true
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

let let_documentation_for_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_documentation_for_symbol;;

let let_es_symbol_off_et_symbol_datastructure_argument = Camlparagraph_for_symbol_let_argument_symbol_t.Let_es_symbol_off_et_symbol_datastructure_argument;;

let let_fullname_argument_for_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_fullname_argument_for_symbol;;

let let_grandson_notleaf_symbol_off_top_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_grandson_notleaf_symbol_off_top_symbol;;

let let_is_grandson_notleaf_symbol_off_top_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_notleaf_symbol_off_top_symbol;;

let let_is_grandson_bare = Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare;;

let let_is_grandson_ofstring = Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_ofstring;;

let let_longname_argument_for_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_longname_argument_for_symbol;;

let let_make_argument_for_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_argument_for_symbol;;

let let_make_nam_s_equal_for_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol;;

let let_make_of_topson_bare_nam_equal_for_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_bare_nam_equal_for_symbol;;

let let_make_of_topson_ofstring_nam_s_equal_for_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_ofstring_nam_s_equal_for_symbol;;

let let_make_of_topson_notleaf_nam_s_equal_for_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_notleaf_nam_s_equal_for_symbol;;

let let_name_argument_for_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_name_argument_for_symbol;;

let let_string_off_argument_for_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_string_off_argument_for_symbol;;

let let_top_symbol_of_grandson_notleaf_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_grandson_notleaf_symbol;;

let let_top_symbol_of_topson_notleaf_symbol = Camlparagraph_for_symbol_let_argument_symbol_t.Let_top_symbol_of_topson_notleaf_symbol;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "let_documentation_for_symbol" -> let_documentation_for_symbol
  | "let_es_symbol_off_et_symbol_datastructure_argument" -> let_es_symbol_off_et_symbol_datastructure_argument
  | "let_fullname_argument_for_symbol" -> let_fullname_argument_for_symbol
  | "let_grandson_notleaf_symbol_off_top_symbol" -> let_grandson_notleaf_symbol_off_top_symbol
  | "let_is_grandson_notleaf_symbol_off_top_symbol" -> let_is_grandson_notleaf_symbol_off_top_symbol
  | "let_is_grandson_bare" -> let_is_grandson_bare
  | "let_is_grandson_ofstring" -> let_is_grandson_ofstring
  | "let_longname_argument_for_symbol" -> let_longname_argument_for_symbol
  | "let_make_argument_for_symbol" -> let_make_argument_for_symbol
  | "let_make_nam_s_equal_for_symbol" -> let_make_nam_s_equal_for_symbol
  | "let_make_of_topson_bare_nam_equal_for_symbol" -> let_make_of_topson_bare_nam_equal_for_symbol
  | "let_make_of_topson_ofstring_nam_s_equal_for_symbol" -> let_make_of_topson_ofstring_nam_s_equal_for_symbol
  | "let_make_of_topson_notleaf_nam_s_equal_for_symbol" -> let_make_of_topson_notleaf_nam_s_equal_for_symbol
  | "let_name_argument_for_symbol" -> let_name_argument_for_symbol
  | "let_string_off_argument_for_symbol" -> let_string_off_argument_for_symbol
  | "let_top_symbol_of_grandson_notleaf_symbol" -> let_top_symbol_of_grandson_notleaf_symbol
  | "let_top_symbol_of_topson_notleaf_symbol" -> let_top_symbol_of_topson_notleaf_symbol
  | _ ->
  failwith "Not_a_topson_bare:Camlparagraph_for_symbol_let_argument_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlparagraph_for_symbol_let_argument_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlparagraph_for_symbol_let_argument_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlparagraph_for_symbol_let_argument_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlparagraph_for_symbol_let_argument_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlparagraph_for_symbol_let_argument_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlparagraph_for_symbol_let_argument subtype" nam s)
      "it does not exists"
      "Check file camlparagraph_for_symbol_let_argument_symbol_v.ml"
    in
    failwith "Not_a_valid_camlparagraph_for_symbol_let_argument_symbol:Camlparagraph_for_symbol_let_argument_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlparagraph_for_symbol_let_argument implementation_for_symbol symbol at 15:11 24 Apr 2013. *)



