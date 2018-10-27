(** {3 Property_command_body_debug_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Property_command_body_debug_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Property_command_body_debug_symbol_t.Property_command_body_debug_constructor _ -> "property_command_body_debug_constructor"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Property_command_body_debug_symbol_t.Property_command_body_debug_constructor s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_pbd =
  Format.sprintf "Property_command_body_debug_symbol_t.%s" (String.capitalize (name sym_pbd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_pbd =
  Format.sprintf "%s \"%s\"" (longname sym_pbd) (string_off sym_pbd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_property_command_body_debug_constructor = function
  | Property_command_body_debug_symbol_t.Property_command_body_debug_constructor _ -> true
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let property_command_body_debug_constructor s = Property_command_body_debug_symbol_t.Property_command_body_debug_constructor s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Property_command_body_debug_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "property_command_body_debug_constructor" -> property_command_body_debug_constructor s
  | _ ->
  failwith "Not_a_topson_ofstring:Property_command_body_debug_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Property_command_body_debug_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Property_command_body_debug_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Property_command_body_debug_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Property_command_body_debug_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Property_command_body_debug subtype" nam s)
      "it does not exists"
      "Check file Property_command_body_debug_symbol_v.ml"
    in
    failwith "Not_a_property_command_body_debug_symbol:Property_command_body_debug_symbol_v.ml:make"
;;


(** Property_command_body_debug_symbol_v at 10:48:20 on 19 Mar 2017. created by version v2.4 of generator *)



