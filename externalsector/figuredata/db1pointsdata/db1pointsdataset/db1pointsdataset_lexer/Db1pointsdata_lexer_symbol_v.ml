(** {3 Db1pointsdata_lexer_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_lexer_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol sym_dlb ->
    Db1pointsdata_lexer_basic_symbol_v.name sym_dlb
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol sym_dlk ->
    Db1pointsdata_lexer_keyword_symbol_v.name sym_dlk
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_token_symbol sym_dlt ->
    Db1pointsdata_lexer_token_symbol_v.name sym_dlt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol sym_dlb ->
  Db1pointsdata_lexer_basic_symbol_v.string_off sym_dlb
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol sym_dlk ->
  Db1pointsdata_lexer_keyword_symbol_v.string_off sym_dlk
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_token_symbol sym_dlt ->
  Db1pointsdata_lexer_token_symbol_v.string_off sym_dlt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dle =
  Format.sprintf "Db1pointsdata_lexer_symbol_t.%s" (String.capitalize (name sym_dle))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dle =
  Format.sprintf "%s \"%s\"" (longname sym_dle) (string_off sym_dle)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol = function
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol sym_dlb -> sym_dlb
  | sym_dle -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol"
      "Db1pointsdata_lexer_basic_symbol"
      (name sym_dle) "check"
;;

let db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol = function
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol sym_dlk -> sym_dlk
  | sym_dle -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol"
      "Db1pointsdata_lexer_keyword_symbol"
      (name sym_dle) "check"
;;

let db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol = function
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_token_symbol sym_dlt -> sym_dlt
  | sym_dle -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol"
      "Db1pointsdata_lexer_token_symbol"
      (name sym_dle) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let db1pointsdata_lexer_basic_float_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_float_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_basic_string_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_string_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_basic_word_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_word_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_basic_word_anycase_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_word_anycase_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_basic_word_capitalized_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_word_capitalized_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_basic_word_lowercase_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_word_lowercase_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_basic_word_uppercase_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_word_uppercase_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_keyword_character_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_character_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk
;;

let db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk
;;

let db1pointsdata_lexer_keyword_coordinates_units_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_coordinates_units_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk
;;

let db1pointsdata_lexer_keyword_figure_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_figure_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk
;;

let db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt
;;

let db1pointsdata_lexer_token_figure_kind_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_figure_kind_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt
;;

let db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt
;;

let db1pointsdata_lexer_token_units_angle_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_units_angle_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt
;;

let db1pointsdata_lexer_token_units_length_symbol_off_db1pointsdata_lexer_symbol sym_dle = 
  let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
    Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_units_length_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol = function
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol = function
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol = function
  | Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_token_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_db1pointsdata_lexer_keyword_character_eof sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_character_eof sym_dlk
    end
;;

let is_db1pointsdata_lexer_keyword_character_eol sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_character_eol sym_dlk
    end
;;

let is_db1pointsdata_lexer_keyword_coordinates_units_angle sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_units_angle sym_dlk
    end
;;

let is_db1pointsdata_lexer_keyword_coordinates_units_length sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_units_length sym_dlk
    end
;;

let is_db1pointsdata_lexer_keyword_coordinates_kind sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_kind sym_dlk
    end
;;

let is_db1pointsdata_lexer_keyword_figure_kind sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_figure_kind sym_dlk
    end
;;

let is_db1pointsdata_lexer_keyword_figure_name sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_figure_name sym_dlk
    end
;;

let is_db1pointsdata_lexer_keyword_vertex sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_vertex sym_dlk
    end
;;

let is_db1pointsdata_lexer_token_figure_kind_point sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_figure_kind_point sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_figure_kind_segment sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_figure_kind_segment sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_figure_kind_triangle sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_figure_kind_triangle sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_figure_name sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_figure_name sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_units_angle_degree sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_units_angle_degree sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_units_angle_radian sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_units_angle_radian sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_units_length_angstrom sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_units_length_angstrom sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_units_length_bohr sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_units_length_bohr sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_units_length_meter sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_units_length_meter sym_dlt
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_lexer_basic_float_constructor sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_float_constructor sym_dlb
    end
;;

let is_db1pointsdata_lexer_basic_string_constructor sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_string_constructor sym_dlb
    end
;;

let is_db1pointsdata_lexer_basic_word_anycase_constructor sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_word_anycase_constructor sym_dlb
    end
;;

let is_db1pointsdata_lexer_basic_word_capitalized_constructor sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_word_capitalized_constructor sym_dlb
    end
;;

let is_db1pointsdata_lexer_basic_word_lowercase_constructor sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_word_lowercase_constructor sym_dlb
    end
;;

let is_db1pointsdata_lexer_basic_word_uppercase_constructor sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
      let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
      Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_word_uppercase_constructor sym_dlb
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_db1pointsdata_lexer_basic_float_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_float_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
    end
;;

let is_db1pointsdata_lexer_basic_string_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_string_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
    end
;;

let is_db1pointsdata_lexer_basic_word_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_word_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
    end
;;

let is_db1pointsdata_lexer_basic_word_anycase_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_word_anycase_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
    end
;;

let is_db1pointsdata_lexer_basic_word_capitalized_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_word_capitalized_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
    end
;;

let is_db1pointsdata_lexer_basic_word_lowercase_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_word_lowercase_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
    end
;;

let is_db1pointsdata_lexer_basic_word_uppercase_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlb = db1pointsdata_lexer_basic_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_basic_symbol_v.is_db1pointsdata_lexer_basic_word_uppercase_symbol_off_db1pointsdata_lexer_basic_symbol sym_dlb
    end
;;

let is_db1pointsdata_lexer_keyword_character_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_character_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk
    end
;;

let is_db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk
    end
;;

let is_db1pointsdata_lexer_keyword_coordinates_units_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_coordinates_units_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk
    end
;;

let is_db1pointsdata_lexer_keyword_figure_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlk = db1pointsdata_lexer_keyword_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_keyword_symbol_v.is_db1pointsdata_lexer_keyword_figure_symbol_off_db1pointsdata_lexer_keyword_symbol sym_dlk
    end
;;

let is_db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_figure_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_figure_kind_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_figure_kind_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_units_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_units_angle_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_units_angle_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt
    end
;;

let is_db1pointsdata_lexer_token_units_length_symbol_off_db1pointsdata_lexer_symbol sym_dle =
  if not (is_db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle)
  then false
  else
    begin
  let sym_dlt = db1pointsdata_lexer_token_symbol_off_db1pointsdata_lexer_symbol sym_dle in
  Db1pointsdata_lexer_token_symbol_v.is_db1pointsdata_lexer_token_units_length_symbol_off_db1pointsdata_lexer_token_symbol sym_dlt
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol sym_dlb = 
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol sym_dlk = 
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_keyword_symbol sym_dlk
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol sym_dlt = 
  Db1pointsdata_lexer_symbol_t.Db1pointsdata_lexer_token_symbol sym_dlt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_float_symbol sym_dbf = 
  let sym_dlb = Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_symbol_of_db1pointsdata_lexer_basic_float_symbol sym_dbf in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_string_symbol sym_dbs = 
  let sym_dlb = Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_symbol_of_db1pointsdata_lexer_basic_string_symbol sym_dbs in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_word_symbol sym_dbw = 
  let sym_dlb = Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_symbol_of_db1pointsdata_lexer_basic_word_symbol sym_dbw in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_word_anycase_symbol sym_dwa = 
  let sym_dlb = Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_symbol_of_db1pointsdata_lexer_basic_word_anycase_symbol sym_dwa in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_word_capitalized_symbol sym_dwc = 
  let sym_dlb = Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_symbol_of_db1pointsdata_lexer_basic_word_capitalized_symbol sym_dwc in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_word_lowercase_symbol sym_dwl = 
  let sym_dlb = Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_symbol_of_db1pointsdata_lexer_basic_word_lowercase_symbol sym_dwl in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_word_uppercase_symbol sym_dwu = 
  let sym_dlb = Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_symbol_of_db1pointsdata_lexer_basic_word_uppercase_symbol sym_dwu in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol sym_dlb
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_character_symbol sym_dkc = 
  let sym_dlk = Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_character_symbol sym_dkc in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol sym_dlk
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_coordinates_symbol sym_dkc = 
  let sym_dlk = Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_coordinates_symbol sym_dkc in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol sym_dlk
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_coordinates_units_symbol sym_dcu = 
  let sym_dlk = Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_coordinates_units_symbol sym_dcu in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol sym_dlk
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_figure_symbol sym_dkf = 
  let sym_dlk = Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_symbol_of_db1pointsdata_lexer_keyword_figure_symbol sym_dkf in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol sym_dlk
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_figure_symbol sym_dtf = 
  let sym_dlt = Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_figure_symbol sym_dtf in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol sym_dlt
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_figure_kind_symbol sym_dfk = 
  let sym_dlt = Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_figure_kind_symbol sym_dfk in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol sym_dlt
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_units_symbol sym_dtu = 
  let sym_dlt = Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_symbol sym_dtu in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol sym_dlt
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_units_angle_symbol sym_dua = 
  let sym_dlt = Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_angle_symbol sym_dua in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol sym_dlt
;;

let db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_units_length_symbol sym_dul = 
  let sym_dlt = Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_symbol_of_db1pointsdata_lexer_token_units_length_symbol sym_dul in
    db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol sym_dlt
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let db1pointsdata_lexer_keyword_character_eof = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_character_eof;;

let db1pointsdata_lexer_keyword_character_eol = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_character_eol;;

let db1pointsdata_lexer_keyword_coordinates_units_angle = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_coordinates_units_angle;;

let db1pointsdata_lexer_keyword_coordinates_units_length = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_coordinates_units_length;;

let db1pointsdata_lexer_keyword_coordinates_kind = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_coordinates_kind;;

let db1pointsdata_lexer_keyword_figure_kind = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_figure_kind;;

let db1pointsdata_lexer_keyword_figure_name = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_figure_name;;

let db1pointsdata_lexer_keyword_vertex = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol Db1pointsdata_lexer_keyword_symbol_v.db1pointsdata_lexer_keyword_vertex;;

let db1pointsdata_lexer_token_figure_kind_point = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_figure_kind_point;;

let db1pointsdata_lexer_token_figure_kind_segment = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_figure_kind_segment;;

let db1pointsdata_lexer_token_figure_kind_triangle = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_figure_kind_triangle;;

let db1pointsdata_lexer_token_figure_name = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_figure_name;;

let db1pointsdata_lexer_token_units_angle_degree = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_units_angle_degree;;

let db1pointsdata_lexer_token_units_angle_radian = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_units_angle_radian;;

let db1pointsdata_lexer_token_units_length_angstrom = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_units_length_angstrom;;

let db1pointsdata_lexer_token_units_length_bohr = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_units_length_bohr;;

let db1pointsdata_lexer_token_units_length_meter = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol Db1pointsdata_lexer_token_symbol_v.db1pointsdata_lexer_token_units_length_meter;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_lexer_basic_float_constructor s = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol (Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_float_constructor s);;

let db1pointsdata_lexer_basic_string_constructor s = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol (Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_string_constructor s);;

let db1pointsdata_lexer_basic_word_anycase_constructor s = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol (Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_word_anycase_constructor s);;

let db1pointsdata_lexer_basic_word_capitalized_constructor s = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol (Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_word_capitalized_constructor s);;

let db1pointsdata_lexer_basic_word_lowercase_constructor s = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol (Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_word_lowercase_constructor s);;

let db1pointsdata_lexer_basic_word_uppercase_constructor s = db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol (Db1pointsdata_lexer_basic_symbol_v.db1pointsdata_lexer_basic_word_uppercase_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_lexer_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_lexer_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_basic_symbol
      (Db1pointsdata_lexer_basic_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_lexer_basic_symbol:Db1pointsdata_lexer_basic_symbol_v.ml:make" ->
  try db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_keyword_symbol
      (Db1pointsdata_lexer_keyword_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_lexer_keyword_symbol:Db1pointsdata_lexer_keyword_symbol_v.ml:make" ->
  try db1pointsdata_lexer_symbol_of_db1pointsdata_lexer_token_symbol
      (Db1pointsdata_lexer_token_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_lexer_token_symbol:Db1pointsdata_lexer_token_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_lexer_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_lexer_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_lexer_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_lexer_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_lexer subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_lexer_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_lexer_symbol:Db1pointsdata_lexer_symbol_v.ml:make"
;;


(** Db1pointsdata_lexer_symbol_v at 15:47:42 on 25 Feb 2016. created by version v2.4 of generator *)



