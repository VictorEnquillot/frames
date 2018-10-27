(** {3 Nwchemdata_lexer_basic_character_mark_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : LEXNWC:Nwchemdata_lexer_basic_character_mark_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_coupled_symbol sym_dmc ->
    Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.name sym_dmc
  | Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol sym_dms ->
    Nwchemdata_lexer_basic_character_mark_singled_symbol_v.name sym_dms
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_coupled_symbol sym_dmc ->
  Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.string_off sym_dmc
  | Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol sym_dms ->
  Nwchemdata_lexer_basic_character_mark_singled_symbol_v.string_off sym_dms
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dcm =
  Format.sprintf "Nwchemdata_lexer_basic_character_mark_symbol_t.%s" (String.capitalize (name sym_dcm))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dcm =
  Format.sprintf "%s \"%s\"" (longname sym_dcm) (string_off sym_dcm)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol = function
  | Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_coupled_symbol sym_dmc -> sym_dmc
  | sym_dcm -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol"
      "Nwchemdata_lexer_basic_character_mark_coupled_symbol"
      (name sym_dcm) "check"
;;

let nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol = function
  | Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol sym_dms -> sym_dms
  | sym_dcm -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol"
      "Nwchemdata_lexer_basic_character_mark_singled_symbol"
      (name sym_dcm) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol = function
  | Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_coupled_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol = function
  | Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_nwchemdata_lexer_character_mark_l_bracket sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dmc = nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.is_nwchemdata_lexer_character_mark_l_bracket sym_dmc
    end
;;

let is_nwchemdata_lexer_character_mark_l_curly sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dmc = nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.is_nwchemdata_lexer_character_mark_l_curly sym_dmc
    end
;;

let is_nwchemdata_lexer_character_mark_l_parenthesis sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dmc = nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.is_nwchemdata_lexer_character_mark_l_parenthesis sym_dmc
    end
;;

let is_nwchemdata_lexer_character_mark_r_bracket sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dmc = nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.is_nwchemdata_lexer_character_mark_r_bracket sym_dmc
    end
;;

let is_nwchemdata_lexer_character_mark_r_curly sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dmc = nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.is_nwchemdata_lexer_character_mark_r_curly sym_dmc
    end
;;

let is_nwchemdata_lexer_character_mark_r_parenthesis sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dmc = nwchemdata_lexer_basic_character_mark_coupled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.is_nwchemdata_lexer_character_mark_r_parenthesis sym_dmc
    end
;;

let is_nwchemdata_lexer_character_mark_ampersand sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_ampersand sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_back_quote sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_back_quote sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_bang sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_bang sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_beginning_of_line sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_beginning_of_line sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_blank sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_blank sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_colon sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_colon sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_comma sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_comma sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_divide sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_divide sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_dot sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_dot sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_double_quote sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_double_quote sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_end_of_line sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_end_of_line sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_equal sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_equal sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_greater_than sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_greater_than sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_hash sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_hash sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_less_than sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_less_than sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_minus sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_minus sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_pipe sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_pipe sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_plus sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_plus sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_question_mark sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_question_mark sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_quote sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_quote sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_semicolon sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_semicolon sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_tabulation sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_tabulation sym_dms
    end
;;

let is_nwchemdata_lexer_character_mark_times sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_times sym_dms
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_lexer_character_mark_space sym_dcm =
  if not (is_nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm)
  then false
  else
    begin
      let sym_dms = nwchemdata_lexer_basic_character_mark_singled_symbol_off_nwchemdata_lexer_basic_character_mark_symbol sym_dcm in
      Nwchemdata_lexer_basic_character_mark_singled_symbol_v.is_nwchemdata_lexer_character_mark_space sym_dms
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol sym_dmc = 
  Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_coupled_symbol sym_dmc
;;

let nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol sym_dms = 
  Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol sym_dms
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let nwchemdata_lexer_character_mark_l_bracket = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.nwchemdata_lexer_character_mark_l_bracket;;

let nwchemdata_lexer_character_mark_l_curly = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.nwchemdata_lexer_character_mark_l_curly;;

let nwchemdata_lexer_character_mark_l_parenthesis = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.nwchemdata_lexer_character_mark_l_parenthesis;;

let nwchemdata_lexer_character_mark_r_bracket = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.nwchemdata_lexer_character_mark_r_bracket;;

let nwchemdata_lexer_character_mark_r_curly = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.nwchemdata_lexer_character_mark_r_curly;;

let nwchemdata_lexer_character_mark_r_parenthesis = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.nwchemdata_lexer_character_mark_r_parenthesis;;

let nwchemdata_lexer_character_mark_ampersand = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_ampersand;;

let nwchemdata_lexer_character_mark_back_quote = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_back_quote;;

let nwchemdata_lexer_character_mark_bang = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_bang;;

let nwchemdata_lexer_character_mark_beginning_of_line = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_beginning_of_line;;

let nwchemdata_lexer_character_mark_blank = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_blank;;

let nwchemdata_lexer_character_mark_colon = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_colon;;

let nwchemdata_lexer_character_mark_comma = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_comma;;

let nwchemdata_lexer_character_mark_divide = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_divide;;

let nwchemdata_lexer_character_mark_dot = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_dot;;

let nwchemdata_lexer_character_mark_double_quote = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_double_quote;;

let nwchemdata_lexer_character_mark_end_of_line = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_end_of_line;;

let nwchemdata_lexer_character_mark_equal = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_equal;;

let nwchemdata_lexer_character_mark_greater_than = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_greater_than;;

let nwchemdata_lexer_character_mark_hash = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_hash;;

let nwchemdata_lexer_character_mark_less_than = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_less_than;;

let nwchemdata_lexer_character_mark_minus = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_minus;;

let nwchemdata_lexer_character_mark_pipe = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_pipe;;

let nwchemdata_lexer_character_mark_plus = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_plus;;

let nwchemdata_lexer_character_mark_question_mark = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_question_mark;;

let nwchemdata_lexer_character_mark_quote = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_quote;;

let nwchemdata_lexer_character_mark_semicolon = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_semicolon;;

let nwchemdata_lexer_character_mark_tabulation = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_tabulation;;

let nwchemdata_lexer_character_mark_times = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_times;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_lexer_character_mark_space s = nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol (Nwchemdata_lexer_basic_character_mark_singled_symbol_v.nwchemdata_lexer_character_mark_space s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_lexer_basic_character_mark_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_lexer_basic_character_mark_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_coupled_symbol
      (Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_character_mark_coupled_symbol:Nwchemdata_lexer_basic_character_mark_coupled_symbol_v.ml:make" ->
  try nwchemdata_lexer_basic_character_mark_symbol_of_nwchemdata_lexer_basic_character_mark_singled_symbol
      (Nwchemdata_lexer_basic_character_mark_singled_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_character_mark_singled_symbol:Nwchemdata_lexer_basic_character_mark_singled_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_lexer_basic_character_mark_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_lexer_basic_character_mark_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_lexer_basic_character_mark_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_lexer_basic_character_mark_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_lexer_basic_character_mark subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_lexer_basic_character_mark_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_lexer_basic_character_mark_symbol:Nwchemdata_lexer_basic_character_mark_symbol_v.ml:make"
;;


(** Nwchemdata_lexer_basic_character_mark_symbol_v at 17:56:2 on 23 Apr 2015. created by version v2.4 of generator *)



