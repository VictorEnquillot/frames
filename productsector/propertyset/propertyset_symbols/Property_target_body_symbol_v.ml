(** {3 Property_target_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Property_target_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Property_target_body_symbol_t.Property_target_body_implicit_symbol sym_pbi ->
    Property_target_body_implicit_symbol_v.name sym_pbi
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Property_target_body_symbol_t.Property_target_body_implicit_symbol sym_pbi ->
  Property_target_body_implicit_symbol_v.string_off sym_pbi
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ptb =
  Format.sprintf "Property_target_body_symbol_t.%s" (String.capitalize (name sym_ptb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ptb =
  Format.sprintf "%s \"%s\"" (longname sym_ptb) (string_off sym_ptb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let property_target_body_implicit_symbol_off_property_target_body_symbol = function
  | Property_target_body_symbol_t.Property_target_body_implicit_symbol sym_pbi -> sym_pbi
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let property_target_body_implicit_tounit_symbol_off_property_target_body_symbol sym_ptb = 
  let sym_pbi = property_target_body_implicit_symbol_off_property_target_body_symbol sym_ptb in
    Property_target_body_implicit_symbol_v.property_target_body_implicit_tounit_symbol_off_property_target_body_implicit_symbol sym_pbi
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_property_target_body_implicit_symbol_off_property_target_body_symbol = function
  | Property_target_body_symbol_t.Property_target_body_implicit_symbol _ -> true
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_property_target_body_implicit_tounit_constructor sym_ptb =
  if not (is_property_target_body_implicit_symbol_off_property_target_body_symbol sym_ptb)
  then false
  else
    begin
      let sym_pbi = property_target_body_implicit_symbol_off_property_target_body_symbol sym_ptb in
      Property_target_body_implicit_symbol_v.is_property_target_body_implicit_tounit_constructor sym_pbi
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_property_target_body_implicit_tounit_symbol_off_property_target_body_symbol sym_ptb =
  if not (is_property_target_body_implicit_symbol_off_property_target_body_symbol sym_ptb)
  then false
  else
    begin
  let sym_pbi = property_target_body_implicit_symbol_off_property_target_body_symbol sym_ptb in
  Property_target_body_implicit_symbol_v.is_property_target_body_implicit_tounit_symbol_off_property_target_body_implicit_symbol sym_pbi
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let property_target_body_symbol_of_property_target_body_implicit_symbol sym_pbi = 
  Property_target_body_symbol_t.Property_target_body_implicit_symbol sym_pbi
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let property_target_body_symbol_of_property_target_body_implicit_tounit_symbol sym_pit = 
  let sym_pbi = Property_target_body_implicit_symbol_v.property_target_body_implicit_symbol_of_property_target_body_implicit_tounit_symbol sym_pit in
    property_target_body_symbol_of_property_target_body_implicit_symbol sym_pbi
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let property_target_body_implicit_tounit_constructor s = property_target_body_symbol_of_property_target_body_implicit_symbol (Property_target_body_implicit_symbol_v.property_target_body_implicit_tounit_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Property_target_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Property_target_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try property_target_body_symbol_of_property_target_body_implicit_symbol
      (Property_target_body_implicit_symbol_v.make nam s)
  with Failure "Not_a_property_target_body_implicit_symbol:Property_target_body_implicit_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Property_target_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Property_target_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Property_target_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Property_target_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Property_target_body subtype" nam s)
      "it does not exists"
      "Check file Property_target_body_symbol_v.ml"
    in
    failwith "Not_a_property_target_body_symbol:Property_target_body_symbol_v.ml:make"
;;


(** Property_target_body_symbol_v at 10:48:21 on 19 Mar 2017. created by version v2.4 of generator *)


