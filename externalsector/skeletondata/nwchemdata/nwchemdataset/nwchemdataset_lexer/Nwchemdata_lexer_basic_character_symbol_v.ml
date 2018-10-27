(** {3 Nwchemdata_lexer_basic_character_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : LEXNWC:Nwchemdata_lexer_basic_character_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_alphabetic_symbol sym_dca ->
    Nwchemdata_lexer_basic_character_alphabetic_symbol_v.name sym_dca
  | Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol sym_dcm ->
    Nwchemdata_lexer_basic_character_mark_symbol_v.name sym_dcm
  | Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_numeric _ -> "nwchemdata_lexer_basic_character_numeric"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_alphabetic_symbol sym_dca ->
  Nwchemdata_lexer_basic_character_alphabetic_symbol_v.string_off sym_dca
  | Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol sym_dcm ->
  Nwchemdata_lexer_basic_character_mark_symbol_v.string_off sym_dcm
  | Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_numeric s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dbc =
  Format.sprintf "Nwchemdata_lexer_basic_character_symbol_t.%s" (String.capitalize (name sym_dbc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dbc =
  Format.sprintf "%s \"%s\"" (longname sym_dbc) (string_off sym_dbc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_character_symbol = function
  | Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_alphabetic_symbol sym_dca -> sym_dca
  | sym_dbc -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_character_symbol"
      "Nwchemdata_lexer_basic_character_alphabetic_symbol"
      (name sym_dbc) "check"
;;

let nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol = function
  | Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol sym_dcm -> sym_dcm
  | sym_dbc -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol"
      "Nwchemdata_lexer_basic_character_mark_symbol"
      (name sym_dbc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc = 
  let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
    Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm
;;

let nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc = 
  let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
    Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_nwchemdata_lexer_basic_character_numeric = function
  | Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_numeric _ -> true
  | _ -> false
;;


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_character_symbol = function
  | Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_alphabetic_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol = function
  | Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_nwchemdata_lexer_character_mark_l_bracket sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_l_bracket sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_l_curly sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_l_curly sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_l_parenthesis sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_l_parenthesis sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_r_bracket sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_r_bracket sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_r_curly sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_r_curly sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_r_parenthesis sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_r_parenthesis sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_ampersand sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_ampersand sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_back_quote sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_back_quote sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_bang sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_bang sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_beginning_of_line sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_beginning_of_line sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_blank sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_blank sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_colon sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_colon sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_comma sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_comma sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_divide sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_divide sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_dot sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_dot sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_double_quote sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_double_quote sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_end_of_line sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_equal sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_equal sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_greater_than sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_greater_than sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_hash sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_hash sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_less_than sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_less_than sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_minus sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_minus sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_pipe sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_pipe sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_plus sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_plus sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_question_mark sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_question_mark sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_quote sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_quote sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_semicolon sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_semicolon sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_tabulation sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_tabulation sym_dcm
    end
;;

let is_nwchemdata_lexer_character_mark_times sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_times sym_dcm
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_lexer_basic_character_alphabetic_lowercase sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dca = nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_alphabetic_symbol_v.is_nwchemdata_lexer_basic_character_alphabetic_lowercase sym_dca
    end
;;

let is_nwchemdata_lexer_basic_character_alphabetic_uppercase sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dca = nwchemdata_lexer_basic_character_alphabetic_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_alphabetic_symbol_v.is_nwchemdata_lexer_basic_character_alphabetic_uppercase sym_dca
    end
;;

let is_nwchemdata_lexer_character_mark_space sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
      let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
      Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_character_mark_space sym_dcm
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
  let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
  Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm
    end
;;

let is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc =
  if not (is_nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc)
  then false
  else
    begin
  let sym_dcm = nwchemdata_lexer_basic_character_mark_symbol_off_nwchemdata_lexer_basic_character_symbol sym_dbc in
  Nwchemdata_lexer_basic_character_mark_symbol_v.is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_alphabetic_symbol sym_dca = 
  Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_alphabetic_symbol sym_dca
;;

let nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol sym_dcm = 
  Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol sym_dcm
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol sym_dmc = 
  let sym_dcm = Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol sym_dmc in
    nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol sym_dcm
;;

let nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol sym_dms = 
  let sym_dcm = Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol sym_dms in
    nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol sym_dcm
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let nwchemdata_lexer_basic_character_numeric s = Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_numeric s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let nwchemdata_lexer_character_mark_l_bracket = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_l_bracket;;

let nwchemdata_lexer_character_mark_l_curly = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_l_curly;;

let nwchemdata_lexer_character_mark_l_parenthesis = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_l_parenthesis;;

let nwchemdata_lexer_character_mark_r_bracket = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_r_bracket;;

let nwchemdata_lexer_character_mark_r_curly = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_r_curly;;

let nwchemdata_lexer_character_mark_r_parenthesis = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_r_parenthesis;;

let nwchemdata_lexer_character_mark_ampersand = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_ampersand;;

let nwchemdata_lexer_character_mark_back_quote = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_back_quote;;

let nwchemdata_lexer_character_mark_bang = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_bang;;

let nwchemdata_lexer_character_mark_beginning_of_line = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_beginning_of_line;;

let nwchemdata_lexer_character_mark_blank = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_blank;;

let nwchemdata_lexer_character_mark_colon = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_colon;;

let nwchemdata_lexer_character_mark_comma = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_comma;;

let nwchemdata_lexer_character_mark_divide = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_divide;;

let nwchemdata_lexer_character_mark_dot = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_dot;;

let nwchemdata_lexer_character_mark_double_quote = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_double_quote;;

let nwchemdata_lexer_character_mark_end_of_line = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_end_of_line;;

let nwchemdata_lexer_character_mark_equal = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_equal;;

let nwchemdata_lexer_character_mark_greater_than = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_greater_than;;

let nwchemdata_lexer_character_mark_hash = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_hash;;

let nwchemdata_lexer_character_mark_less_than = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_less_than;;

let nwchemdata_lexer_character_mark_minus = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_minus;;

let nwchemdata_lexer_character_mark_pipe = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_pipe;;

let nwchemdata_lexer_character_mark_plus = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_plus;;

let nwchemdata_lexer_character_mark_question_mark = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_question_mark;;

let nwchemdata_lexer_character_mark_quote = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_quote;;

let nwchemdata_lexer_character_mark_semicolon = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_semicolon;;

let nwchemdata_lexer_character_mark_tabulation = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_tabulation;;

let nwchemdata_lexer_character_mark_times = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_times;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_lexer_basic_character_alphabetic_lowercase s = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_alphabetic_symbol (Nwchemdata_lexer_basic_character_alphabetic_symbol_v.nwchemdata_lexer_basic_character_alphabetic_lowercase s);;

let nwchemdata_lexer_basic_character_alphabetic_uppercase s = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_alphabetic_symbol (Nwchemdata_lexer_basic_character_alphabetic_symbol_v.nwchemdata_lexer_basic_character_alphabetic_uppercase s);;

let nwchemdata_lexer_character_mark_space s = nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol (Nwchemdata_lexer_basic_character_mark_symbol_v.nwchemdata_lexer_character_mark_space s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_lexer_basic_character_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "nwchemdata_lexer_basic_character_numeric" -> nwchemdata_lexer_basic_character_numeric s
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_lexer_basic_character_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_alphabetic_symbol
      (Nwchemdata_lexer_basic_character_alphabetic_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_character_alphabetic_symbol:Nwchemdata_lexer_basic_character_alphabetic_symbol_v.ml:make" ->
  try nwchemdata_lexer_basic_character_symbol_of_nwchemdata_lexer_basic_character_mark_symbol
      (Nwchemdata_lexer_basic_character_mark_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_character_mark_symbol:Nwchemdata_lexer_basic_character_mark_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_lexer_basic_character_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_lexer_basic_character_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_lexer_basic_character_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_lexer_basic_character_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_lexer_basic_character subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_lexer_basic_character_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_lexer_basic_character_symbol:Nwchemdata_lexer_basic_character_symbol_v.ml:make"
;;


(** Nwchemdata_lexer_basic_character_symbol_v at 17:56:1 on 23 Apr 2015. created by version v2.4 of generator *)



