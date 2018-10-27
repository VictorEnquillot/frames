(** {3 Nwchemdata_lexer_basic_character_mark_coupled_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : LEXNWC:Nwchemdata_lexer_basic_character_mark_coupled_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_bracket -> "nwchemdata_lexer_character_mark_l_bracket"
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_curly -> "nwchemdata_lexer_character_mark_l_curly"
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_parenthesis -> "nwchemdata_lexer_character_mark_l_parenthesis"
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_bracket -> "nwchemdata_lexer_character_mark_r_bracket"
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_curly -> "nwchemdata_lexer_character_mark_r_curly"
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_parenthesis -> "nwchemdata_lexer_character_mark_r_parenthesis"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_bracket -> ""
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_curly -> ""
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_parenthesis -> ""
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_bracket -> ""
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_curly -> ""
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_parenthesis -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dmc =
  Format.sprintf "Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.%s" (String.capitalize (name sym_dmc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dmc =
  Format.sprintf "%s \"%s\"" (longname sym_dmc) (string_off sym_dmc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_nwchemdata_lexer_character_mark_l_bracket = function
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_bracket -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_l_curly = function
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_curly -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_l_parenthesis = function
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_parenthesis -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_r_bracket = function
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_bracket -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_r_curly = function
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_curly -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_r_parenthesis = function
  | Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_parenthesis -> true
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

let nwchemdata_lexer_character_mark_l_bracket = Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_bracket;;

let nwchemdata_lexer_character_mark_l_curly = Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_curly;;

let nwchemdata_lexer_character_mark_l_parenthesis = Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_l_parenthesis;;

let nwchemdata_lexer_character_mark_r_bracket = Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_bracket;;

let nwchemdata_lexer_character_mark_r_curly = Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_curly;;

let nwchemdata_lexer_character_mark_r_parenthesis = Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.Nwchemdata_lexer_character_mark_r_parenthesis;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "nwchemdata_lexer_character_mark_l_bracket" -> nwchemdata_lexer_character_mark_l_bracket
  | "nwchemdata_lexer_character_mark_l_curly" -> nwchemdata_lexer_character_mark_l_curly
  | "nwchemdata_lexer_character_mark_l_parenthesis" -> nwchemdata_lexer_character_mark_l_parenthesis
  | "nwchemdata_lexer_character_mark_r_bracket" -> nwchemdata_lexer_character_mark_r_bracket
  | "nwchemdata_lexer_character_mark_r_curly" -> nwchemdata_lexer_character_mark_r_curly
  | "nwchemdata_lexer_character_mark_r_parenthesis" -> nwchemdata_lexer_character_mark_r_parenthesis
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_lexer_basic_character_mark_coupled subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_lexer_basic_character_mark_coupled_symbol:Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.ml:make"
;;


(** Nwchemdata_lexer_basic_character_mark_coupled_symbol_v at 17:56:2 on 23 Apr 2015. created by version v2.4 of generator *)



