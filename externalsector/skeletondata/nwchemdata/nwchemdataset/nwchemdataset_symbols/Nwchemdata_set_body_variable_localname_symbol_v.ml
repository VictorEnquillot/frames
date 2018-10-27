(** {3 Nwchemdata_set_body_variable_localname_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_set_body_variable_localname_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_set_body_variable_localname_symbol_t.Nwchemdata_set_body_variable_localname_dataname_symbol sym_nld ->
    Nwchemdata_set_body_variable_localname_dataname_symbol_v.name sym_nld
  | Nwchemdata_set_body_variable_localname_symbol_t.Nwchemdata_set_body_variable_localname_ecpset_symbol sym_nle ->
    Nwchemdata_set_body_variable_localname_ecpset_symbol_v.name sym_nle
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_set_body_variable_localname_symbol_t.Nwchemdata_set_body_variable_localname_dataname_symbol sym_nld ->
  Nwchemdata_set_body_variable_localname_dataname_symbol_v.string_off sym_nld
  | Nwchemdata_set_body_variable_localname_symbol_t.Nwchemdata_set_body_variable_localname_ecpset_symbol sym_nle ->
  Nwchemdata_set_body_variable_localname_ecpset_symbol_v.string_off sym_nle
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nvl =
  Format.sprintf "Nwchemdata_set_body_variable_localname_symbol_t.%s" (String.capitalize (name sym_nvl))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nvl =
  Format.sprintf "%s \"%s\"" (longname sym_nvl) (string_off sym_nvl)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_variable_localname_symbol = function
  | Nwchemdata_set_body_variable_localname_symbol_t.Nwchemdata_set_body_variable_localname_dataname_symbol sym_nld -> sym_nld
  | sym_nvl -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_variable_localname_symbol"
      "Nwchemdata_set_body_variable_localname_dataname_symbol"
      (name sym_nvl) "check"
;;

let nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_variable_localname_symbol = function
  | Nwchemdata_set_body_variable_localname_symbol_t.Nwchemdata_set_body_variable_localname_ecpset_symbol sym_nle -> sym_nle
  | sym_nvl -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_variable_localname_symbol"
      "Nwchemdata_set_body_variable_localname_ecpset_symbol"
      (name sym_nvl) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_variable_localname_symbol = function
  | Nwchemdata_set_body_variable_localname_symbol_t.Nwchemdata_set_body_variable_localname_dataname_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_variable_localname_symbol = function
  | Nwchemdata_set_body_variable_localname_symbol_t.Nwchemdata_set_body_variable_localname_ecpset_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_set_body_variable_localname_dataname_constructor sym_nvl =
  if not (is_nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_variable_localname_symbol sym_nvl)
  then false
  else
    begin
      let sym_nld = nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_variable_localname_symbol sym_nvl in
      Nwchemdata_set_body_variable_localname_dataname_symbol_v.is_nwchemdata_set_body_variable_localname_dataname_constructor sym_nld
    end
;;

let is_nwchemdata_set_body_variable_localname_ecpset_constructor sym_nvl =
  if not (is_nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_variable_localname_symbol sym_nvl)
  then false
  else
    begin
      let sym_nle = nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_variable_localname_symbol sym_nvl in
      Nwchemdata_set_body_variable_localname_ecpset_symbol_v.is_nwchemdata_set_body_variable_localname_ecpset_constructor sym_nle
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_variable_localname_symbol_of_nwchemdata_set_body_variable_localname_dataname_symbol sym_nld = 
  Nwchemdata_set_body_variable_localname_symbol_t.Nwchemdata_set_body_variable_localname_dataname_symbol sym_nld
;;

let nwchemdata_set_body_variable_localname_symbol_of_nwchemdata_set_body_variable_localname_ecpset_symbol sym_nle = 
  Nwchemdata_set_body_variable_localname_symbol_t.Nwchemdata_set_body_variable_localname_ecpset_symbol sym_nle
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_set_body_variable_localname_dataname_constructor s = nwchemdata_set_body_variable_localname_symbol_of_nwchemdata_set_body_variable_localname_dataname_symbol (Nwchemdata_set_body_variable_localname_dataname_symbol_v.nwchemdata_set_body_variable_localname_dataname_constructor s);;

let nwchemdata_set_body_variable_localname_ecpset_constructor s = nwchemdata_set_body_variable_localname_symbol_of_nwchemdata_set_body_variable_localname_ecpset_symbol (Nwchemdata_set_body_variable_localname_ecpset_symbol_v.nwchemdata_set_body_variable_localname_ecpset_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_set_body_variable_localname_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_set_body_variable_localname_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_set_body_variable_localname_symbol_of_nwchemdata_set_body_variable_localname_dataname_symbol
      (Nwchemdata_set_body_variable_localname_dataname_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_localname_dataname_symbol:Nwchemdata_set_body_variable_localname_dataname_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_localname_symbol_of_nwchemdata_set_body_variable_localname_ecpset_symbol
      (Nwchemdata_set_body_variable_localname_ecpset_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_localname_ecpset_symbol:Nwchemdata_set_body_variable_localname_ecpset_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_set_body_variable_localname_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_set_body_variable_localname_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_set_body_variable_localname_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_set_body_variable_localname_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_set_body_variable_localname subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_set_body_variable_localname_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_set_body_variable_localname_symbol:Nwchemdata_set_body_variable_localname_symbol_v.ml:make"
;;


(** Nwchemdata_set_body_variable_localname_symbol_v at 17:57:23 on 4 Dec 2016. created by version v2.4 of generator *)



