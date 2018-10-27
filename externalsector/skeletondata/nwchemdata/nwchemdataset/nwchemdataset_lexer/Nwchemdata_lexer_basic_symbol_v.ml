(** {3 Nwchemdata_lexer_basic_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : LEXNWC:Nwchemdata_lexer_basic_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol sym_dbc ->
    Nwchemdata_lexer_basic_character_symbol_v.name sym_dbc
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol sym_dbw ->
    Nwchemdata_lexer_basic_word_symbol_v.name sym_dbw
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_boolean _ -> "nwchemdata_lexer_basic_boolean"
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_float _ -> "nwchemdata_lexer_basic_float"
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_integer _ -> "nwchemdata_lexer_basic_integer"
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_string _ -> "nwchemdata_lexer_basic_string"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol sym_dbc ->
  Nwchemdata_lexer_basic_character_symbol_v.string_off sym_dbc
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol sym_dbw ->
  Nwchemdata_lexer_basic_word_symbol_v.string_off sym_dbw
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_boolean s -> s
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_float s -> s
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_integer s -> s
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_string s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dlb =
  Format.sprintf "Nwchemdata_lexer_basic_symbol_t.%s" (String.capitalize (name sym_dlb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dlb =
  Format.sprintf "%s \"%s\"" (longname sym_dlb) (string_off sym_dlb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol = function
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol sym_dbc -> sym_dbc
  | sym_dlb -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol"
      "Nwchemdata_lexer_basic_character_symbol"
      (name sym_dlb) "check"
;;

let nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol = function
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol sym_dbw -> sym_dbw
  | sym_dlb -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol"
      "Nwchemdata_lexer_basic_word_symbol"
      (name sym_dlb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc
;;

let nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc
;;

let nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc
;;

let nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc
;;

let nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb = 
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
    Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_nwchemdata_lexer_basic_boolean = function
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_boolean _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_float = function
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_float _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_integer = function
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_integer _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_string = function
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_string _ -> true
  | _ -> false
;;


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol = function
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol = function
  | Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_nwchemdata_lexer_character_mark_l_bracket sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_l_bracket sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_l_curly sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_l_curly sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_l_parenthesis sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_l_parenthesis sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_r_bracket sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_r_bracket sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_r_curly sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_r_curly sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_r_parenthesis sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_r_parenthesis sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_ampersand sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_ampersand sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_back_quote sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_back_quote sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_bang sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_bang sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_beginning_of_line sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_beginning_of_line sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_blank sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_blank sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_colon sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_colon sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_comma sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_comma sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_divide sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_divide sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_dot sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_dot sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_double_quote sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_double_quote sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_end_of_line sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_equal sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_equal sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_greater_than sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_greater_than sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_hash sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_hash sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_less_than sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_less_than sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_minus sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_minus sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_pipe sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_pipe sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_plus sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_plus sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_question_mark sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_question_mark sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_quote sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_quote sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_semicolon sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_semicolon sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_tabulation sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_tabulation sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_times sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_times sym_dbc
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_lexer_basic_character_alphabetic_lowercase sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_basic_character_alphabetic_lowercase sym_dbc
    end
;;

let is_nwchemdata_lexer_basic_character_alphabetic_uppercase sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_basic_character_alphabetic_uppercase sym_dbc
    end
;;

let is_nwchemdata_lexer_character_mark_space sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_character_mark_space sym_dbc
    end
;;

let is_nwchemdata_lexer_basic_character_numeric sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_basic_character_numeric sym_dbc
    end
;;

let is_nwchemdata_lexer_basic_word_anycase_alphabetic sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_anycase_alphabetic sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_anycase_alphanumeric sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_anycase_alphanumeric sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_anycase_anyword sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_anycase_anyword sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_alphabetic sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_alphabetic sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_alphanumeric sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_alphanumeric sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_anyword sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_anyword sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_alphabetic sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_alphabetic sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_anyword sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_anyword sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_lowercase_alphabetic sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_lowercase_alphabetic sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_lowercase_alphanumeric sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_lowercase_alphanumeric sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_lowercase_anyword sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_lowercase_anyword sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_negative_integer sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_integer sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_negative_float sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_float sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_integer sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_integer sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_float sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_float sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_integer sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_float sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_float sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_uppercase_alphabetic sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_alphabetic sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_uppercase_alphanumeric sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_alphanumeric sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_uppercase_anyword sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
      let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
      Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_anyword sym_dbw
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc
    end
;;

let is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc
    end
;;

let is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc
    end
;;

let is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbc = nwchemdata_lexer_basic_character_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_character_symbol_v.is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc
    end
;;

let is_nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
    end
;;

let is_nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb =
  if not (is_nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb)
  then false
  else
    begin
  let sym_dbw = nwchemdata_lexer_basic_word_symbol_off_nwchemdata_lexer_basic_symbol sym_dlb in
  Nwchemdata_lexer_basic_word_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol sym_dbc = 
  Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol sym_dbc
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw = 
  Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_word_symbol sym_dbw
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_alphabetic_symbol sym_dca = 
  let sym_dbc = Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_alphabetic_symbol sym_dca in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol sym_dbc
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_mark_symbol sym_dcm = 
  let sym_dbc = Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol sym_dbc
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol sym_dmc = 
  let sym_dbc = Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol sym_dmc in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol sym_dbc
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol sym_dms = 
  let sym_dbc = Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol sym_dms in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol sym_dbc
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_anycase_symbol sym_dwa = 
  let sym_dbw = Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_anycase_symbol sym_dwa in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_capitalized_symbol sym_dwc = 
  let sym_dbw = Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_symbol sym_dwc in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_capitalized_strict_symbol sym_dcs = 
  let sym_dbw = Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_strict_symbol sym_dcs in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_lowercase_symbol sym_dwl = 
  let sym_dbw = Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_lowercase_symbol sym_dwl in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn = 
  let sym_dbw = Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_numeric_negative_symbol sym_dnn = 
  let sym_dbw = Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_negative_symbol sym_dnn in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_numeric_non_negative_symbol sym_dnn = 
  let sym_dbw = Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_non_negative_symbol sym_dnn in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_numeric_positive_symbol sym_dnp = 
  let sym_dbw = Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_positive_symbol sym_dnp in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw
;;

let nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_uppercase_symbol sym_dwu = 
  let sym_dbw = Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_uppercase_symbol sym_dwu in
    nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol sym_dbw
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let nwchemdata_lexer_basic_boolean s = Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_boolean s;;

let nwchemdata_lexer_basic_float s = Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_float s;;

let nwchemdata_lexer_basic_integer s = Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_integer s;;

let nwchemdata_lexer_basic_string s = Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_string s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let nwchemdata_lexer_character_mark_l_bracket = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_l_bracket;;

let nwchemdata_lexer_character_mark_l_curly = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_l_curly;;

let nwchemdata_lexer_character_mark_l_parenthesis = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_l_parenthesis;;

let nwchemdata_lexer_character_mark_r_bracket = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_r_bracket;;

let nwchemdata_lexer_character_mark_r_curly = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_r_curly;;

let nwchemdata_lexer_character_mark_r_parenthesis = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_r_parenthesis;;

let nwchemdata_lexer_character_mark_ampersand = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_ampersand;;

let nwchemdata_lexer_character_mark_back_quote = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_back_quote;;

let nwchemdata_lexer_character_mark_bang = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_bang;;

let nwchemdata_lexer_character_mark_beginning_of_line = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_beginning_of_line;;

let nwchemdata_lexer_character_mark_blank = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_blank;;

let nwchemdata_lexer_character_mark_colon = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_colon;;

let nwchemdata_lexer_character_mark_comma = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_comma;;

let nwchemdata_lexer_character_mark_divide = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_divide;;

let nwchemdata_lexer_character_mark_dot = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_dot;;

let nwchemdata_lexer_character_mark_double_quote = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_double_quote;;

let nwchemdata_lexer_character_mark_end_of_line = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_end_of_line;;

let nwchemdata_lexer_character_mark_equal = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_equal;;

let nwchemdata_lexer_character_mark_greater_than = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_greater_than;;

let nwchemdata_lexer_character_mark_hash = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_hash;;

let nwchemdata_lexer_character_mark_less_than = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_less_than;;

let nwchemdata_lexer_character_mark_minus = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_minus;;

let nwchemdata_lexer_character_mark_pipe = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_pipe;;

let nwchemdata_lexer_character_mark_plus = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_plus;;

let nwchemdata_lexer_character_mark_question_mark = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_question_mark;;

let nwchemdata_lexer_character_mark_quote = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_quote;;

let nwchemdata_lexer_character_mark_semicolon = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_semicolon;;

let nwchemdata_lexer_character_mark_tabulation = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_tabulation;;

let nwchemdata_lexer_character_mark_times = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_times;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_lexer_basic_character_alphabetic_lowercase s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol (Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_basic_character_alphabetic_lowercase s);;

let nwchemdata_lexer_basic_character_alphabetic_uppercase s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol (Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_basic_character_alphabetic_uppercase s);;

let nwchemdata_lexer_character_mark_space s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol (Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_character_mark_space s);;

let nwchemdata_lexer_basic_character_numeric s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol (Nwchemdata_lexer_basic_character_symbol_v.nwchemdata_lexer_basic_character_numeric s);;

let nwchemdata_lexer_basic_word_anycase_alphabetic s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_anycase_alphabetic s);;

let nwchemdata_lexer_basic_word_anycase_alphanumeric s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_anycase_alphanumeric s);;

let nwchemdata_lexer_basic_word_anycase_anyword s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_anycase_anyword s);;

let nwchemdata_lexer_basic_word_capitalized_alphabetic s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_capitalized_alphabetic s);;

let nwchemdata_lexer_basic_word_capitalized_alphanumeric s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_capitalized_alphanumeric s);;

let nwchemdata_lexer_basic_word_capitalized_anyword s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_capitalized_anyword s);;

let nwchemdata_lexer_basic_word_capitalized_strict_alphabetic s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_alphabetic s);;

let nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric s);;

let nwchemdata_lexer_basic_word_capitalized_strict_anyword s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_anyword s);;

let nwchemdata_lexer_basic_word_lowercase_alphabetic s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_lowercase_alphabetic s);;

let nwchemdata_lexer_basic_word_lowercase_alphanumeric s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_lowercase_alphanumeric s);;

let nwchemdata_lexer_basic_word_lowercase_anyword s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_lowercase_anyword s);;

let nwchemdata_lexer_basic_word_numeric_negative_integer s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_integer s);;

let nwchemdata_lexer_basic_word_numeric_negative_float s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_float s);;

let nwchemdata_lexer_basic_word_numeric_non_negative_integer s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_integer s);;

let nwchemdata_lexer_basic_word_numeric_non_negative_float s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_float s);;

let nwchemdata_lexer_basic_word_numeric_positive_integer s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_integer s);;

let nwchemdata_lexer_basic_word_numeric_positive_float s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_float s);;

let nwchemdata_lexer_basic_word_uppercase_alphabetic s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_uppercase_alphabetic s);;

let nwchemdata_lexer_basic_word_uppercase_alphanumeric s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_uppercase_alphanumeric s);;

let nwchemdata_lexer_basic_word_uppercase_anyword s = nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol (Nwchemdata_lexer_basic_word_symbol_v.nwchemdata_lexer_basic_word_uppercase_anyword s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_lexer_basic_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "nwchemdata_lexer_basic_boolean" -> nwchemdata_lexer_basic_boolean s
  | "nwchemdata_lexer_basic_float" -> nwchemdata_lexer_basic_float s
  | "nwchemdata_lexer_basic_integer" -> nwchemdata_lexer_basic_integer s
  | "nwchemdata_lexer_basic_string" -> nwchemdata_lexer_basic_string s
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_lexer_basic_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_character_symbol:Nwchemdata_lexer_basic_character_symbol_v.ml:make" ->
  try nwchemdata_lexer_basic_symbol_of_nwchemdata_lexer_basic_word_symbol
      (Nwchemdata_lexer_basic_word_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_word_symbol:Nwchemdata_lexer_basic_word_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_lexer_basic_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_lexer_basic_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_lexer_basic_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_lexer_basic_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_lexer_basic subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_lexer_basic_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_lexer_basic_symbol:Nwchemdata_lexer_basic_symbol_v.ml:make"
;;


(** Nwchemdata_lexer_basic_symbol_v at 17:56:1 on 23 Apr 2015. created by version v2.4 of generator *)



