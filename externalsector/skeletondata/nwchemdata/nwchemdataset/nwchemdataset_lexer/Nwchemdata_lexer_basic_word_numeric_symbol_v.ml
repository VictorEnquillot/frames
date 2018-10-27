(** {3 Nwchemdata_lexer_basic_word_numeric_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : LEXNWC:Nwchemdata_lexer_basic_word_numeric_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_symbol sym_dnn ->
    Nwchemdata_lexer_basic_word_numeric_negative_symbol_v.name sym_dnn
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_non_negative_symbol sym_dnn ->
    Nwchemdata_lexer_basic_word_numeric_non_negative_symbol_v.name sym_dnn
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol sym_dnp ->
    Nwchemdata_lexer_basic_word_numeric_positive_symbol_v.name sym_dnp
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_symbol sym_dnn ->
  Nwchemdata_lexer_basic_word_numeric_negative_symbol_v.string_off sym_dnn
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_non_negative_symbol sym_dnn ->
  Nwchemdata_lexer_basic_word_numeric_non_negative_symbol_v.string_off sym_dnn
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol sym_dnp ->
  Nwchemdata_lexer_basic_word_numeric_positive_symbol_v.string_off sym_dnp
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dwn =
  Format.sprintf "Nwchemdata_lexer_basic_word_numeric_symbol_t.%s" (String.capitalize (name sym_dwn))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dwn =
  Format.sprintf "%s \"%s\"" (longname sym_dwn) (string_off sym_dwn)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol = function
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_symbol sym_dnn -> sym_dnn
  | sym_dwn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol"
      "Nwchemdata_lexer_basic_word_numeric_negative_symbol"
      (name sym_dwn) "check"
;;

let nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol = function
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_non_negative_symbol sym_dnn -> sym_dnn
  | sym_dwn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol"
      "Nwchemdata_lexer_basic_word_numeric_non_negative_symbol"
      (name sym_dwn) "check"
;;

let nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol = function
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol sym_dnp -> sym_dnp
  | sym_dwn -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol"
      "Nwchemdata_lexer_basic_word_numeric_positive_symbol"
      (name sym_dwn) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol = function
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol = function
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_non_negative_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol = function
  | Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_lexer_basic_word_numeric_negative_integer sym_dwn =
  if not (is_nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn)
  then false
  else
    begin
      let sym_dnn = nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn in
      Nwchemdata_lexer_basic_word_numeric_negative_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_integer sym_dnn
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_negative_float sym_dwn =
  if not (is_nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn)
  then false
  else
    begin
      let sym_dnn = nwchemdata_lexer_basic_word_numeric_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn in
      Nwchemdata_lexer_basic_word_numeric_negative_symbol_v.is_nwchemdata_lexer_basic_word_numeric_negative_float sym_dnn
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_integer sym_dwn =
  if not (is_nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn)
  then false
  else
    begin
      let sym_dnn = nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn in
      Nwchemdata_lexer_basic_word_numeric_non_negative_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_integer sym_dnn
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_non_negative_float sym_dwn =
  if not (is_nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn)
  then false
  else
    begin
      let sym_dnn = nwchemdata_lexer_basic_word_numeric_non_negative_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn in
      Nwchemdata_lexer_basic_word_numeric_non_negative_symbol_v.is_nwchemdata_lexer_basic_word_numeric_non_negative_float sym_dnn
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_integer sym_dwn =
  if not (is_nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn)
  then false
  else
    begin
      let sym_dnp = nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn in
      Nwchemdata_lexer_basic_word_numeric_positive_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_integer sym_dnp
    end
;;

let is_nwchemdata_lexer_basic_word_numeric_positive_float sym_dwn =
  if not (is_nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn)
  then false
  else
    begin
      let sym_dnp = nwchemdata_lexer_basic_word_numeric_positive_symbol_off_nwchemdata_lexer_basic_word_numeric_symbol sym_dwn in
      Nwchemdata_lexer_basic_word_numeric_positive_symbol_v.is_nwchemdata_lexer_basic_word_numeric_positive_float sym_dnp
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_negative_symbol sym_dnn = 
  Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_negative_symbol sym_dnn
;;

let nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_non_negative_symbol sym_dnn = 
  Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_non_negative_symbol sym_dnn
;;

let nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_positive_symbol sym_dnp = 
  Nwchemdata_lexer_basic_word_numeric_symbol_t.Nwchemdata_lexer_basic_word_numeric_positive_symbol sym_dnp
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_lexer_basic_word_numeric_negative_integer s = nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_negative_symbol (Nwchemdata_lexer_basic_word_numeric_negative_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_integer s);;

let nwchemdata_lexer_basic_word_numeric_negative_float s = nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_negative_symbol (Nwchemdata_lexer_basic_word_numeric_negative_symbol_v.nwchemdata_lexer_basic_word_numeric_negative_float s);;

let nwchemdata_lexer_basic_word_numeric_non_negative_integer s = nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_non_negative_symbol (Nwchemdata_lexer_basic_word_numeric_non_negative_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_integer s);;

let nwchemdata_lexer_basic_word_numeric_non_negative_float s = nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_non_negative_symbol (Nwchemdata_lexer_basic_word_numeric_non_negative_symbol_v.nwchemdata_lexer_basic_word_numeric_non_negative_float s);;

let nwchemdata_lexer_basic_word_numeric_positive_integer s = nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_positive_symbol (Nwchemdata_lexer_basic_word_numeric_positive_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_integer s);;

let nwchemdata_lexer_basic_word_numeric_positive_float s = nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_positive_symbol (Nwchemdata_lexer_basic_word_numeric_positive_symbol_v.nwchemdata_lexer_basic_word_numeric_positive_float s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_lexer_basic_word_numeric_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_lexer_basic_word_numeric_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_negative_symbol
      (Nwchemdata_lexer_basic_word_numeric_negative_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_word_numeric_negative_symbol:Nwchemdata_lexer_basic_word_numeric_negative_symbol_v.ml:make" ->
  try nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_non_negative_symbol
      (Nwchemdata_lexer_basic_word_numeric_non_negative_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_word_numeric_non_negative_symbol:Nwchemdata_lexer_basic_word_numeric_non_negative_symbol_v.ml:make" ->
  try nwchemdata_lexer_basic_word_numeric_symbol_of_nwchemdata_lexer_basic_word_numeric_positive_symbol
      (Nwchemdata_lexer_basic_word_numeric_positive_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_lexer_basic_word_numeric_positive_symbol:Nwchemdata_lexer_basic_word_numeric_positive_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_lexer_basic_word_numeric_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_lexer_basic_word_numeric_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_lexer_basic_word_numeric_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_lexer_basic_word_numeric_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_lexer_basic_word_numeric subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_lexer_basic_word_numeric_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_lexer_basic_word_numeric_symbol:Nwchemdata_lexer_basic_word_numeric_symbol_v.ml:make"
;;


(** Nwchemdata_lexer_basic_word_numeric_symbol_v at 17:56:3 on 23 Apr 2015. created by version v2.4 of generator *)



