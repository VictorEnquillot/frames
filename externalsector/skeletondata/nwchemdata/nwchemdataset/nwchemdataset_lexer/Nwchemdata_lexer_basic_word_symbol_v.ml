(** {3 Nwchemdata_lexer_basic_word_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : LEXNWC:Nwchemdata_lexer_basic_word_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_anycase_symbol sym_dwa ->
    Nwchemdata_lexer_basic_word_anycase_symbol_v.name sym_dwa
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_symbol sym_dwc ->
    Nwchemdata_lexer_basic_word_capitalized_symbol_v.name sym_dwc
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol sym_dcs ->
    Nwchemdata_lexer_basic_word_capitalized_strict_symbol_v.name sym_dcs
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_lowercase_symbol sym_dwl ->
    Nwchemdata_lexer_basic_word_lowercase_symbol_v.name sym_dwl
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol sym_dwn ->
    Nwchemdata_lexer_basic_word_numeric_symbol_v.name sym_dwn
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_uppercase_symbol sym_dwu ->
    Nwchemdata_lexer_basic_word_uppercase_symbol_v.name sym_dwu
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_anycase_symbol sym_dwa ->
  Nwchemdata_lexer_basic_word_anycase_symbol_v.string_off sym_dwa
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_symbol sym_dwc ->
  Nwchemdata_lexer_basic_word_capitalized_symbol_v.string_off sym_dwc
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol sym_dcs ->
  Nwchemdata_lexer_basic_word_capitalized_strict_symbol_v.string_off sym_dcs
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_lowercase_symbol sym_dwl ->
  Nwchemdata_lexer_basic_word_lowercase_symbol_v.string_off sym_dwl
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol sym_dwn ->
  Nwchemdata_lexer_basic_word_numeric_symbol_v.string_off sym_dwn
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_uppercase_symbol sym_dwu ->
  Nwchemdata_lexer_basic_word_uppercase_symbol_v.string_off sym_dwu
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dbw =
  Format.sprintf "Nwchemdata_lexer_basic_word_symbol_t.%s" (String.capitalize (name sym_dbw))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dbw =
  Format.sprintf "%s \"%s\"" (longname sym_dbw) (string_off sym_dbw)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_anycase_symbol sym_dwa -> sym_dwa
  | sym_dbw -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_word_symbol"
      "Nwchemdata_lexer_basic_word_anycase_symbol"
      (name sym_dbw) "check"
;;

let nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_symbol sym_dwc -> sym_dwc
  | sym_dbw -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_word_symbol"
      "Nwchemdata_lexer_basic_word_capitalized_symbol"
      (name sym_dbw) "check"
;;

let nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol sym_dcs -> sym_dcs
  | sym_dbw -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_word_symbol"
      "Nwchemdata_lexer_basic_word_capitalized_strict_symbol"
      (name sym_dbw) "check"
;;

let nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_lowercase_symbol sym_dwl -> sym_dwl
  | sym_dbw -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_word_symbol"
      "Nwchemdata_lexer_basic_word_lowercase_symbol"
      (name sym_dbw) "check"
;;

let nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol sym_dwn -> sym_dwn
  | sym_dbw -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol"
      "Nwchemdata_lexer_basic_word_numeric_symbol"
      (name sym_dbw) "check"
;;

let nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_uppercase_symbol sym_dwu -> sym_dwu
  | sym_dbw -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_word_symbol"
      "Nwchemdata_lexer_basic_word_uppercase_symbol"
      (name sym_dbw) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw = 
  let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
    Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn
;;

let nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw = 
  let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
    Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn
;;

let nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw = 
  let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
    Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_anycase_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_lowercase_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_word_symbol = function
  | Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_uppercase_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_lexer_basic_word_anycase_alphabetic sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwa = nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_anycase_symbol_v.is_nwchemdata_lexer_basic_word_anycase_alphabetic sym_dwa
    end
;;

let is_nwchemdata_lexer_basic_word_anycase_alphanumeric sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwa = nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_anycase_symbol_v.is_nwchemdata_lexer_basic_word_anycase_alphanumeric sym_dwa
    end
;;

let is_nwchemdata_lexer_basic_word_anycase_anyword sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwa = nwchemdata_lexer_basic_word_anycase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_anycase_symbol_v.is_nwchemdata_lexer_basic_word_anycase_anyword sym_dwa
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_alphabetic sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwc = nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_capitalized_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_alphabetic sym_dwc
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_alphanumeric sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwc = nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_capitalized_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_alphanumeric sym_dwc
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_anyword sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwc = nwchemdata_lexer_basic_word_capitalized_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_capitalized_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_anyword sym_dwc
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_alphabetic sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dcs = nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_capitalized_strict_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_alphabetic sym_dcs
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dcs = nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_capitalized_strict_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric sym_dcs
    end
;;

let is_nwchemdata_lexer_basic_word_capitalized_strict_anyword sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dcs = nwchemdata_lexer_basic_word_capitalized_strict_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_capitalized_strict_symbol_v.is_nwchemdata_lexer_basic_word_capitalized_strict_anyword sym_dcs
    end
;;

let is_nwchemdata_lexer_basic_word_lowercase_alphabetic sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwl = nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_lowercase_symbol_v.is_nwchemdata_lexer_basic_word_lowercase_alphabetic sym_dwl
    end
;;

let is_nwchemdata_lexer_basic_word_lowercase_alphanumeric sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwl = nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_lowercase_symbol_v.is_nwchemdata_lexer_basic_word_lowercase_alphanumeric sym_dwl
    end
;;

let is_nwchemdata_lexer_basic_word_lowercase_anyword sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwl = nwchemdata_lexer_basic_word_lowercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_lowercase_symbol_v.is_nwchemdata_lexer_basic_word_lowercase_anyword sym_dwl
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_negative_integer sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_numeric_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_integer sym_dwn
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_negative_float sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_numeric_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_float sym_dwn
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_integer sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_numeric_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_integer sym_dwn
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_float sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_numeric_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_float sym_dwn
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_integer sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_numeric_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer sym_dwn
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_float sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_numeric_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_float sym_dwn
    end
;;

let is_nwchemdata_lexer_basic_word_uppercase_alphabetic sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwu = nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_uppercase_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_alphabetic sym_dwu
    end
;;

let is_nwchemdata_lexer_basic_word_uppercase_alphanumeric sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwu = nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_uppercase_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_alphanumeric sym_dwu
    end
;;

let is_nwchemdata_lexer_basic_word_uppercase_anyword sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwu = nwchemdata_lexer_basic_word_uppercase_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
      Nwchemdata_lexer_basic_word_uppercase_symbol_v.is_nwchemdata_lexer_basic_word_uppercase_anyword sym_dwu
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
  let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
  Nwchemdata_lexer_basic_word_numeric_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
  let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
  Nwchemdata_lexer_basic_word_numeric_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw =
  if not (is_nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw)
  then false
  else
    begin
  let sym_dwn = nwchemdata_lexer_basic_word_numeric_symbol_off_nwchemdata_lexer_basic_word_symbol sym_dbw in
  Nwchemdata_lexer_basic_word_numeric_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_anycase_symbol sym_dwa = 
  Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_anycase_symbol sym_dwa
;;

let nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_symbol sym_dwc = 
  Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_symbol sym_dwc
;;

let nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_strict_symbol sym_dcs = 
  Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_capitalized_strict_symbol sym_dcs
;;

let nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_lowercase_symbol sym_dwl = 
  Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_lowercase_symbol sym_dwl
;;

let nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn = 
  Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_numeric_symbol sym_dwn
;;

let nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_uppercase_symbol sym_dwu = 
  Nwchemdata_lexer_basic_word_symbol_t.Nwchemdata_lexer_basic_word_uppercase_symbol sym_dwu
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_negative_symbol sym_dnn = 
  let sym_dwn = Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_negative_symbol sym_dnn in
    nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn
;;

let nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_non_negative_symbol sym_dnn = 
  let sym_dwn = Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_non_negative_symbol sym_dnn in
    nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn
;;

let nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_positive_symbol sym_dnp = 
  let sym_dwn = Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_positive_symbol sym_dnp in
    nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_lexer_basic_word_anycase_alphabetic s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_anycase_symbol (Nwchemdata_lexer_basic_word_anycase_symbol_v.nwchemdata_lexer_basic_word_anycase_alphabetic s);;

let nwchemdata_lexer_basic_word_anycase_alphanumeric s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_anycase_symbol (Nwchemdata_lexer_basic_word_anycase_symbol_v.nwchemdata_lexer_basic_word_anycase_alphanumeric s);;

let nwchemdata_lexer_basic_word_anycase_anyword s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_anycase_symbol (Nwchemdata_lexer_basic_word_anycase_symbol_v.nwchemdata_lexer_basic_word_anycase_anyword s);;

let nwchemdata_lexer_basic_word_capitalized_alphabetic s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_symbol (Nwchemdata_lexer_basic_word_capitalized_symbol_v.nwchemdata_lexer_basic_word_capitalized_alphabetic s);;

let nwchemdata_lexer_basic_word_capitalized_alphanumeric s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_symbol (Nwchemdata_lexer_basic_word_capitalized_symbol_v.nwchemdata_lexer_basic_word_capitalized_alphanumeric s);;

let nwchemdata_lexer_basic_word_capitalized_anyword s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_symbol (Nwchemdata_lexer_basic_word_capitalized_symbol_v.nwchemdata_lexer_basic_word_capitalized_anyword s);;

let nwchemdata_lexer_basic_word_capitalized_strict_alphabetic s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_strict_symbol (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_alphabetic s);;

let nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_strict_symbol (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_alphanumeric s);;

let nwchemdata_lexer_basic_word_capitalized_strict_anyword s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_strict_symbol (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_v.nwchemdata_lexer_basic_word_capitalized_strict_anyword s);;

let nwchemdata_lexer_basic_word_lowercase_alphabetic s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_lowercase_symbol (Nwchemdata_lexer_basic_word_lowercase_symbol_v.nwchemdata_lexer_basic_word_lowercase_alphabetic s);;

let nwchemdata_lexer_basic_word_lowercase_alphanumeric s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_lowercase_symbol (Nwchemdata_lexer_basic_word_lowercase_symbol_v.nwchemdata_lexer_basic_word_lowercase_alphanumeric s);;

let nwchemdata_lexer_basic_word_lowercase_anyword s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_lowercase_symbol (Nwchemdata_lexer_basic_word_lowercase_symbol_v.nwchemdata_lexer_basic_word_lowercase_anyword s);;

let nwchemdata_lexer_basic_word_numeric_negative_integer s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol (Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_integer s);;

let nwchemdata_lexer_basic_word_numeric_negative_float s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol (Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_float s);;

let nwchemdata_lexer_basic_word_numeric_non_negative_integer s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol (Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_integer s);;

let nwchemdata_lexer_basic_word_numeric_non_negative_float s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol (Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_float s);;

let nwchemdata_lexer_basic_word_numeric_positive_integer s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol (Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_integer s);;

let nwchemdata_lexer_basic_word_numeric_positive_float s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol (Nwchemdata_lexer_basic_word_numeric_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_float s);;

let nwchemdata_lexer_basic_word_uppercase_alphabetic s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_uppercase_symbol (Nwchemdata_lexer_basic_word_uppercase_symbol_v.nwchemdata_lexer_basic_word_uppercase_alphabetic s);;

let nwchemdata_lexer_basic_word_uppercase_alphanumeric s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_uppercase_symbol (Nwchemdata_lexer_basic_word_uppercase_symbol_v.nwchemdata_lexer_basic_word_uppercase_alphanumeric s);;

let nwchemdata_lexer_basic_word_uppercase_anyword s = nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_uppercase_symbol (Nwchemdata_lexer_basic_word_uppercase_symbol_v.nwchemdata_lexer_basic_word_uppercase_anyword s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_lexer_basic_word_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_lexer_basic_word_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_anycase_symbol
      (Nwchemdata_lexer_basic_word_anycase_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_word_anycase_symbol:Nwchemdata_lexer_basic_word_anycase_symbol_v.ml:make" ->
  try nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_symbol
      (Nwchemdata_lexer_basic_word_capitalized_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_word_capitalized_symbol:Nwchemdata_lexer_basic_word_capitalized_symbol_v.ml:make" ->
  try nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_capitalized_strict_symbol
      (Nwchemdata_lexer_basic_word_capitalized_strict_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_word_capitalized_strict_symbol:Nwchemdata_lexer_basic_word_capitalized_strict_symbol_v.ml:make" ->
  try nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_lowercase_symbol
      (Nwchemdata_lexer_basic_word_lowercase_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_word_lowercase_symbol:Nwchemdata_lexer_basic_word_lowercase_symbol_v.ml:make" ->
  try nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_numeric_symbol
      (Nwchemdata_lexer_basic_word_numeric_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_word_numeric_symbol:Nwchemdata_lexer_basic_word_numeric_symbol_v.ml:make" ->
  try nwchemdata_lexer_basic_word_symbol_of_nwchemdata_lexer_basic_word_uppercase_symbol
      (Nwchemdata_lexer_basic_word_uppercase_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_word_uppercase_symbol:Nwchemdata_lexer_basic_word_uppercase_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_lexer_basic_word_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_lexer_basic_word_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_lexer_basic_word_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_lexer_basic_word_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_lexer_basic_word subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_lexer_basic_word_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_lexer_basic_word_symbol:Nwchemdata_lexer_basic_word_symbol_v.ml:make"
;;


(** Nwchemdata_lexer_basic_word_symbol_v at 17:56:2 on 23 Apr 2015. created by version v2.4 of generator *)



