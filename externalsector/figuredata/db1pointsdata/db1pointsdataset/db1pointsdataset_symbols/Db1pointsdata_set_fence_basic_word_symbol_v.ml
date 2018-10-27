(** {3 Db1pointsdata_set_fence_basic_word_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_set_fence_basic_word_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_anycase_symbol sym_dwa ->
    Db1pointsdata_set_fence_basic_word_anycase_symbol_v.name sym_dwa
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_capitalized_symbol sym_dwc ->
    Db1pointsdata_set_fence_basic_word_capitalized_symbol_v.name sym_dwc
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_lowercase_symbol sym_dwl ->
    Db1pointsdata_set_fence_basic_word_lowercase_symbol_v.name sym_dwl
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_uppercase_symbol sym_dwu ->
    Db1pointsdata_set_fence_basic_word_uppercase_symbol_v.name sym_dwu
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_anycase_symbol sym_dwa ->
  Db1pointsdata_set_fence_basic_word_anycase_symbol_v.string_off sym_dwa
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_capitalized_symbol sym_dwc ->
  Db1pointsdata_set_fence_basic_word_capitalized_symbol_v.string_off sym_dwc
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_lowercase_symbol sym_dwl ->
  Db1pointsdata_set_fence_basic_word_lowercase_symbol_v.string_off sym_dwl
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_uppercase_symbol sym_dwu ->
  Db1pointsdata_set_fence_basic_word_uppercase_symbol_v.string_off sym_dwu
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dbw =
  Format.sprintf "Db1pointsdata_set_fence_basic_word_symbol_t.%s" (String.capitalize (name sym_dbw))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dbw =
  Format.sprintf "%s \"%s\"" (longname sym_dbw) (string_off sym_dbw)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_basic_word_symbol = function
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_anycase_symbol sym_dwa -> sym_dwa
  | sym_dbw -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_basic_word_symbol"
      "Db1pointsdata_set_fence_basic_word_anycase_symbol"
      (name sym_dbw) "check"
;;

let db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_basic_word_symbol = function
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_capitalized_symbol sym_dwc -> sym_dwc
  | sym_dbw -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_basic_word_symbol"
      "Db1pointsdata_set_fence_basic_word_capitalized_symbol"
      (name sym_dbw) "check"
;;

let db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol = function
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_lowercase_symbol sym_dwl -> sym_dwl
  | sym_dbw -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol"
      "Db1pointsdata_set_fence_basic_word_lowercase_symbol"
      (name sym_dbw) "check"
;;

let db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol = function
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_uppercase_symbol sym_dwu -> sym_dwu
  | sym_dbw -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol"
      "Db1pointsdata_set_fence_basic_word_uppercase_symbol"
      (name sym_dbw) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_basic_word_symbol = function
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_anycase_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_basic_word_symbol = function
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_capitalized_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol = function
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_lowercase_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol = function
  | Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_uppercase_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_set_fence_basic_word_anycase_constructor sym_dbw =
  if not (is_db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwa = db1pointsdata_set_fence_basic_word_anycase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw in
      Db1pointsdata_set_fence_basic_word_anycase_symbol_v.is_db1pointsdata_set_fence_basic_word_anycase_constructor sym_dwa
    end
;;

let is_db1pointsdata_set_fence_basic_word_capitalized_constructor sym_dbw =
  if not (is_db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwc = db1pointsdata_set_fence_basic_word_capitalized_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw in
      Db1pointsdata_set_fence_basic_word_capitalized_symbol_v.is_db1pointsdata_set_fence_basic_word_capitalized_constructor sym_dwc
    end
;;

let is_db1pointsdata_set_fence_basic_word_lowercase_constructor sym_dbw =
  if not (is_db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwl = db1pointsdata_set_fence_basic_word_lowercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw in
      Db1pointsdata_set_fence_basic_word_lowercase_symbol_v.is_db1pointsdata_set_fence_basic_word_lowercase_constructor sym_dwl
    end
;;

let is_db1pointsdata_set_fence_basic_word_uppercase_constructor sym_dbw =
  if not (is_db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw)
  then false
  else
    begin
      let sym_dwu = db1pointsdata_set_fence_basic_word_uppercase_symbol_off_db1pointsdata_set_fence_basic_word_symbol sym_dbw in
      Db1pointsdata_set_fence_basic_word_uppercase_symbol_v.is_db1pointsdata_set_fence_basic_word_uppercase_constructor sym_dwu
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_anycase_symbol sym_dwa = 
  Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_anycase_symbol sym_dwa
;;

let db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_capitalized_symbol sym_dwc = 
  Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_capitalized_symbol sym_dwc
;;

let db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_lowercase_symbol sym_dwl = 
  Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_lowercase_symbol sym_dwl
;;

let db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_uppercase_symbol sym_dwu = 
  Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_uppercase_symbol sym_dwu
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_set_fence_basic_word_anycase_constructor s = db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_anycase_symbol (Db1pointsdata_set_fence_basic_word_anycase_symbol_v.db1pointsdata_set_fence_basic_word_anycase_constructor s);;

let db1pointsdata_set_fence_basic_word_capitalized_constructor s = db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_capitalized_symbol (Db1pointsdata_set_fence_basic_word_capitalized_symbol_v.db1pointsdata_set_fence_basic_word_capitalized_constructor s);;

let db1pointsdata_set_fence_basic_word_lowercase_constructor s = db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_lowercase_symbol (Db1pointsdata_set_fence_basic_word_lowercase_symbol_v.db1pointsdata_set_fence_basic_word_lowercase_constructor s);;

let db1pointsdata_set_fence_basic_word_uppercase_constructor s = db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_uppercase_symbol (Db1pointsdata_set_fence_basic_word_uppercase_symbol_v.db1pointsdata_set_fence_basic_word_uppercase_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_set_fence_basic_word_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_set_fence_basic_word_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_anycase_symbol
      (Db1pointsdata_set_fence_basic_word_anycase_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_basic_word_anycase_symbol:Db1pointsdata_set_fence_basic_word_anycase_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_capitalized_symbol
      (Db1pointsdata_set_fence_basic_word_capitalized_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_basic_word_capitalized_symbol:Db1pointsdata_set_fence_basic_word_capitalized_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_lowercase_symbol
      (Db1pointsdata_set_fence_basic_word_lowercase_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_basic_word_lowercase_symbol:Db1pointsdata_set_fence_basic_word_lowercase_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_basic_word_symbol_of_db1pointsdata_set_fence_basic_word_uppercase_symbol
      (Db1pointsdata_set_fence_basic_word_uppercase_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_basic_word_uppercase_symbol:Db1pointsdata_set_fence_basic_word_uppercase_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_set_fence_basic_word_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_set_fence_basic_word_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_set_fence_basic_word_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_set_fence_basic_word_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_set_fence_basic_word subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_set_fence_basic_word_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_set_fence_basic_word_symbol:Db1pointsdata_set_fence_basic_word_symbol_v.ml:make"
;;


(** Db1pointsdata_set_fence_basic_word_symbol_v at 12:40:38 on 4 Jun 2017. created by version v2.4 of generator *)



