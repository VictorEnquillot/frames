(** {3 Nwchemdata_lexer_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Current : LEXNWC:Nwchemdata_lexer_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol sym_dlb ->
    Nwchemdata_lexer_basic_symbol_v.name sym_dlb
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol sym_dlh ->
    Nwchemdata_lexer_hashline_symbol_v.name sym_dlh
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol sym_dlk ->
    Nwchemdata_lexer_keyword_symbol_v.name sym_dlk
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_symbol_symbol sym_dls ->
    Nwchemdata_lexer_symbol_symbol_v.name sym_dls
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol sym_dlv ->
    Nwchemdata_lexer_variable_symbol_v.name sym_dlv
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol sym_dlb ->
  Nwchemdata_lexer_basic_symbol_v.string_off sym_dlb
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol sym_dlh ->
  Nwchemdata_lexer_hashline_symbol_v.string_off sym_dlh
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol sym_dlk ->
  Nwchemdata_lexer_keyword_symbol_v.string_off sym_dlk
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_symbol_symbol sym_dls ->
  Nwchemdata_lexer_symbol_symbol_v.string_off sym_dls
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol sym_dlv ->
  Nwchemdata_lexer_variable_symbol_v.string_off sym_dlv
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dle =
  Format.sprintf "Nwchemdata_lexer_symbol_t.%s" (String.capitalize (name sym_dle))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dle =
  Format.sprintf "%s \"%s\"" (longname sym_dle) (string_off sym_dle)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol sym_dlb -> sym_dlb
  | sym_dle -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol"
      "Nwchemdata_lexer_basic_symbol"
      (name sym_dle) "check"
;;

let nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol sym_dlh -> sym_dlh
  | sym_dle -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol"
      "Nwchemdata_lexer_hashline_symbol"
      (name sym_dle) "check"
;;

let nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol sym_dlk -> sym_dlk
  | sym_dle -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol"
      "Nwchemdata_lexer_keyword_symbol"
      (name sym_dle) "check"
;;

let nwchemdata_lexer_symbol_symbol_off_nwchemdata_lexer_symbol = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_symbol_symbol sym_dls -> sym_dls
  | sym_dle -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_symbol_symbol_off_nwchemdata_lexer_symbol"
      "Nwchemdata_lexer_symbol_symbol"
      (name sym_dle) "check"
;;

let nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol sym_dlv -> sym_dlv
  | sym_dle -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol"
      "Nwchemdata_lexer_variable_symbol"
      (name sym_dle) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_symbol sym_dle = 
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
    Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_symbol_symbol_off_nwchemdata_lexer_symbol = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_symbol_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol = function
  | Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_nwchemdata_lexer_character_mark_l_bracket sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_l_bracket sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_l_curly sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_l_curly sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_l_parenthesis sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_l_parenthesis sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_r_bracket sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_r_bracket sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_r_curly sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_r_curly sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_r_parenthesis sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_r_parenthesis sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_ampersand sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_ampersand sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_back_quote sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_back_quote sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_bang sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_bang sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_beginning_of_line sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_beginning_of_line sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_blank sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_blank sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_colon sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_colon sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_comma sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_comma sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_divide sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_divide sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_dot sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_dot sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_double_quote sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_double_quote sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_end_of_line sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_equal sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_equal sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_greater_than sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_greater_than sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_hash sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_hash sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_less_than sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_less_than sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_minus sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_minus sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_pipe sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_pipe sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_plus sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_plus sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_question_mark sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_question_mark sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_quote sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_quote sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_semicolon sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_semicolon sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_tabulation sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_tabulation sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_times sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_times sym_dlb
    end
;;

let is_nwchemdata_lexer_hashline_empty sym_dle =
  if not (is_nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlh = nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_hashline_symbol_v.is_nwchemdata_lexer_hashline_empty sym_dlh
    end
;;

let is_nwchemdata_lexer_keyword_basis sym_dle =
  if not (is_nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_keyword_symbol_v.is_nwchemdata_lexer_keyword_basis sym_dlk
    end
;;

let is_nwchemdata_lexer_keyword_ecp sym_dle =
  if not (is_nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_keyword_symbol_v.is_nwchemdata_lexer_keyword_ecp sym_dlk
    end
;;

let is_nwchemdata_lexer_keyword_ecp_local sym_dle =
  if not (is_nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_keyword_symbol_v.is_nwchemdata_lexer_keyword_ecp_local sym_dlk
    end
;;

let is_nwchemdata_lexer_keyword_end sym_dle =
  if not (is_nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_keyword_symbol_v.is_nwchemdata_lexer_keyword_end sym_dlk
    end
;;

let is_nwchemdata_lexer_keyword_end_of_file sym_dle =
  if not (is_nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_keyword_symbol_v.is_nwchemdata_lexer_keyword_end_of_file sym_dlk
    end
;;

let is_nwchemdata_lexer_keyword_ecp_electron_number sym_dle =
  if not (is_nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_keyword_symbol_v.is_nwchemdata_lexer_keyword_ecp_electron_number sym_dlk
    end
;;

let is_nwchemdata_lexer_keyword_hash_basis sym_dle =
  if not (is_nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_keyword_symbol_v.is_nwchemdata_lexer_keyword_hash_basis sym_dlk
    end
;;

let is_nwchemdata_lexer_keyword_print sym_dle =
  if not (is_nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_keyword_symbol_v.is_nwchemdata_lexer_keyword_print sym_dlk
    end
;;

let is_nwchemdata_lexer_keyword_set sym_dle =
  if not (is_nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_keyword_symbol_v.is_nwchemdata_lexer_keyword_set sym_dlk
    end
;;

let is_nwchemdata_lexer_keyword_spin_orbit sym_dle =
  if not (is_nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = nwchemdata_lexer_keyword_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_keyword_symbol_v.is_nwchemdata_lexer_keyword_spin_orbit sym_dlk
    end
;;

let is_nwchemdata_lexer_symbol_r_arrow sym_dle =
  if not (is_nwchemdata_lexer_symbol_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dls = nwchemdata_lexer_symbol_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_symbol_symbol_v.is_nwchemdata_lexer_symbol_r_arrow sym_dls
    end
;;

let is_nwchemdata_lexer_symbol_l_arrow sym_dle =
  if not (is_nwchemdata_lexer_symbol_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dls = nwchemdata_lexer_symbol_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_symbol_symbol_v.is_nwchemdata_lexer_symbol_l_arrow sym_dls
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_lexer_basic_boolean sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_boolean sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_character_alphabetic_lowercase sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_character_alphabetic_lowercase sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_character_alphabetic_uppercase sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_character_alphabetic_uppercase sym_dlb
    end
;;

let is_nwchemdata_lexer_character_mark_space sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_character_mark_space sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_character_numeric sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_character_numeric sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_float sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_float sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_integer sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_integer sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_string sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_string sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_anycase_alphabetic sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_anycase_alphabetic sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_anycase_alphanumeric sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_anycase_alphanumeric sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_anycase_anyword sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_anycase_anyword sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_alphabetic sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_alphabetic sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_alphanumeric sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_alphanumeric sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_anyword sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_anyword sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_alphabetic sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_alphabetic sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_anyword sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_anyword sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_lowercase_alphabetic sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_lowercase_alphabetic sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_lowercase_alphanumeric sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_lowercase_alphanumeric sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_lowercase_anyword sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_lowercase_anyword sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_negative_integer sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_integer sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_negative_float sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_float sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_integer sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_integer sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_float sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_float sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_integer sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_float sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_float sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_uppercase_alphabetic sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_alphabetic sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_uppercase_alphanumeric sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_alphanumeric sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_uppercase_anyword sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_anyword sym_dlb
    end
;;

let is_nwchemdata_lexer_hashline_datafile sym_dle =
  if not (is_nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlh = nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_hashline_symbol_v.is_nwchemdata_lexer_hashline_datafile sym_dlh
    end
;;

let is_nwchemdata_lexer_hashline_dashed sym_dle =
  if not (is_nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlh = nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_hashline_symbol_v.is_nwchemdata_lexer_hashline_dashed sym_dlh
    end
;;

let is_nwchemdata_lexer_hashline_emsl sym_dle =
  if not (is_nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlh = nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_hashline_symbol_v.is_nwchemdata_lexer_hashline_emsl sym_dlh
    end
;;

let is_nwchemdata_lexer_hashline_header sym_dle =
  if not (is_nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlh = nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_hashline_symbol_v.is_nwchemdata_lexer_hashline_header sym_dlh
    end
;;

let is_nwchemdata_lexer_hashline_reference sym_dle =
  if not (is_nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlh = nwchemdata_lexer_hashline_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_hashline_symbol_v.is_nwchemdata_lexer_hashline_reference sym_dlh
    end
;;

let is_nwchemdata_lexer_variable_basis_name_atomic_orbital sym_dle =
  if not (is_nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlv = nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_variable_symbol_v.is_nwchemdata_lexer_variable_basis_name_atomic_orbital sym_dlv
    end
;;

let is_nwchemdata_lexer_variable_basis_name_spin_orbit sym_dle =
  if not (is_nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlv = nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_variable_symbol_v.is_nwchemdata_lexer_variable_basis_name_spin_orbit sym_dlv
    end
;;

let is_nwchemdata_lexer_variable_databox_name sym_dle =
  if not (is_nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlv = nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_variable_symbol_v.is_nwchemdata_lexer_variable_databox_name sym_dlv
    end
;;

let is_nwchemdata_lexer_variable_ecpset_name sym_dle =
  if not (is_nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlv = nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_variable_symbol_v.is_nwchemdata_lexer_variable_ecpset_name sym_dlv
    end
;;

let is_nwchemdata_lexer_variable_many_space sym_dle =
  if not (is_nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlv = nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_variable_symbol_v.is_nwchemdata_lexer_variable_many_space sym_dlv
    end
;;

let is_nwchemdata_lexer_variable_shell_name sym_dle =
  if not (is_nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlv = nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_variable_symbol_v.is_nwchemdata_lexer_variable_shell_name sym_dlv
    end
;;

let is_nwchemdata_lexer_variable_spaced_end_of_line sym_dle =
  if not (is_nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlv = nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_variable_symbol_v.is_nwchemdata_lexer_variable_spaced_end_of_line sym_dlv
    end
;;

let is_nwchemdata_lexer_variable_version sym_dle =
  if not (is_nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlv = nwchemdata_lexer_variable_symbol_off_nwchemdata_lexer_symbol sym_dle in
      Nwchemdata_lexer_variable_symbol_v.is_nwchemdata_lexer_variable_version sym_dlv
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;

let is_nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_symbol sym_dle =
  if not (is_nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = nwchemdata_lexer_basic_symbol_off_nwchemdata_lexer_symbol sym_dle in
  Nwchemdata_lexer_basic_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb = 
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_hashline_symbol sym_dlh = 
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_hashline_symbol sym_dlh
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol sym_dlk = 
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol sym_dlk
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_symbol_symbol sym_dls = 
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_symbol_symbol sym_dls
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_variable_symbol sym_dlv = 
  Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_variable_symbol sym_dlv
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_character_symbol sym_dbc = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol sym_dbc in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_character_alphabetic_symbol sym_dca = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_alphabetic_symbol sym_dca in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_character_mark_symbol sym_dcm = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol sym_dmc = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol sym_dmc in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol sym_dms = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol sym_dms in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_word_anycase_symbol sym_dwa = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_anycase_symbol sym_dwa in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_word_capitalized_symbol sym_dwc = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_capitalized_symbol sym_dwc in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_word_capitalized_strict_symbol sym_dcs = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_capitalized_strict_symbol sym_dcs in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_word_lowercase_symbol sym_dwl = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_lowercase_symbol sym_dwl in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_word_numeric_negative_symbol sym_dnn = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_numeric_negative_symbol sym_dnn in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_word_numeric_non_negative_symbol sym_dnn = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_numeric_non_negative_symbol sym_dnn in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_word_numeric_positive_symbol sym_dnp = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_numeric_positive_symbol sym_dnp in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;

let nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_word_uppercase_symbol sym_dwu = 
  let sym_dlb = Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_uppercase_symbol sym_dwu in
    nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol sym_dlb
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let nwchemdata_lexer_character_mark_l_bracket = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_l_bracket;;

let nwchemdata_lexer_character_mark_l_curly = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_l_curly;;

let nwchemdata_lexer_character_mark_l_parenthesis = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_l_parenthesis;;

let nwchemdata_lexer_character_mark_r_bracket = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_r_bracket;;

let nwchemdata_lexer_character_mark_r_curly = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_r_curly;;

let nwchemdata_lexer_character_mark_r_parenthesis = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_r_parenthesis;;

let nwchemdata_lexer_character_mark_ampersand = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_ampersand;;

let nwchemdata_lexer_character_mark_back_quote = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_back_quote;;

let nwchemdata_lexer_character_mark_bang = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_bang;;

let nwchemdata_lexer_character_mark_beginning_of_line = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_beginning_of_line;;

let nwchemdata_lexer_character_mark_blank = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_blank;;

let nwchemdata_lexer_character_mark_colon = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_colon;;

let nwchemdata_lexer_character_mark_comma = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_comma;;

let nwchemdata_lexer_character_mark_divide = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_divide;;

let nwchemdata_lexer_character_mark_dot = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_dot;;

let nwchemdata_lexer_character_mark_double_quote = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_double_quote;;

let nwchemdata_lexer_character_mark_end_of_line = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_end_of_line;;

let nwchemdata_lexer_character_mark_equal = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_equal;;

let nwchemdata_lexer_character_mark_greater_than = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_greater_than;;

let nwchemdata_lexer_character_mark_hash = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_hash;;

let nwchemdata_lexer_character_mark_less_than = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_less_than;;

let nwchemdata_lexer_character_mark_minus = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_minus;;

let nwchemdata_lexer_character_mark_pipe = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_pipe;;

let nwchemdata_lexer_character_mark_plus = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_plus;;

let nwchemdata_lexer_character_mark_question_mark = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_question_mark;;

let nwchemdata_lexer_character_mark_quote = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_quote;;

let nwchemdata_lexer_character_mark_semicolon = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_semicolon;;

let nwchemdata_lexer_character_mark_tabulation = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_tabulation;;

let nwchemdata_lexer_character_mark_times = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_times;;

let nwchemdata_lexer_hashline_empty = nwchemdata_lexer_symbol_of_nwchemdata_lexer_hashline_symbol Nwchemdata_lexer_hashline_symbol_v.nwchemdata_lexer_hashline_empty;;

let nwchemdata_lexer_keyword_basis = nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_v.nwchemdata_lexer_keyword_basis;;

let nwchemdata_lexer_keyword_ecp = nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_v.nwchemdata_lexer_keyword_ecp;;

let nwchemdata_lexer_keyword_ecp_local = nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_v.nwchemdata_lexer_keyword_ecp_local;;

let nwchemdata_lexer_keyword_end = nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_v.nwchemdata_lexer_keyword_end;;

let nwchemdata_lexer_keyword_end_of_file = nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_v.nwchemdata_lexer_keyword_end_of_file;;

let nwchemdata_lexer_keyword_ecp_electron_number = nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_v.nwchemdata_lexer_keyword_ecp_electron_number;;

let nwchemdata_lexer_keyword_hash_basis = nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_v.nwchemdata_lexer_keyword_hash_basis;;

let nwchemdata_lexer_keyword_print = nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_v.nwchemdata_lexer_keyword_print;;

let nwchemdata_lexer_keyword_set = nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_v.nwchemdata_lexer_keyword_set;;

let nwchemdata_lexer_keyword_spin_orbit = nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol Nwchemdata_lexer_keyword_symbol_v.nwchemdata_lexer_keyword_spin_orbit;;

let nwchemdata_lexer_symbol_r_arrow = nwchemdata_lexer_symbol_of_nwchemdata_lexer_symbol_symbol Nwchemdata_lexer_symbol_symbol_v.nwchemdata_lexer_symbol_r_arrow;;

let nwchemdata_lexer_symbol_l_arrow = nwchemdata_lexer_symbol_of_nwchemdata_lexer_symbol_symbol Nwchemdata_lexer_symbol_symbol_v.nwchemdata_lexer_symbol_l_arrow;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_lexer_basic_boolean s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_boolean s);;

let nwchemdata_lexer_basic_character_alphabetic_lowercase s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_character_alphabetic_lowercase s);;

let nwchemdata_lexer_basic_character_alphabetic_uppercase s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_character_alphabetic_uppercase s);;

let nwchemdata_lexer_character_mark_space s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_character_mark_space s);;

let nwchemdata_lexer_basic_character_numeric s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_character_numeric s);;

let nwchemdata_lexer_basic_float s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_float s);;

let nwchemdata_lexer_basic_integer s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_integer s);;

let nwchemdata_lexer_basic_string s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_string s);;

let nwchemdata_lexer_basic_word_anycase_alphabetic s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_anycase_alphabetic s);;

let nwchemdata_lexer_basic_word_anycase_alphanumeric s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_anycase_alphanumeric s);;

let nwchemdata_lexer_basic_word_anycase_anyword s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_anycase_anyword s);;

let nwchemdata_lexer_basic_word_capitalized_alphabetic s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_capitalized_alphabetic s);;

let nwchemdata_lexer_basic_word_capitalized_alphanumeric s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_capitalized_alphanumeric s);;

let nwchemdata_lexer_basic_word_capitalized_anyword s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_capitalized_anyword s);;

let nwchemdata_lexer_basic_word_capitalized_strict_alphabetic s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_alphabetic s);;

let nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric s);;

let nwchemdata_lexer_basic_word_capitalized_strict_anyword s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_anyword s);;

let nwchemdata_lexer_basic_word_lowercase_alphabetic s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_lowercase_alphabetic s);;

let nwchemdata_lexer_basic_word_lowercase_alphanumeric s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_lowercase_alphanumeric s);;

let nwchemdata_lexer_basic_word_lowercase_anyword s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_lowercase_anyword s);;

let nwchemdata_lexer_basic_word_numeric_negative_integer s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_integer s);;

let nwchemdata_lexer_basic_word_numeric_negative_float s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_float s);;

let nwchemdata_lexer_basic_word_numeric_non_negative_integer s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_integer s);;

let nwchemdata_lexer_basic_word_numeric_non_negative_float s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_float s);;

let nwchemdata_lexer_basic_word_numeric_positive_integer s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_integer s);;

let nwchemdata_lexer_basic_word_numeric_positive_float s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_float s);;

let nwchemdata_lexer_basic_word_uppercase_alphabetic s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_uppercase_alphabetic s);;

let nwchemdata_lexer_basic_word_uppercase_alphanumeric s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_uppercase_alphanumeric s);;

let nwchemdata_lexer_basic_word_uppercase_anyword s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol (Nwchemdata_lexer_basic_symbol_v.nwchemdata_lexer_basic_word_uppercase_anyword s);;

let nwchemdata_lexer_hashline_datafile s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_hashline_symbol (Nwchemdata_lexer_hashline_symbol_v.nwchemdata_lexer_hashline_datafile s);;

let nwchemdata_lexer_hashline_dashed s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_hashline_symbol (Nwchemdata_lexer_hashline_symbol_v.nwchemdata_lexer_hashline_dashed s);;

let nwchemdata_lexer_hashline_emsl s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_hashline_symbol (Nwchemdata_lexer_hashline_symbol_v.nwchemdata_lexer_hashline_emsl s);;

let nwchemdata_lexer_hashline_header s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_hashline_symbol (Nwchemdata_lexer_hashline_symbol_v.nwchemdata_lexer_hashline_header s);;

let nwchemdata_lexer_hashline_reference s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_hashline_symbol (Nwchemdata_lexer_hashline_symbol_v.nwchemdata_lexer_hashline_reference s);;

let nwchemdata_lexer_variable_basis_name_atomic_orbital s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_variable_symbol (Nwchemdata_lexer_variable_symbol_v.nwchemdata_lexer_variable_basis_name_atomic_orbital s);;

let nwchemdata_lexer_variable_basis_name_spin_orbit s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_variable_symbol (Nwchemdata_lexer_variable_symbol_v.nwchemdata_lexer_variable_basis_name_spin_orbit s);;

let nwchemdata_lexer_variable_databox_name s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_variable_symbol (Nwchemdata_lexer_variable_symbol_v.nwchemdata_lexer_variable_databox_name s);;

let nwchemdata_lexer_variable_ecpset_name s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_variable_symbol (Nwchemdata_lexer_variable_symbol_v.nwchemdata_lexer_variable_ecpset_name s);;

let nwchemdata_lexer_variable_many_space s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_variable_symbol (Nwchemdata_lexer_variable_symbol_v.nwchemdata_lexer_variable_many_space s);;

let nwchemdata_lexer_variable_shell_name s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_variable_symbol (Nwchemdata_lexer_variable_symbol_v.nwchemdata_lexer_variable_shell_name s);;

let nwchemdata_lexer_variable_spaced_end_of_line s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_variable_symbol (Nwchemdata_lexer_variable_symbol_v.nwchemdata_lexer_variable_spaced_end_of_line s);;

let nwchemdata_lexer_variable_version s = nwchemdata_lexer_symbol_of_nwchemdata_lexer_variable_symbol (Nwchemdata_lexer_variable_symbol_v.nwchemdata_lexer_variable_version s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_lexer_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_lexer_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_lexer_symbol_of_nwchemdata_lexer_basic_symbol
      (Nwchemdata_lexer_basic_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_symbol:Nwchemdata_lexer_basic_symbol_v.ml:make" ->
  try nwchemdata_lexer_symbol_of_nwchemdata_lexer_hashline_symbol
      (Nwchemdata_lexer_hashline_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_hashline_symbol:Nwchemdata_lexer_hashline_symbol_v.ml:make" ->
  try nwchemdata_lexer_symbol_of_nwchemdata_lexer_keyword_symbol
      (Nwchemdata_lexer_keyword_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_keyword_symbol:Nwchemdata_lexer_keyword_symbol_v.ml:make" ->
  try nwchemdata_lexer_symbol_of_nwchemdata_lexer_symbol_symbol
      (Nwchemdata_lexer_symbol_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_symbol_symbol:Nwchemdata_lexer_symbol_symbol_v.ml:make" ->
  try nwchemdata_lexer_symbol_of_nwchemdata_lexer_variable_symbol
      (Nwchemdata_lexer_variable_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_variable_symbol:Nwchemdata_lexer_variable_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_lexer_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_lexer_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_lexer_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_lexer_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_lexer subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_lexer_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_lexer_symbol:Nwchemdata_lexer_symbol_v.ml:make"
;;


(** Nwchemdata_lexer_symbol_v at 17:56:0 on 23 Apr 2015. created by version v2.4 of generator *)



