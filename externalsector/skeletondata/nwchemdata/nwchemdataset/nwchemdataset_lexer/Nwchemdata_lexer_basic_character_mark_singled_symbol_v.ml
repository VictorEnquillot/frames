(** {3 Nwchemdata_lexer_basic_character_mark_singled_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : LEXNWC:Nwchemdata_lexer_basic_character_mark_singled_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space _ -> "nwchemdata_lexer_character_mark_space"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_ampersand -> "nwchemdata_lexer_character_mark_ampersand"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_back_quote -> "nwchemdata_lexer_character_mark_back_quote"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_bang -> "nwchemdata_lexer_character_mark_bang"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_beginning_of_line -> "nwchemdata_lexer_character_mark_beginning_of_line"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_blank -> "nwchemdata_lexer_character_mark_blank"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_colon -> "nwchemdata_lexer_character_mark_colon"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_comma -> "nwchemdata_lexer_character_mark_comma"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_divide -> "nwchemdata_lexer_character_mark_divide"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_dot -> "nwchemdata_lexer_character_mark_dot"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_double_quote -> "nwchemdata_lexer_character_mark_double_quote"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line -> "nwchemdata_lexer_character_mark_end_of_line"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_equal -> "nwchemdata_lexer_character_mark_equal"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_greater_than -> "nwchemdata_lexer_character_mark_greater_than"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_hash -> "nwchemdata_lexer_character_mark_hash"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_less_than -> "nwchemdata_lexer_character_mark_less_than"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_minus -> "nwchemdata_lexer_character_mark_minus"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_pipe -> "nwchemdata_lexer_character_mark_pipe"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_plus -> "nwchemdata_lexer_character_mark_plus"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_question_mark -> "nwchemdata_lexer_character_mark_question_mark"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_quote -> "nwchemdata_lexer_character_mark_quote"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_semicolon -> "nwchemdata_lexer_character_mark_semicolon"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_tabulation -> "nwchemdata_lexer_character_mark_tabulation"
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_times -> "nwchemdata_lexer_character_mark_times"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space s -> s
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_ampersand -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_back_quote -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_bang -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_beginning_of_line -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_blank -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_colon -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_comma -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_divide -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_dot -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_double_quote -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_equal -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_greater_than -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_hash -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_less_than -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_minus -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_pipe -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_plus -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_question_mark -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_quote -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_semicolon -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_tabulation -> ""
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_times -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dms =
  Format.sprintf "Nwchemdata_lexer_basic_character_mark_singled_symbol_t.%s" (String.capitalize (name sym_dms))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dms =
  Format.sprintf "%s \"%s\"" (longname sym_dms) (string_off sym_dms)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_nwchemdata_lexer_character_mark_ampersand = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_ampersand -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_back_quote = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_back_quote -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_bang = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_bang -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_beginning_of_line = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_beginning_of_line -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_blank = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_blank -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_colon = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_colon -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_comma = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_comma -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_divide = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_divide -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_dot = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_dot -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_double_quote = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_double_quote -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_end_of_line = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_equal = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_equal -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_greater_than = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_greater_than -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_hash = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_hash -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_less_than = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_less_than -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_minus = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_minus -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_pipe = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_pipe -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_plus = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_plus -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_question_mark = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_question_mark -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_quote = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_quote -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_semicolon = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_semicolon -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_tabulation = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_tabulation -> true
  | _ -> false
;;

let is_nwchemdata_lexer_character_mark_times = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_times -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_nwchemdata_lexer_character_mark_space = function
  | Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space _ -> true
  | _ -> false
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let nwchemdata_lexer_character_mark_ampersand = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_ampersand;;

let nwchemdata_lexer_character_mark_back_quote = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_back_quote;;

let nwchemdata_lexer_character_mark_bang = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_bang;;

let nwchemdata_lexer_character_mark_beginning_of_line = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_beginning_of_line;;

let nwchemdata_lexer_character_mark_blank = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_blank;;

let nwchemdata_lexer_character_mark_colon = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_colon;;

let nwchemdata_lexer_character_mark_comma = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_comma;;

let nwchemdata_lexer_character_mark_divide = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_divide;;

let nwchemdata_lexer_character_mark_dot = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_dot;;

let nwchemdata_lexer_character_mark_double_quote = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_double_quote;;

let nwchemdata_lexer_character_mark_end_of_line = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line;;

let nwchemdata_lexer_character_mark_equal = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_equal;;

let nwchemdata_lexer_character_mark_greater_than = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_greater_than;;

let nwchemdata_lexer_character_mark_hash = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_hash;;

let nwchemdata_lexer_character_mark_less_than = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_less_than;;

let nwchemdata_lexer_character_mark_minus = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_minus;;

let nwchemdata_lexer_character_mark_pipe = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_pipe;;

let nwchemdata_lexer_character_mark_plus = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_plus;;

let nwchemdata_lexer_character_mark_question_mark = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_question_mark;;

let nwchemdata_lexer_character_mark_quote = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_quote;;

let nwchemdata_lexer_character_mark_semicolon = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_semicolon;;

let nwchemdata_lexer_character_mark_tabulation = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_tabulation;;

let nwchemdata_lexer_character_mark_times = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_times;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let nwchemdata_lexer_character_mark_space s = Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_space s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "nwchemdata_lexer_character_mark_ampersand" -> nwchemdata_lexer_character_mark_ampersand
  | "nwchemdata_lexer_character_mark_back_quote" -> nwchemdata_lexer_character_mark_back_quote
  | "nwchemdata_lexer_character_mark_bang" -> nwchemdata_lexer_character_mark_bang
  | "nwchemdata_lexer_character_mark_beginning_of_line" -> nwchemdata_lexer_character_mark_beginning_of_line
  | "nwchemdata_lexer_character_mark_blank" -> nwchemdata_lexer_character_mark_blank
  | "nwchemdata_lexer_character_mark_colon" -> nwchemdata_lexer_character_mark_colon
  | "nwchemdata_lexer_character_mark_comma" -> nwchemdata_lexer_character_mark_comma
  | "nwchemdata_lexer_character_mark_divide" -> nwchemdata_lexer_character_mark_divide
  | "nwchemdata_lexer_character_mark_dot" -> nwchemdata_lexer_character_mark_dot
  | "nwchemdata_lexer_character_mark_double_quote" -> nwchemdata_lexer_character_mark_double_quote
  | "nwchemdata_lexer_character_mark_end_of_line" -> nwchemdata_lexer_character_mark_end_of_line
  | "nwchemdata_lexer_character_mark_equal" -> nwchemdata_lexer_character_mark_equal
  | "nwchemdata_lexer_character_mark_greater_than" -> nwchemdata_lexer_character_mark_greater_than
  | "nwchemdata_lexer_character_mark_hash" -> nwchemdata_lexer_character_mark_hash
  | "nwchemdata_lexer_character_mark_less_than" -> nwchemdata_lexer_character_mark_less_than
  | "nwchemdata_lexer_character_mark_minus" -> nwchemdata_lexer_character_mark_minus
  | "nwchemdata_lexer_character_mark_pipe" -> nwchemdata_lexer_character_mark_pipe
  | "nwchemdata_lexer_character_mark_plus" -> nwchemdata_lexer_character_mark_plus
  | "nwchemdata_lexer_character_mark_question_mark" -> nwchemdata_lexer_character_mark_question_mark
  | "nwchemdata_lexer_character_mark_quote" -> nwchemdata_lexer_character_mark_quote
  | "nwchemdata_lexer_character_mark_semicolon" -> nwchemdata_lexer_character_mark_semicolon
  | "nwchemdata_lexer_character_mark_tabulation" -> nwchemdata_lexer_character_mark_tabulation
  | "nwchemdata_lexer_character_mark_times" -> nwchemdata_lexer_character_mark_times
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_lexer_basic_character_mark_singled_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "nwchemdata_lexer_character_mark_space" -> nwchemdata_lexer_character_mark_space s
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_lexer_basic_character_mark_singled_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Nwchemdata_lexer_basic_character_mark_singled_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_lexer_basic_character_mark_singled_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_lexer_basic_character_mark_singled_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_lexer_basic_character_mark_singled_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_lexer_basic_character_mark_singled subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_lexer_basic_character_mark_singled_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_lexer_basic_character_mark_singled_symbol:Nwchemdata_lexer_basic_character_mark_singled_symbol_v.ml:make"
;;


(** Nwchemdata_lexer_basic_character_mark_singled_symbol_v at 17:56:2 on 23 Apr 2015. created by version v2.4 of generator *)



