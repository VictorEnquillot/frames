(** {3 Property_command_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Property_command_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Property_command_body_symbol_t.Property_command_body_debug_symbol sym_pbd ->
    Property_command_body_debug_symbol_v.name sym_pbd
  | Property_command_body_symbol_t.Property_command_body_set_symbol sym_pbs ->
    Property_command_body_set_symbol_v.name sym_pbs
  | Property_command_body_symbol_t.Property_command_body_title_symbol sym_pbt ->
    Property_command_body_title_symbol_v.name sym_pbt
  | Property_command_body_symbol_t.Property_command_body_trace_symbol sym_pbt ->
    Property_command_body_trace_symbol_v.name sym_pbt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Property_command_body_symbol_t.Property_command_body_debug_symbol sym_pbd ->
  Property_command_body_debug_symbol_v.string_off sym_pbd
  | Property_command_body_symbol_t.Property_command_body_set_symbol sym_pbs ->
  Property_command_body_set_symbol_v.string_off sym_pbs
  | Property_command_body_symbol_t.Property_command_body_title_symbol sym_pbt ->
  Property_command_body_title_symbol_v.string_off sym_pbt
  | Property_command_body_symbol_t.Property_command_body_trace_symbol sym_pbt ->
  Property_command_body_trace_symbol_v.string_off sym_pbt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_pcb =
  Format.sprintf "Property_command_body_symbol_t.%s" (String.capitalize (name sym_pcb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_pcb =
  Format.sprintf "%s \"%s\"" (longname sym_pcb) (string_off sym_pcb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let property_command_body_debug_symbol_off_property_command_body_symbol = function
  | Property_command_body_symbol_t.Property_command_body_debug_symbol sym_pbd -> sym_pbd
  | sym_pcb -> Error_messages_v.print_fatal_error
      nam_cod "property_command_body_debug_symbol_off_property_command_body_symbol"
      "Property_command_body_debug_symbol"
      (name sym_pcb) "check"
;;

let property_command_body_set_symbol_off_property_command_body_symbol = function
  | Property_command_body_symbol_t.Property_command_body_set_symbol sym_pbs -> sym_pbs
  | sym_pcb -> Error_messages_v.print_fatal_error
      nam_cod "property_command_body_set_symbol_off_property_command_body_symbol"
      "Property_command_body_set_symbol"
      (name sym_pcb) "check"
;;

let property_command_body_title_symbol_off_property_command_body_symbol = function
  | Property_command_body_symbol_t.Property_command_body_title_symbol sym_pbt -> sym_pbt
  | sym_pcb -> Error_messages_v.print_fatal_error
      nam_cod "property_command_body_title_symbol_off_property_command_body_symbol"
      "Property_command_body_title_symbol"
      (name sym_pcb) "check"
;;

let property_command_body_trace_symbol_off_property_command_body_symbol = function
  | Property_command_body_symbol_t.Property_command_body_trace_symbol sym_pbt -> sym_pbt
  | sym_pcb -> Error_messages_v.print_fatal_error
      nam_cod "property_command_body_trace_symbol_off_property_command_body_symbol"
      "Property_command_body_trace_symbol"
      (name sym_pcb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_property_command_body_debug_symbol_off_property_command_body_symbol = function
  | Property_command_body_symbol_t.Property_command_body_debug_symbol _ -> true
  | _ -> false
;;

let is_property_command_body_set_symbol_off_property_command_body_symbol = function
  | Property_command_body_symbol_t.Property_command_body_set_symbol _ -> true
  | _ -> false
;;

let is_property_command_body_title_symbol_off_property_command_body_symbol = function
  | Property_command_body_symbol_t.Property_command_body_title_symbol _ -> true
  | _ -> false
;;

let is_property_command_body_trace_symbol_off_property_command_body_symbol = function
  | Property_command_body_symbol_t.Property_command_body_trace_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_property_command_body_debug_constructor sym_pcb =
  if not (is_property_command_body_debug_symbol_off_property_command_body_symbol sym_pcb)
  then false
  else
    begin
      let sym_pbd = property_command_body_debug_symbol_off_property_command_body_symbol sym_pcb in
      Property_command_body_debug_symbol_v.is_property_command_body_debug_constructor sym_pbd
    end
;;

let is_property_command_body_set_constructor sym_pcb =
  if not (is_property_command_body_set_symbol_off_property_command_body_symbol sym_pcb)
  then false
  else
    begin
      let sym_pbs = property_command_body_set_symbol_off_property_command_body_symbol sym_pcb in
      Property_command_body_set_symbol_v.is_property_command_body_set_constructor sym_pbs
    end
;;

let is_property_command_body_title_constructor sym_pcb =
  if not (is_property_command_body_title_symbol_off_property_command_body_symbol sym_pcb)
  then false
  else
    begin
      let sym_pbt = property_command_body_title_symbol_off_property_command_body_symbol sym_pcb in
      Property_command_body_title_symbol_v.is_property_command_body_title_constructor sym_pbt
    end
;;

let is_property_command_body_trace_constructor sym_pcb =
  if not (is_property_command_body_trace_symbol_off_property_command_body_symbol sym_pcb)
  then false
  else
    begin
      let sym_pbt = property_command_body_trace_symbol_off_property_command_body_symbol sym_pcb in
      Property_command_body_trace_symbol_v.is_property_command_body_trace_constructor sym_pbt
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let property_command_body_symbol_of_property_command_body_debug_symbol sym_pbd = 
  Property_command_body_symbol_t.Property_command_body_debug_symbol sym_pbd
;;

let property_command_body_symbol_of_property_command_body_set_symbol sym_pbs = 
  Property_command_body_symbol_t.Property_command_body_set_symbol sym_pbs
;;

let property_command_body_symbol_of_property_command_body_title_symbol sym_pbt = 
  Property_command_body_symbol_t.Property_command_body_title_symbol sym_pbt
;;

let property_command_body_symbol_of_property_command_body_trace_symbol sym_pbt = 
  Property_command_body_symbol_t.Property_command_body_trace_symbol sym_pbt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let property_command_body_debug_constructor s = property_command_body_symbol_of_property_command_body_debug_symbol (Property_command_body_debug_symbol_v.property_command_body_debug_constructor s);;

let property_command_body_set_constructor s = property_command_body_symbol_of_property_command_body_set_symbol (Property_command_body_set_symbol_v.property_command_body_set_constructor s);;

let property_command_body_title_constructor s = property_command_body_symbol_of_property_command_body_title_symbol (Property_command_body_title_symbol_v.property_command_body_title_constructor s);;

let property_command_body_trace_constructor s = property_command_body_symbol_of_property_command_body_trace_symbol (Property_command_body_trace_symbol_v.property_command_body_trace_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Property_command_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Property_command_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try property_command_body_symbol_of_property_command_body_debug_symbol
      (Property_command_body_debug_symbol_v.make nam s)
  with Failure "Not_a_property_command_body_debug_symbol:Property_command_body_debug_symbol_v.ml:make" ->
  try property_command_body_symbol_of_property_command_body_set_symbol
      (Property_command_body_set_symbol_v.make nam s)
  with Failure "Not_a_property_command_body_set_symbol:Property_command_body_set_symbol_v.ml:make" ->
  try property_command_body_symbol_of_property_command_body_title_symbol
      (Property_command_body_title_symbol_v.make nam s)
  with Failure "Not_a_property_command_body_title_symbol:Property_command_body_title_symbol_v.ml:make" ->
  try property_command_body_symbol_of_property_command_body_trace_symbol
      (Property_command_body_trace_symbol_v.make nam s)
  with Failure "Not_a_property_command_body_trace_symbol:Property_command_body_trace_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Property_command_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Property_command_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Property_command_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Property_command_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Property_command_body subtype" nam s)
      "it does not exists"
      "Check file Property_command_body_symbol_v.ml"
    in
    failwith "Not_a_property_command_body_symbol:Property_command_body_symbol_v.ml:make"
;;


(** Property_command_body_symbol_v at 10:48:20 on 19 Mar 2017. created by version v2.4 of generator *)



