(** {3 Property_operator_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Property_operator_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Property_operator_symbol_t.Property_operator_fence_symbol sym_pof ->
    Property_operator_fence_symbol_v.name sym_pof
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Property_operator_symbol_t.Property_operator_fence_symbol sym_pof ->
  Property_operator_fence_symbol_v.string_off sym_pof
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_pop =
  Format.sprintf "Property_operator_symbol_t.%s" (String.capitalize (name sym_pop))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_pop =
  Format.sprintf "%s \"%s\"" (longname sym_pop) (string_off sym_pop)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let property_operator_fence_symbol_off_property_operator_symbol = function
  | Property_operator_symbol_t.Property_operator_fence_symbol sym_pof -> sym_pof
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let property_operator_fence_creation_symbol_off_property_operator_symbol sym_pop = 
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
    Property_operator_fence_symbol_v.property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof
;;

let property_operator_fence_creation_toentity_symbol_off_property_operator_symbol sym_pop = 
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
    Property_operator_fence_symbol_v.property_operator_fence_creation_toentity_symbol_off_property_operator_fence_symbol sym_pof
;;

let property_operator_fence_creation_tomeasure_symbol_off_property_operator_symbol sym_pop = 
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
    Property_operator_fence_symbol_v.property_operator_fence_creation_tomeasure_symbol_off_property_operator_fence_symbol sym_pof
;;

let property_operator_fence_creation_tobasic_symbol_off_property_operator_symbol sym_pop = 
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
    Property_operator_fence_symbol_v.property_operator_fence_creation_tobasic_symbol_off_property_operator_fence_symbol sym_pof
;;

let property_operator_fence_tounit_symbol_off_property_operator_symbol sym_pop = 
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
    Property_operator_fence_symbol_v.property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof
;;

let property_operator_fence_tounit_print_symbol_off_property_operator_symbol sym_pop = 
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
    Property_operator_fence_symbol_v.property_operator_fence_tounit_print_symbol_off_property_operator_fence_symbol sym_pof
;;

let property_operator_fence_tounit_write_symbol_off_property_operator_symbol sym_pop = 
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
    Property_operator_fence_symbol_v.property_operator_fence_tounit_write_symbol_off_property_operator_fence_symbol sym_pof
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_property_operator_fence_symbol_off_property_operator_symbol = function
  | Property_operator_symbol_t.Property_operator_fence_symbol _ -> true
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_property_operator_fence_creation_toentity_constructor sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
      let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
      Property_operator_fence_symbol_v.is_property_operator_fence_creation_toentity_constructor sym_pof
    end
;;

let is_property_operator_fence_creation_tomeasure_constructor sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
      let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
      Property_operator_fence_symbol_v.is_property_operator_fence_creation_tomeasure_constructor sym_pof
    end
;;

let is_property_operator_fence_creation_tobasic_constructor sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
      let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
      Property_operator_fence_symbol_v.is_property_operator_fence_creation_tobasic_constructor sym_pof
    end
;;

let is_property_operator_fence_tounit_print_constructor sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
      let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
      Property_operator_fence_symbol_v.is_property_operator_fence_tounit_print_constructor sym_pof
    end
;;

let is_property_operator_fence_tounit_write_constructor sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
      let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
      Property_operator_fence_symbol_v.is_property_operator_fence_tounit_write_constructor sym_pof
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_property_operator_fence_creation_symbol_off_property_operator_symbol sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
  Property_operator_fence_symbol_v.is_property_operator_fence_creation_symbol_off_property_operator_fence_symbol sym_pof
    end
;;

let is_property_operator_fence_creation_toentity_symbol_off_property_operator_symbol sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
  Property_operator_fence_symbol_v.is_property_operator_fence_creation_toentity_symbol_off_property_operator_fence_symbol sym_pof
    end
;;

let is_property_operator_fence_creation_tomeasure_symbol_off_property_operator_symbol sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
  Property_operator_fence_symbol_v.is_property_operator_fence_creation_tomeasure_symbol_off_property_operator_fence_symbol sym_pof
    end
;;

let is_property_operator_fence_creation_tobasic_symbol_off_property_operator_symbol sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
  Property_operator_fence_symbol_v.is_property_operator_fence_creation_tobasic_symbol_off_property_operator_fence_symbol sym_pof
    end
;;

let is_property_operator_fence_tounit_symbol_off_property_operator_symbol sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
  Property_operator_fence_symbol_v.is_property_operator_fence_tounit_symbol_off_property_operator_fence_symbol sym_pof
    end
;;

let is_property_operator_fence_tounit_print_symbol_off_property_operator_symbol sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
  Property_operator_fence_symbol_v.is_property_operator_fence_tounit_print_symbol_off_property_operator_fence_symbol sym_pof
    end
;;

let is_property_operator_fence_tounit_write_symbol_off_property_operator_symbol sym_pop =
  if not (is_property_operator_fence_symbol_off_property_operator_symbol sym_pop)
  then false
  else
    begin
  let sym_pof = property_operator_fence_symbol_off_property_operator_symbol sym_pop in
  Property_operator_fence_symbol_v.is_property_operator_fence_tounit_write_symbol_off_property_operator_fence_symbol sym_pof
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let property_operator_symbol_of_property_operator_fence_symbol sym_pof = 
  Property_operator_symbol_t.Property_operator_fence_symbol sym_pof
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let property_operator_symbol_of_property_operator_fence_creation_symbol sym_pfc = 
  let sym_pof = Property_operator_fence_symbol_v.property_operator_fence_symbol_of_property_operator_fence_creation_symbol sym_pfc in
    property_operator_symbol_of_property_operator_fence_symbol sym_pof
;;

let property_operator_symbol_of_property_operator_fence_creation_toentity_symbol sym_pct = 
  let sym_pof = Property_operator_fence_symbol_v.property_operator_fence_symbol_of_property_operator_fence_creation_toentity_symbol sym_pct in
    property_operator_symbol_of_property_operator_fence_symbol sym_pof
;;

let property_operator_symbol_of_property_operator_fence_creation_tomeasure_symbol sym_pct = 
  let sym_pof = Property_operator_fence_symbol_v.property_operator_fence_symbol_of_property_operator_fence_creation_tomeasure_symbol sym_pct in
    property_operator_symbol_of_property_operator_fence_symbol sym_pof
;;

let property_operator_symbol_of_property_operator_fence_creation_tobasic_symbol sym_pct = 
  let sym_pof = Property_operator_fence_symbol_v.property_operator_fence_symbol_of_property_operator_fence_creation_tobasic_symbol sym_pct in
    property_operator_symbol_of_property_operator_fence_symbol sym_pof
;;

let property_operator_symbol_of_property_operator_fence_tounit_symbol sym_pft = 
  let sym_pof = Property_operator_fence_symbol_v.property_operator_fence_symbol_of_property_operator_fence_tounit_symbol sym_pft in
    property_operator_symbol_of_property_operator_fence_symbol sym_pof
;;

let property_operator_symbol_of_property_operator_fence_tounit_print_symbol sym_ptp = 
  let sym_pof = Property_operator_fence_symbol_v.property_operator_fence_symbol_of_property_operator_fence_tounit_print_symbol sym_ptp in
    property_operator_symbol_of_property_operator_fence_symbol sym_pof
;;

let property_operator_symbol_of_property_operator_fence_tounit_write_symbol sym_ptw = 
  let sym_pof = Property_operator_fence_symbol_v.property_operator_fence_symbol_of_property_operator_fence_tounit_write_symbol sym_ptw in
    property_operator_symbol_of_property_operator_fence_symbol sym_pof
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let property_operator_fence_creation_toentity_constructor s = property_operator_symbol_of_property_operator_fence_symbol (Property_operator_fence_symbol_v.property_operator_fence_creation_toentity_constructor s);;

let property_operator_fence_creation_tomeasure_constructor s = property_operator_symbol_of_property_operator_fence_symbol (Property_operator_fence_symbol_v.property_operator_fence_creation_tomeasure_constructor s);;

let property_operator_fence_creation_tobasic_constructor s = property_operator_symbol_of_property_operator_fence_symbol (Property_operator_fence_symbol_v.property_operator_fence_creation_tobasic_constructor s);;

let property_operator_fence_tounit_print_constructor s = property_operator_symbol_of_property_operator_fence_symbol (Property_operator_fence_symbol_v.property_operator_fence_tounit_print_constructor s);;

let property_operator_fence_tounit_write_constructor s = property_operator_symbol_of_property_operator_fence_symbol (Property_operator_fence_symbol_v.property_operator_fence_tounit_write_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Property_operator_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Property_operator_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try property_operator_symbol_of_property_operator_fence_symbol
      (Property_operator_fence_symbol_v.make nam s)
  with Failure "Not_a_property_operator_fence_symbol:Property_operator_fence_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Property_operator_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Property_operator_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Property_operator_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Property_operator_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Property_operator subtype" nam s)
      "it does not exists"
      "Check file Property_operator_symbol_v.ml"
    in
    failwith "Not_a_property_operator_symbol:Property_operator_symbol_v.ml:make"
;;


(** Property_operator_symbol_v at 10:48:21 on 19 Mar 2017. created by version v2.4 of generator *)



