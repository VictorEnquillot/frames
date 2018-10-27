(** {3 Property_operand_fence_external_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Property_operand_fence_external_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor _ -> "property_operand_fence_external_constructor"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_pfe =
  Format.sprintf "Property_operand_fence_external_symbol_t.%s" (String.capitalize (name sym_pfe))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_pfe =
  Format.sprintf "%s \"%s\"" (longname sym_pfe) (string_off sym_pfe)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_property_operand_fence_external_constructor = function
  | Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor _ -> true
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let property_operand_fence_external_constructor s = Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Property_operand_fence_external_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "property_operand_fence_external_constructor" -> property_operand_fence_external_constructor s
  | _ ->
  failwith "Not_a_topson_ofstring:Property_operand_fence_external_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Property_operand_fence_external_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Property_operand_fence_external_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Property_operand_fence_external_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Property_operand_fence_external_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Property_operand_fence_external subtype" nam s)
      "it does not exists"
      "Check file Property_operand_fence_external_symbol_v.ml"
    in
    failwith "Not_a_property_operand_fence_external_symbol:Property_operand_fence_external_symbol_v.ml:make"
;;


(** Property_operand_fence_external_symbol_v at 10:48:20 on 19 Mar 2017. created by version v2.4 of generator *)



