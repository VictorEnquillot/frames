(** {3 Db1pointsdata_set_fence_basic_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_set_fence_basic_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol sym_dbn ->
    Db1pointsdata_set_fence_basic_numerical_symbol_v.name sym_dbn
  | Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_word_symbol sym_dbw ->
    Db1pointsdata_set_fence_basic_word_symbol_v.name sym_dbw
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol sym_dbn ->
  Db1pointsdata_set_fence_basic_numerical_symbol_v.string_off sym_dbn
  | Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_word_symbol sym_dbw ->
  Db1pointsdata_set_fence_basic_word_symbol_v.string_off sym_dbw
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dfb =
  Format.sprintf "Db1pointsdata_set_fence_basic_symbol_t.%s" (String.capitalize (name sym_dfb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dfb =
  Format.sprintf "%s \"%s\"" (longname sym_dfb) (string_off sym_dfb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol = function
  | Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol sym_dbn -> sym_dbn
  | sym_dfb -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol"
      "Db1pointsdata_set_fence_basic_numerical_symbol"
      (name sym_dfb) "check"
;;

let db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol = function
  | Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_word_symbol sym_dbw -> sym_dbw
  | sym_dfb -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol"
      "Db1pointsdata_set_fence_basic_word_symbol"
      (name sym_dfb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb = 
  let sym_dbn = db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
    Db1pointsdata_set_fence_basic_numerical_symbol_v.db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_set_fence_basic_numerical_symbol sym_dbn
;;

let db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb = 
  let sym_dbn = db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
    Db1pointsdata_set_fence_basic_numerical_symbol_v.db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_set_fence_basic_numerical_symbol sym_dbn
;;

let db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb = 
  let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
    Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw
;;

let db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb = 
  let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
    Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw
;;

let db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb = 
  let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
    Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw
;;

let db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb = 
  let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
    Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol = function
  | Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol = function
  | Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_word_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_set_fence_basic_numerical_float_constructor sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
      let sym_dbn = db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
      Db1pointsdata_set_fence_basic_numerical_symbol_v.is_db1pointsdata_set_fence_basic_numerical_float_constructor sym_dbn
    end
;;

let is_db1pointsdata_set_fence_basic_numerical_integer_constructor sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
      let sym_dbn = db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
      Db1pointsdata_set_fence_basic_numerical_symbol_v.is_db1pointsdata_set_fence_basic_numerical_integer_constructor sym_dbn
    end
;;

let is_db1pointsdata_set_fence_basic_word_anycase_constructor sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
      let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
      Db1pointsdata_set_fence_basic_word_symbol_v.is_db1pointsdata_set_fence_basic_word_anycase_constructor sym_dbw
    end
;;

let is_db1pointsdata_set_fence_basic_word_capitalized_constructor sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
      let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
      Db1pointsdata_set_fence_basic_word_symbol_v.is_db1pointsdata_set_fence_basic_word_capitalized_constructor sym_dbw
    end
;;

let is_db1pointsdata_set_fence_basic_word_lowercase_constructor sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
      let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
      Db1pointsdata_set_fence_basic_word_symbol_v.is_db1pointsdata_set_fence_basic_word_lowercase_constructor sym_dbw
    end
;;

let is_db1pointsdata_set_fence_basic_word_uppercase_constructor sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
      let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
      Db1pointsdata_set_fence_basic_word_symbol_v.is_db1pointsdata_set_fence_basic_word_uppercase_constructor sym_dbw
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
  let sym_dbn = db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
  Db1pointsdata_set_fence_basic_numerical_symbol_v.is_db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_set_fence_basic_numerical_symbol sym_dbn
    end
;;

let is_db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
  let sym_dbn = db1pointsdata_set_fence_basic_numerical_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
  Db1pointsdata_set_fence_basic_numerical_symbol_v.is_db1pointsdata_set_fence_basic_numerical_integer_symbol_off_db1pointsdata_set_fence_basic_numerical_symbol sym_dbn
    end
;;

let is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
  let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
  Db1pointsdata_set_fence_basic_word_symbol_v.is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw
    end
;;

let is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
  let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
  Db1pointsdata_set_fence_basic_word_symbol_v.is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw
    end
;;

let is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
  let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
  Db1pointsdata_set_fence_basic_word_symbol_v.is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw
    end
;;

let is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb =
  if not (is_db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb)
  then false
  else
    begin
  let sym_dbw = db1pointsdata_set_fence_basic_word_symbol_off_db1pointsdata_set_fence_basic_symbol sym_dfb in
  Db1pointsdata_set_fence_basic_word_symbol_v.is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_numerical_symbol sym_dbn = 
  Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol sym_dbn
;;

let db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_symbol sym_dbw = 
  Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_word_symbol sym_dbw
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_numerical_float_symbol sym_dnf = 
  let sym_dbn = Db1pointsdata_set_fence_basic_numerical_symbol_v.db1pointsdata_set_fence_basic_numerical_symbol_of_db1pointsdata_set_fence_basic_numerical_float_symbol sym_dnf in
    db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_numerical_symbol sym_dbn
;;

let db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_numerical_integer_symbol sym_dni = 
  let sym_dbn = Db1pointsdata_set_fence_basic_numerical_symbol_v.db1pointsdata_set_fence_basic_numerical_symbol_of_db1pointsdata_set_fence_basic_numerical_integer_symbol sym_dni in
    db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_numerical_symbol sym_dbn
;;

let db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_anycase_symbol sym_dwa = 
  let sym_dbw = Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_anycase_symbol sym_dwa in
    db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_symbol sym_dbw
;;

let db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_capitalized_symbol sym_dwc = 
  let sym_dbw = Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_capitalized_symbol sym_dwc in
    db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_symbol sym_dbw
;;

let db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_lowercase_symbol sym_dwl = 
  let sym_dbw = Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_lowercase_symbol sym_dwl in
    db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_symbol sym_dbw
;;

let db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_uppercase_symbol sym_dwu = 
  let sym_dbw = Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_uppercase_symbol sym_dwu in
    db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_symbol sym_dbw
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_set_fence_basic_numerical_float_constructor s = db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_numerical_symbol (Db1pointsdata_set_fence_basic_numerical_symbol_v.db1pointsdata_set_fence_basic_numerical_float_constructor s);;

let db1pointsdata_set_fence_basic_numerical_integer_constructor s = db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_numerical_symbol (Db1pointsdata_set_fence_basic_numerical_symbol_v.db1pointsdata_set_fence_basic_numerical_integer_constructor s);;

let db1pointsdata_set_fence_basic_word_anycase_constructor s = db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_symbol (Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_anycase_constructor s);;

let db1pointsdata_set_fence_basic_word_capitalized_constructor s = db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_symbol (Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_capitalized_constructor s);;

let db1pointsdata_set_fence_basic_word_lowercase_constructor s = db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_symbol (Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_lowercase_constructor s);;

let db1pointsdata_set_fence_basic_word_uppercase_constructor s = db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_symbol (Db1pointsdata_set_fence_basic_word_symbol_v.db1pointsdata_set_fence_basic_word_uppercase_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_set_fence_basic_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_set_fence_basic_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_numerical_symbol
      (Db1pointsdata_set_fence_basic_numerical_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_basic_numerical_symbol:Db1pointsdata_set_fence_basic_numerical_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_basic_symbol_of_db1pointsdata_set_fence_basic_word_symbol
      (Db1pointsdata_set_fence_basic_word_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_basic_word_symbol:Db1pointsdata_set_fence_basic_word_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_set_fence_basic_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_set_fence_basic_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_set_fence_basic_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_set_fence_basic_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_set_fence_basic subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_set_fence_basic_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_set_fence_basic_symbol:Db1pointsdata_set_fence_basic_symbol_v.ml:make"
;;


(** Db1pointsdata_set_fence_basic_symbol_v at 12:40:38 on 4 Jun 2017. created by version v2.4 of generator *)



