(** {3 Nwchemdata_set_body_variable_shellname_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_set_body_variable_shellname_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_extended_symbol sym_nse ->
    Nwchemdata_set_body_variable_shellname_extended_symbol_v.name sym_nse
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_usual_symbol sym_nsu ->
    Nwchemdata_set_body_variable_shellname_usual_symbol_v.name sym_nsu
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_relativistic_symbol sym_nsr ->
    Nwchemdata_set_body_variable_shellname_relativistic_symbol_v.name sym_nsr
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_extended_symbol sym_nse ->
  Nwchemdata_set_body_variable_shellname_extended_symbol_v.string_off sym_nse
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_usual_symbol sym_nsu ->
  Nwchemdata_set_body_variable_shellname_usual_symbol_v.string_off sym_nsu
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_relativistic_symbol sym_nsr ->
  Nwchemdata_set_body_variable_shellname_relativistic_symbol_v.string_off sym_nsr
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nvs =
  Format.sprintf "Nwchemdata_set_body_variable_shellname_symbol_t.%s" (String.capitalize (name sym_nvs))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nvs =
  Format.sprintf "%s \"%s\"" (longname sym_nvs) (string_off sym_nvs)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_variable_shellname_symbol = function
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_extended_symbol sym_nse -> sym_nse
  | sym_nvs -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_variable_shellname_symbol"
      "Nwchemdata_set_body_variable_shellname_extended_symbol"
      (name sym_nvs) "check"
;;

let nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_variable_shellname_symbol = function
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_usual_symbol sym_nsu -> sym_nsu
  | sym_nvs -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_variable_shellname_symbol"
      "Nwchemdata_set_body_variable_shellname_usual_symbol"
      (name sym_nvs) "check"
;;

let nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_variable_shellname_symbol = function
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_relativistic_symbol sym_nsr -> sym_nsr
  | sym_nvs -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_variable_shellname_symbol"
      "Nwchemdata_set_body_variable_shellname_relativistic_symbol"
      (name sym_nvs) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_variable_shellname_symbol = function
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_extended_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_variable_shellname_symbol = function
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_usual_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_variable_shellname_symbol = function
  | Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_relativistic_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_set_body_variable_shellname_extended_constructor sym_nvs =
  if not (is_nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs)
  then false
  else
    begin
      let sym_nse = nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs in
      Nwchemdata_set_body_variable_shellname_extended_symbol_v.is_nwchemdata_set_body_variable_shellname_extended_constructor sym_nse
    end
;;

let is_nwchemdata_set_body_variable_shellname_usual_constructor sym_nvs =
  if not (is_nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs)
  then false
  else
    begin
      let sym_nsu = nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs in
      Nwchemdata_set_body_variable_shellname_usual_symbol_v.is_nwchemdata_set_body_variable_shellname_usual_constructor sym_nsu
    end
;;

let is_nwchemdata_set_body_variable_shellname_relativistic_constructor sym_nvs =
  if not (is_nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs)
  then false
  else
    begin
      let sym_nsr = nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs in
      Nwchemdata_set_body_variable_shellname_relativistic_symbol_v.is_nwchemdata_set_body_variable_shellname_relativistic_constructor sym_nsr
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_extended_symbol sym_nse = 
  Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_extended_symbol sym_nse
;;

let nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_usual_symbol sym_nsu = 
  Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_usual_symbol sym_nsu
;;

let nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_relativistic_symbol sym_nsr = 
  Nwchemdata_set_body_variable_shellname_symbol_t.Nwchemdata_set_body_variable_shellname_relativistic_symbol sym_nsr
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_set_body_variable_shellname_extended_constructor s = nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_extended_symbol (Nwchemdata_set_body_variable_shellname_extended_symbol_v.nwchemdata_set_body_variable_shellname_extended_constructor s);;

let nwchemdata_set_body_variable_shellname_usual_constructor s = nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_usual_symbol (Nwchemdata_set_body_variable_shellname_usual_symbol_v.nwchemdata_set_body_variable_shellname_usual_constructor s);;

let nwchemdata_set_body_variable_shellname_relativistic_constructor s = nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_relativistic_symbol (Nwchemdata_set_body_variable_shellname_relativistic_symbol_v.nwchemdata_set_body_variable_shellname_relativistic_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_set_body_variable_shellname_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_set_body_variable_shellname_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_extended_symbol
      (Nwchemdata_set_body_variable_shellname_extended_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_shellname_extended_symbol:Nwchemdata_set_body_variable_shellname_extended_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_usual_symbol
      (Nwchemdata_set_body_variable_shellname_usual_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_shellname_usual_symbol:Nwchemdata_set_body_variable_shellname_usual_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_relativistic_symbol
      (Nwchemdata_set_body_variable_shellname_relativistic_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_shellname_relativistic_symbol:Nwchemdata_set_body_variable_shellname_relativistic_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_set_body_variable_shellname_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_set_body_variable_shellname_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_set_body_variable_shellname_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_set_body_variable_shellname_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_set_body_variable_shellname subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_set_body_variable_shellname_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_set_body_variable_shellname_symbol:Nwchemdata_set_body_variable_shellname_symbol_v.ml:make"
;;


(** Nwchemdata_set_body_variable_shellname_symbol_v at 17:57:23 on 4 Dec 2016. created by version v2.4 of generator *)



