(** {3 Localinput_lexer_keyword_defvarnamed_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Localinput_lexer_keyword_defvarnamed_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol sym_ldc ->
    Localinput_lexer_keyword_defvarnamed_cofactor_symbol_v.name sym_ldc
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol sym_ldt ->
    Localinput_lexer_keyword_defvarnamed_type_symbol_v.name sym_ldt
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_units_symbol sym_ldu ->
    Localinput_lexer_keyword_defvarnamed_units_symbol_v.name sym_ldu
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol sym_ldc ->
  Localinput_lexer_keyword_defvarnamed_cofactor_symbol_v.string_off sym_ldc
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol sym_ldt ->
  Localinput_lexer_keyword_defvarnamed_type_symbol_v.string_off sym_ldt
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_units_symbol sym_ldu ->
  Localinput_lexer_keyword_defvarnamed_units_symbol_v.string_off sym_ldu
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lkd =
  Format.sprintf "Localinput_lexer_keyword_defvarnamed_symbol_t.%s" (String.capitalize (name sym_lkd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lkd =
  Format.sprintf "%s \"%s\"" (longname sym_lkd) (string_off sym_lkd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_keyword_defvarnamed_symbol = function
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol sym_ldc -> sym_ldc
  | sym_lkd -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_keyword_defvarnamed_symbol"
      "Localinput_lexer_keyword_defvarnamed_cofactor_symbol"
      (name sym_lkd) "check"
;;

let localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_keyword_defvarnamed_symbol = function
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol sym_ldt -> sym_ldt
  | sym_lkd -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_keyword_defvarnamed_symbol"
      "Localinput_lexer_keyword_defvarnamed_type_symbol"
      (name sym_lkd) "check"
;;

let localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_keyword_defvarnamed_symbol = function
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_units_symbol sym_ldu -> sym_ldu
  | sym_lkd -> Error_messages_v.print_fatal_error
      nam_cod "localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_keyword_defvarnamed_symbol"
      "Localinput_lexer_keyword_defvarnamed_units_symbol"
      (name sym_lkd) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_keyword_defvarnamed_symbol = function
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_keyword_defvarnamed_symbol = function
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol _ -> true
  | _ -> false
;;

let is_localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_keyword_defvarnamed_symbol = function
  | Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_units_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_localinput_lexer_keyword_defvarnamed_cofactor_constructor sym_lkd =
  if not (is_localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd)
  then false
  else
    begin
      let sym_ldc = localinput_lexer_keyword_defvarnamed_cofactor_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd in
      Localinput_lexer_keyword_defvarnamed_cofactor_symbol_v.is_localinput_lexer_keyword_defvarnamed_cofactor_constructor sym_ldc
    end
;;

let is_localinput_lexer_keyword_defvarnamed_type_constructor sym_lkd =
  if not (is_localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd)
  then false
  else
    begin
      let sym_ldt = localinput_lexer_keyword_defvarnamed_type_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd in
      Localinput_lexer_keyword_defvarnamed_type_symbol_v.is_localinput_lexer_keyword_defvarnamed_type_constructor sym_ldt
    end
;;

let is_localinput_lexer_keyword_defvarnamed_units_constructor sym_lkd =
  if not (is_localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd)
  then false
  else
    begin
      let sym_ldu = localinput_lexer_keyword_defvarnamed_units_symbol_off_localinput_lexer_keyword_defvarnamed_symbol sym_lkd in
      Localinput_lexer_keyword_defvarnamed_units_symbol_v.is_localinput_lexer_keyword_defvarnamed_units_constructor sym_ldu
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_cofactor_symbol sym_ldc = 
  Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_cofactor_symbol sym_ldc
;;

let localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_type_symbol sym_ldt = 
  Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol sym_ldt
;;

let localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_units_symbol sym_ldu = 
  Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_units_symbol sym_ldu
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let localinput_lexer_keyword_defvarnamed_cofactor_constructor s = localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_cofactor_symbol (Localinput_lexer_keyword_defvarnamed_cofactor_symbol_v.localinput_lexer_keyword_defvarnamed_cofactor_constructor s);;

let localinput_lexer_keyword_defvarnamed_type_constructor s = localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_type_symbol (Localinput_lexer_keyword_defvarnamed_type_symbol_v.localinput_lexer_keyword_defvarnamed_type_constructor s);;

let localinput_lexer_keyword_defvarnamed_units_constructor s = localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_units_symbol (Localinput_lexer_keyword_defvarnamed_units_symbol_v.localinput_lexer_keyword_defvarnamed_units_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Localinput_lexer_keyword_defvarnamed_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Localinput_lexer_keyword_defvarnamed_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_cofactor_symbol
      (Localinput_lexer_keyword_defvarnamed_cofactor_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_defvarnamed_cofactor_symbol:Localinput_lexer_keyword_defvarnamed_cofactor_symbol_v.ml:make" ->
  try localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_type_symbol
      (Localinput_lexer_keyword_defvarnamed_type_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_defvarnamed_type_symbol:Localinput_lexer_keyword_defvarnamed_type_symbol_v.ml:make" ->
  try localinput_lexer_keyword_defvarnamed_symbol_of_localinput_lexer_keyword_defvarnamed_units_symbol
      (Localinput_lexer_keyword_defvarnamed_units_symbol_v.make nam s)
  with Failure "Not_a_localinput_lexer_keyword_defvarnamed_units_symbol:Localinput_lexer_keyword_defvarnamed_units_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Localinput_lexer_keyword_defvarnamed_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Localinput_lexer_keyword_defvarnamed_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Localinput_lexer_keyword_defvarnamed_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Localinput_lexer_keyword_defvarnamed_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Localinput_lexer_keyword_defvarnamed subtype" nam s)
      "it does not exists"
      "Check file Localinput_lexer_keyword_defvarnamed_symbol_v.ml"
    in
    failwith "Not_a_localinput_lexer_keyword_defvarnamed_symbol:Localinput_lexer_keyword_defvarnamed_symbol_v.ml:make"
;;


(** Localinput_lexer_keyword_defvarnamed_symbol_v at 12:10:42 on 22 Mar 2017. created by version v2.4 of generator *)



