(** {3 Property_operator_fence_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Property_operator_fence_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol sym_pfc ->
    Property_operator_fence_creation_symbol_v.name sym_pfc
  | Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol sym_pft ->
    Property_operator_fence_tounit_symbol_v.name sym_pft
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol sym_pfc ->
  Property_operator_fence_creation_symbol_v.string_off sym_pfc
  | Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol sym_pft ->
  Property_operator_fence_tounit_symbol_v.string_off sym_pft
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_pof =
  Format.sprintf "Property_operator_fence_symbol_t.%s" (String.capitalize (name sym_pof))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_pof =
  Format.sprintf "%s \"%s\"" (longname sym_pof) (string_off sym_pof)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let property_operator_fence_creation_symbol_off_property_operator_fence_symbol = function
  | Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol sym_pfc -> sym_pfc
  | sym_pof -> Error_messages_v.print_fatal_error
      nam_cod "property_operator_fence_creation_symbol_off_property_operator_fence_symbol"
      "Property_operator_fence_creation_symbol"
      (name sym_pof) "check"
;;

let property_operator_fence_tounit_symbol_off_property_operator_fence_symbol = function
  | Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol sym_pft -> sym_pft
  | sym_pof -> Error_messages_v.print_fatal_error
      nam_cod "property_operator_fence_tounit_symbol_off_property_operator_fence_symbol"
      "Property_operator_fence_tounit_symbol"
      (name sym_pof) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let property_operator_fence_creation_toentity_symbol_off_property_operator_fence_symbol sym_pof = 
  let sym_pfc = property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof in
    Property_operator_fence_creation_symbol_v.property_operator_fence_creation_toentity_symbol_off_property_operator_fence_creation_symbol sym_pfc
;;

let property_operator_fence_creation_tomeasure_symbol_off_property_operator_fence_symbol sym_pof = 
  let sym_pfc = property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof in
    Property_operator_fence_creation_symbol_v.property_operator_fence_creation_tomeasure_symbol_off_property_operator_fence_creation_symbol sym_pfc
;;

let property_operator_fence_creation_tobasic_symbol_off_property_operator_fence_symbol sym_pof = 
  let sym_pfc = property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof in
    Property_operator_fence_creation_symbol_v.property_operator_fence_creation_tobasic_symbol_off_property_operator_fence_creation_symbol sym_pfc
;;

let property_operator_fence_tounit_print_symbol_off_property_operator_fence_symbol sym_pof = 
  let sym_pft = property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof in
    Property_operator_fence_tounit_symbol_v.property_operator_fence_tounit_print_symbol_off_property_operator_fence_tounit_symbol sym_pft
;;

let property_operator_fence_tounit_write_symbol_off_property_operator_fence_symbol sym_pof = 
  let sym_pft = property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof in
    Property_operator_fence_tounit_symbol_v.property_operator_fence_tounit_write_symbol_off_property_operator_fence_tounit_symbol sym_pft
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_property_operator_fence_creation_symbol_off_property_operator_fence_symbol = function
  | Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol _ -> true
  | _ -> false
;;

let is_property_operator_fence_tounit_symbol_off_property_operator_fence_symbol = function
  | Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_property_operator_fence_creation_toentity_constructor sym_pof =
  if not (is_property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof)
  then false
  else
    begin
      let sym_pfc = property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof in
      Property_operator_fence_creation_symbol_v.is_property_operator_fence_creation_toentity_constructor sym_pfc
    end
;;

let is_property_operator_fence_creation_tomeasure_constructor sym_pof =
  if not (is_property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof)
  then false
  else
    begin
      let sym_pfc = property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof in
      Property_operator_fence_creation_symbol_v.is_property_operator_fence_creation_tomeasure_constructor sym_pfc
    end
;;

let is_property_operator_fence_creation_tobasic_constructor sym_pof =
  if not (is_property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof)
  then false
  else
    begin
      let sym_pfc = property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof in
      Property_operator_fence_creation_symbol_v.is_property_operator_fence_creation_tobasic_constructor sym_pfc
    end
;;

let is_property_operator_fence_tounit_print_constructor sym_pof =
  if not (is_property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof)
  then false
  else
    begin
      let sym_pft = property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof in
      Property_operator_fence_tounit_symbol_v.is_property_operator_fence_tounit_print_constructor sym_pft
    end
;;

let is_property_operator_fence_tounit_write_constructor sym_pof =
  if not (is_property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof)
  then false
  else
    begin
      let sym_pft = property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof in
      Property_operator_fence_tounit_symbol_v.is_property_operator_fence_tounit_write_constructor sym_pft
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_property_operator_fence_creation_toentity_symbol_off_property_operator_fence_symbol sym_pof =
  if not (is_property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof)
  then false
  else
    begin
  let sym_pfc = property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof in
  Property_operator_fence_creation_symbol_v.is_property_operator_fence_creation_toentity_symbol_off_property_operator_fence_creation_symbol sym_pfc
    end
;;

let is_property_operator_fence_creation_tomeasure_symbol_off_property_operator_fence_symbol sym_pof =
  if not (is_property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof)
  then false
  else
    begin
  let sym_pfc = property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof in
  Property_operator_fence_creation_symbol_v.is_property_operator_fence_creation_tomeasure_symbol_off_property_operator_fence_creation_symbol sym_pfc
    end
;;

let is_property_operator_fence_creation_tobasic_symbol_off_property_operator_fence_symbol sym_pof =
  if not (is_property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof)
  then false
  else
    begin
  let sym_pfc = property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof in
  Property_operator_fence_creation_symbol_v.is_property_operator_fence_creation_tobasic_symbol_off_property_operator_fence_creation_symbol sym_pfc
    end
;;

let is_property_operator_fence_tounit_print_symbol_off_property_operator_fence_symbol sym_pof =
  if not (is_property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof)
  then false
  else
    begin
  let sym_pft = property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof in
  Property_operator_fence_tounit_symbol_v.is_property_operator_fence_tounit_print_symbol_off_property_operator_fence_tounit_symbol sym_pft
    end
;;

let is_property_operator_fence_tounit_write_symbol_off_property_operator_fence_symbol sym_pof =
  if not (is_property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof)
  then false
  else
    begin
  let sym_pft = property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof in
  Property_operator_fence_tounit_symbol_v.is_property_operator_fence_tounit_write_symbol_off_property_operator_fence_tounit_symbol sym_pft
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let property_operator_fence_symbol_of_property_operator_fence_creation_symbol sym_pfc = 
  Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol sym_pfc
;;

let property_operator_fence_symbol_of_property_operator_fence_tounit_symbol sym_pft = 
  Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol sym_pft
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let property_operator_fence_symbol_of_property_operator_fence_creation_toentity_symbol sym_pct = 
  let sym_pfc = Property_operator_fence_creation_symbol_v.property_operator_fence_creation_symbol_of_property_operator_fence_creation_toentity_symbol sym_pct in
    property_operator_fence_symbol_of_property_operator_fence_creation_symbol sym_pfc
;;

let property_operator_fence_symbol_of_property_operator_fence_creation_tomeasure_symbol sym_pct = 
  let sym_pfc = Property_operator_fence_creation_symbol_v.property_operator_fence_creation_symbol_of_property_operator_fence_creation_tomeasure_symbol sym_pct in
    property_operator_fence_symbol_of_property_operator_fence_creation_symbol sym_pfc
;;

let property_operator_fence_symbol_of_property_operator_fence_creation_tobasic_symbol sym_pct = 
  let sym_pfc = Property_operator_fence_creation_symbol_v.property_operator_fence_creation_symbol_of_property_operator_fence_creation_tobasic_symbol sym_pct in
    property_operator_fence_symbol_of_property_operator_fence_creation_symbol sym_pfc
;;

let property_operator_fence_symbol_of_property_operator_fence_tounit_print_symbol sym_ptp = 
  let sym_pft = Property_operator_fence_tounit_symbol_v.property_operator_fence_tounit_symbol_of_property_operator_fence_tounit_print_symbol sym_ptp in
    property_operator_fence_symbol_of_property_operator_fence_tounit_symbol sym_pft
;;

let property_operator_fence_symbol_of_property_operator_fence_tounit_write_symbol sym_ptw = 
  let sym_pft = Property_operator_fence_tounit_symbol_v.property_operator_fence_tounit_symbol_of_property_operator_fence_tounit_write_symbol sym_ptw in
    property_operator_fence_symbol_of_property_operator_fence_tounit_symbol sym_pft
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let property_operator_fence_creation_toentity_constructor s = property_operator_fence_symbol_of_property_operator_fence_creation_symbol (Property_operator_fence_creation_symbol_v.property_operator_fence_creation_toentity_constructor s);;

let property_operator_fence_creation_tomeasure_constructor s = property_operator_fence_symbol_of_property_operator_fence_creation_symbol (Property_operator_fence_creation_symbol_v.property_operator_fence_creation_tomeasure_constructor s);;

let property_operator_fence_creation_tobasic_constructor s = property_operator_fence_symbol_of_property_operator_fence_creation_symbol (Property_operator_fence_creation_symbol_v.property_operator_fence_creation_tobasic_constructor s);;

let property_operator_fence_tounit_print_constructor s = property_operator_fence_symbol_of_property_operator_fence_tounit_symbol (Property_operator_fence_tounit_symbol_v.property_operator_fence_tounit_print_constructor s);;

let property_operator_fence_tounit_write_constructor s = property_operator_fence_symbol_of_property_operator_fence_tounit_symbol (Property_operator_fence_tounit_symbol_v.property_operator_fence_tounit_write_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Property_operator_fence_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Property_operator_fence_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try property_operator_fence_symbol_of_property_operator_fence_creation_symbol
      (Property_operator_fence_creation_symbol_v.make nam s)
  with Failure "Not_a_property_operator_fence_creation_symbol:Property_operator_fence_creation_symbol_v.ml:make" ->
  try property_operator_fence_symbol_of_property_operator_fence_tounit_symbol
      (Property_operator_fence_tounit_symbol_v.make nam s)
  with Failure "Not_a_property_operator_fence_tounit_symbol:Property_operator_fence_tounit_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Property_operator_fence_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Property_operator_fence_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Property_operator_fence_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Property_operator_fence_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Property_operator_fence subtype" nam s)
      "it does not exists"
      "Check file Property_operator_fence_symbol_v.ml"
    in
    failwith "Not_a_property_operator_fence_symbol:Property_operator_fence_symbol_v.ml:make"
;;


(** Property_operator_fence_symbol_v at 10:48:21 on 19 Mar 2017. created by version v2.4 of generator *)



