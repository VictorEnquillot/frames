(** {3 Property_operand_body_target_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Property_operand_body_target_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Property_operand_body_target_symbol_t.Property_operand_body_target_calculated_symbol sym_ptc ->
    Property_operand_body_target_calculated_symbol_v.name sym_ptc
  | Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol sym_ptc ->
    Property_operand_body_target_created_symbol_v.name sym_ptc
  | Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol sym_ptm ->
    Property_operand_body_target_measured_symbol_v.name sym_ptm
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Property_operand_body_target_symbol_t.Property_operand_body_target_calculated_symbol sym_ptc ->
  Property_operand_body_target_calculated_symbol_v.string_off sym_ptc
  | Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol sym_ptc ->
  Property_operand_body_target_created_symbol_v.string_off sym_ptc
  | Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol sym_ptm ->
  Property_operand_body_target_measured_symbol_v.string_off sym_ptm
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_pbt =
  Format.sprintf "Property_operand_body_target_symbol_t.%s" (String.capitalize (name sym_pbt))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_pbt =
  Format.sprintf "%s \"%s\"" (longname sym_pbt) (string_off sym_pbt)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let property_operand_body_target_calculated_symbol_off_property_operand_body_target_symbol = function
  | Property_operand_body_target_symbol_t.Property_operand_body_target_calculated_symbol sym_ptc -> sym_ptc
  | sym_pbt -> Error_messages_v.print_fatal_error
      nam_cod "property_operand_body_target_calculated_symbol_off_property_operand_body_target_symbol"
      "Property_operand_body_target_calculated_symbol"
      (name sym_pbt) "check"
;;

let property_operand_body_target_created_symbol_off_property_operand_body_target_symbol = function
  | Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol sym_ptc -> sym_ptc
  | sym_pbt -> Error_messages_v.print_fatal_error
      nam_cod "property_operand_body_target_created_symbol_off_property_operand_body_target_symbol"
      "Property_operand_body_target_created_symbol"
      (name sym_pbt) "check"
;;

let property_operand_body_target_measured_symbol_off_property_operand_body_target_symbol = function
  | Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol sym_ptm -> sym_ptm
  | sym_pbt -> Error_messages_v.print_fatal_error
      nam_cod "property_operand_body_target_measured_symbol_off_property_operand_body_target_symbol"
      "Property_operand_body_target_measured_symbol"
      (name sym_pbt) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_property_operand_body_target_calculated_symbol_off_property_operand_body_target_symbol = function
  | Property_operand_body_target_symbol_t.Property_operand_body_target_calculated_symbol _ -> true
  | _ -> false
;;

let is_property_operand_body_target_created_symbol_off_property_operand_body_target_symbol = function
  | Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol _ -> true
  | _ -> false
;;

let is_property_operand_body_target_measured_symbol_off_property_operand_body_target_symbol = function
  | Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_property_operand_body_target_calculated_constructor sym_pbt =
  if not (is_property_operand_body_target_calculated_symbol_off_property_operand_body_target_symbol sym_pbt)
  then false
  else
    begin
      let sym_ptc = property_operand_body_target_calculated_symbol_off_property_operand_body_target_symbol sym_pbt in
      Property_operand_body_target_calculated_symbol_v.is_property_operand_body_target_calculated_constructor sym_ptc
    end
;;

let is_property_operand_body_target_created_constructor sym_pbt =
  if not (is_property_operand_body_target_created_symbol_off_property_operand_body_target_symbol sym_pbt)
  then false
  else
    begin
      let sym_ptc = property_operand_body_target_created_symbol_off_property_operand_body_target_symbol sym_pbt in
      Property_operand_body_target_created_symbol_v.is_property_operand_body_target_created_constructor sym_ptc
    end
;;

let is_property_operand_body_target_measured_constructor sym_pbt =
  if not (is_property_operand_body_target_measured_symbol_off_property_operand_body_target_symbol sym_pbt)
  then false
  else
    begin
      let sym_ptm = property_operand_body_target_measured_symbol_off_property_operand_body_target_symbol sym_pbt in
      Property_operand_body_target_measured_symbol_v.is_property_operand_body_target_measured_constructor sym_ptm
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let property_operand_body_target_symbol_of_property_operand_body_target_calculated_symbol sym_ptc = 
  Property_operand_body_target_symbol_t.Property_operand_body_target_calculated_symbol sym_ptc
;;

let property_operand_body_target_symbol_of_property_operand_body_target_created_symbol sym_ptc = 
  Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol sym_ptc
;;

let property_operand_body_target_symbol_of_property_operand_body_target_measured_symbol sym_ptm = 
  Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol sym_ptm
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let property_operand_body_target_calculated_constructor s = property_operand_body_target_symbol_of_property_operand_body_target_calculated_symbol (Property_operand_body_target_calculated_symbol_v.property_operand_body_target_calculated_constructor s);;

let property_operand_body_target_created_constructor s = property_operand_body_target_symbol_of_property_operand_body_target_created_symbol (Property_operand_body_target_created_symbol_v.property_operand_body_target_created_constructor s);;

let property_operand_body_target_measured_constructor s = property_operand_body_target_symbol_of_property_operand_body_target_measured_symbol (Property_operand_body_target_measured_symbol_v.property_operand_body_target_measured_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Property_operand_body_target_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Property_operand_body_target_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try property_operand_body_target_symbol_of_property_operand_body_target_calculated_symbol
      (Property_operand_body_target_calculated_symbol_v.make nam s)
  with Failure "Not_a_property_operand_body_target_calculated_symbol:Property_operand_body_target_calculated_symbol_v.ml:make" ->
  try property_operand_body_target_symbol_of_property_operand_body_target_created_symbol
      (Property_operand_body_target_created_symbol_v.make nam s)
  with Failure "Not_a_property_operand_body_target_created_symbol:Property_operand_body_target_created_symbol_v.ml:make" ->
  try property_operand_body_target_symbol_of_property_operand_body_target_measured_symbol
      (Property_operand_body_target_measured_symbol_v.make nam s)
  with Failure "Not_a_property_operand_body_target_measured_symbol:Property_operand_body_target_measured_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Property_operand_body_target_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Property_operand_body_target_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Property_operand_body_target_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Property_operand_body_target_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Property_operand_body_target subtype" nam s)
      "it does not exists"
      "Check file Property_operand_body_target_symbol_v.ml"
    in
    failwith "Not_a_property_operand_body_target_symbol:Property_operand_body_target_symbol_v.ml:make"
;;


(** Property_operand_body_target_symbol_v at 10:48:20 on 19 Mar 2017. created by version v2.4 of generator *)



