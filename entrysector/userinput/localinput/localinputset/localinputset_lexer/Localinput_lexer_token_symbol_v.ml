(** {3 Localinput_lexer_token_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_token_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_ampersand -> "localinput_lexer_token_ampersand"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_back_quote -> "localinput_lexer_token_back_quote"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_bang -> "localinput_lexer_token_bang"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_colon -> "localinput_lexer_token_colon"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_divide -> "localinput_lexer_token_divide"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_dot -> "localinput_lexer_token_dot"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote -> "localinput_lexer_token_doublequote"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_exclamation_mark -> "localinput_lexer_token_exclamation_mark"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket -> "localinput_lexer_token_l_bracket"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_curly -> "localinput_lexer_token_l_curly"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_parenthesis -> "localinput_lexer_token_l_parenthesis"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_minus -> "localinput_lexer_token_minus"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_pipe -> "localinput_lexer_token_pipe"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_plus -> "localinput_lexer_token_plus"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_question_mark -> "localinput_lexer_token_question_mark"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_quote -> "localinput_lexer_token_quote"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket -> "localinput_lexer_token_r_bracket"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_curly -> "localinput_lexer_token_r_curly"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_parenthesis -> "localinput_lexer_token_r_parenthesis"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_semicolon -> "localinput_lexer_token_semicolon"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_times -> "localinput_lexer_token_times"
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_white_space -> "localinput_lexer_token_white_space"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_ampersand -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_back_quote -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_bang -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_colon -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_divide -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_dot -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_exclamation_mark -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_curly -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_parenthesis -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_minus -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_pipe -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_plus -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_question_mark -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_quote -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_curly -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_parenthesis -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_semicolon -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_times -> ""
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_white_space -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_llt =
  Format.sprintf "Localinput_lexer_token_symbol_t.%s" (String.capitalize (name sym_llt))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_llt =
  Format.sprintf "%s \"%s\"" (longname sym_llt) (string_off sym_llt)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_localinput_lexer_token_ampersand = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_ampersand -> true
  | _ -> false
;;

let is_localinput_lexer_token_back_quote = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_back_quote -> true
  | _ -> false
;;

let is_localinput_lexer_token_bang = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_bang -> true
  | _ -> false
;;

let is_localinput_lexer_token_colon = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_colon -> true
  | _ -> false
;;

let is_localinput_lexer_token_divide = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_divide -> true
  | _ -> false
;;

let is_localinput_lexer_token_dot = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_dot -> true
  | _ -> false
;;

let is_localinput_lexer_token_doublequote = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote -> true
  | _ -> false
;;

let is_localinput_lexer_token_exclamation_mark = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_exclamation_mark -> true
  | _ -> false
;;

let is_localinput_lexer_token_l_bracket = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket -> true
  | _ -> false
;;

let is_localinput_lexer_token_l_curly = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_curly -> true
  | _ -> false
;;

let is_localinput_lexer_token_l_parenthesis = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_parenthesis -> true
  | _ -> false
;;

let is_localinput_lexer_token_minus = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_minus -> true
  | _ -> false
;;

let is_localinput_lexer_token_pipe = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_pipe -> true
  | _ -> false
;;

let is_localinput_lexer_token_plus = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_plus -> true
  | _ -> false
;;

let is_localinput_lexer_token_question_mark = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_question_mark -> true
  | _ -> false
;;

let is_localinput_lexer_token_quote = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_quote -> true
  | _ -> false
;;

let is_localinput_lexer_token_r_bracket = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket -> true
  | _ -> false
;;

let is_localinput_lexer_token_r_curly = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_curly -> true
  | _ -> false
;;

let is_localinput_lexer_token_r_parenthesis = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_parenthesis -> true
  | _ -> false
;;

let is_localinput_lexer_token_semicolon = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_semicolon -> true
  | _ -> false
;;

let is_localinput_lexer_token_times = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_times -> true
  | _ -> false
;;

let is_localinput_lexer_token_white_space = function
  | Localinput_lexer_token_symbol_t.Localinput_lexer_token_white_space -> true
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

let localinput_lexer_token_ampersand = Localinput_lexer_token_symbol_t.Localinput_lexer_token_ampersand;;

let localinput_lexer_token_back_quote = Localinput_lexer_token_symbol_t.Localinput_lexer_token_back_quote;;

let localinput_lexer_token_bang = Localinput_lexer_token_symbol_t.Localinput_lexer_token_bang;;

let localinput_lexer_token_colon = Localinput_lexer_token_symbol_t.Localinput_lexer_token_colon;;

let localinput_lexer_token_divide = Localinput_lexer_token_symbol_t.Localinput_lexer_token_divide;;

let localinput_lexer_token_dot = Localinput_lexer_token_symbol_t.Localinput_lexer_token_dot;;

let localinput_lexer_token_doublequote = Localinput_lexer_token_symbol_t.Localinput_lexer_token_doublequote;;

let localinput_lexer_token_exclamation_mark = Localinput_lexer_token_symbol_t.Localinput_lexer_token_exclamation_mark;;

let localinput_lexer_token_l_bracket = Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_bracket;;

let localinput_lexer_token_l_curly = Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_curly;;

let localinput_lexer_token_l_parenthesis = Localinput_lexer_token_symbol_t.Localinput_lexer_token_l_parenthesis;;

let localinput_lexer_token_minus = Localinput_lexer_token_symbol_t.Localinput_lexer_token_minus;;

let localinput_lexer_token_pipe = Localinput_lexer_token_symbol_t.Localinput_lexer_token_pipe;;

let localinput_lexer_token_plus = Localinput_lexer_token_symbol_t.Localinput_lexer_token_plus;;

let localinput_lexer_token_question_mark = Localinput_lexer_token_symbol_t.Localinput_lexer_token_question_mark;;

let localinput_lexer_token_quote = Localinput_lexer_token_symbol_t.Localinput_lexer_token_quote;;

let localinput_lexer_token_r_bracket = Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_bracket;;

let localinput_lexer_token_r_curly = Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_curly;;

let localinput_lexer_token_r_parenthesis = Localinput_lexer_token_symbol_t.Localinput_lexer_token_r_parenthesis;;

let localinput_lexer_token_semicolon = Localinput_lexer_token_symbol_t.Localinput_lexer_token_semicolon;;

let localinput_lexer_token_times = Localinput_lexer_token_symbol_t.Localinput_lexer_token_times;;

let localinput_lexer_token_white_space = Localinput_lexer_token_symbol_t.Localinput_lexer_token_white_space;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "localinput_lexer_token_ampersand" -> localinput_lexer_token_ampersand
  | "localinput_lexer_token_back_quote" -> localinput_lexer_token_back_quote
  | "localinput_lexer_token_bang" -> localinput_lexer_token_bang
  | "localinput_lexer_token_colon" -> localinput_lexer_token_colon
  | "localinput_lexer_token_divide" -> localinput_lexer_token_divide
  | "localinput_lexer_token_dot" -> localinput_lexer_token_dot
  | "localinput_lexer_token_doublequote" -> localinput_lexer_token_doublequote
  | "localinput_lexer_token_exclamation_mark" -> localinput_lexer_token_exclamation_mark
  | "localinput_lexer_token_l_bracket" -> localinput_lexer_token_l_bracket
  | "localinput_lexer_token_l_curly" -> localinput_lexer_token_l_curly
  | "localinput_lexer_token_l_parenthesis" -> localinput_lexer_token_l_parenthesis
  | "localinput_lexer_token_minus" -> localinput_lexer_token_minus
  | "localinput_lexer_token_pipe" -> localinput_lexer_token_pipe
  | "localinput_lexer_token_plus" -> localinput_lexer_token_plus
  | "localinput_lexer_token_question_mark" -> localinput_lexer_token_question_mark
  | "localinput_lexer_token_quote" -> localinput_lexer_token_quote
  | "localinput_lexer_token_r_bracket" -> localinput_lexer_token_r_bracket
  | "localinput_lexer_token_r_curly" -> localinput_lexer_token_r_curly
  | "localinput_lexer_token_r_parenthesis" -> localinput_lexer_token_r_parenthesis
  | "localinput_lexer_token_semicolon" -> localinput_lexer_token_semicolon
  | "localinput_lexer_token_times" -> localinput_lexer_token_times
  | "localinput_lexer_token_white_space" -> localinput_lexer_token_white_space
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_token_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_token_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Localinput_lexer_token_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_token_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_token_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_token_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer_token subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_token_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_token_symbol:Localinput_lexer_token_symbol_v.ml:make"
;;


(** Localinput_lexer_token_symbol_v at 12:10:44 on 22 Mar 2017. created by version v2.4 of generator *)



