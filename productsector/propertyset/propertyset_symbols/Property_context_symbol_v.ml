(** {3 Property_context_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Property_context_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Property_context_symbol_t.Property_context_domain_symbol sym_pcd ->
    Property_context_domain_symbol_v.name sym_pcd
  | Property_context_symbol_t.Property_context_inputbase_symbol sym_pci ->
    Property_context_inputbase_symbol_v.name sym_pci
  | Property_context_symbol_t.Property_context_inputbox_symbol sym_pci ->
    Property_context_inputbox_symbol_v.name sym_pci
  | Property_context_symbol_t.Property_context_sector_symbol sym_pcs ->
    Property_context_sector_symbol_v.name sym_pcs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Property_context_symbol_t.Property_context_domain_symbol sym_pcd ->
  Property_context_domain_symbol_v.string_off sym_pcd
  | Property_context_symbol_t.Property_context_inputbase_symbol sym_pci ->
  Property_context_inputbase_symbol_v.string_off sym_pci
  | Property_context_symbol_t.Property_context_inputbox_symbol sym_pci ->
  Property_context_inputbox_symbol_v.string_off sym_pci
  | Property_context_symbol_t.Property_context_sector_symbol sym_pcs ->
  Property_context_sector_symbol_v.string_off sym_pcs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_pco =
  Format.sprintf "Property_context_symbol_t.%s" (String.capitalize (name sym_pco))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_pco =
  Format.sprintf "%s \"%s\"" (longname sym_pco) (string_off sym_pco)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let property_context_domain_symbol_off_property_context_symbol = function
  | Property_context_symbol_t.Property_context_domain_symbol sym_pcd -> sym_pcd
  | sym_pco -> Error_messages_v.print_fatal_error
      nam_cod "property_context_domain_symbol_off_property_context_symbol"
      "Property_context_domain_symbol"
      (name sym_pco) "check"
;;

let property_context_inputbase_symbol_off_property_context_symbol = function
  | Property_context_symbol_t.Property_context_inputbase_symbol sym_pci -> sym_pci
  | sym_pco -> Error_messages_v.print_fatal_error
      nam_cod "property_context_inputbase_symbol_off_property_context_symbol"
      "Property_context_inputbase_symbol"
      (name sym_pco) "check"
;;

let property_context_inputbox_symbol_off_property_context_symbol = function
  | Property_context_symbol_t.Property_context_inputbox_symbol sym_pci -> sym_pci
  | sym_pco -> Error_messages_v.print_fatal_error
      nam_cod "property_context_inputbox_symbol_off_property_context_symbol"
      "Property_context_inputbox_symbol"
      (name sym_pco) "check"
;;

let property_context_sector_symbol_off_property_context_symbol = function
  | Property_context_symbol_t.Property_context_sector_symbol sym_pcs -> sym_pcs
  | sym_pco -> Error_messages_v.print_fatal_error
      nam_cod "property_context_sector_symbol_off_property_context_symbol"
      "Property_context_sector_symbol"
      (name sym_pco) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_property_context_domain_symbol_off_property_context_symbol = function
  | Property_context_symbol_t.Property_context_domain_symbol _ -> true
  | _ -> false
;;

let is_property_context_inputbase_symbol_off_property_context_symbol = function
  | Property_context_symbol_t.Property_context_inputbase_symbol _ -> true
  | _ -> false
;;

let is_property_context_inputbox_symbol_off_property_context_symbol = function
  | Property_context_symbol_t.Property_context_inputbox_symbol _ -> true
  | _ -> false
;;

let is_property_context_sector_symbol_off_property_context_symbol = function
  | Property_context_symbol_t.Property_context_sector_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_property_context_domain_constructor sym_pco =
  if not (is_property_context_domain_symbol_off_property_context_symbol sym_pco)
  then false
  else
    begin
      let sym_pcd = property_context_domain_symbol_off_property_context_symbol sym_pco in
      Property_context_domain_symbol_v.is_property_context_domain_constructor sym_pcd
    end
;;

let is_property_context_inputbase_constructor sym_pco =
  if not (is_property_context_inputbase_symbol_off_property_context_symbol sym_pco)
  then false
  else
    begin
      let sym_pci = property_context_inputbase_symbol_off_property_context_symbol sym_pco in
      Property_context_inputbase_symbol_v.is_property_context_inputbase_constructor sym_pci
    end
;;

let is_property_context_inputbox_constructor sym_pco =
  if not (is_property_context_inputbox_symbol_off_property_context_symbol sym_pco)
  then false
  else
    begin
      let sym_pci = property_context_inputbox_symbol_off_property_context_symbol sym_pco in
      Property_context_inputbox_symbol_v.is_property_context_inputbox_constructor sym_pci
    end
;;

let is_property_context_sector_constructor sym_pco =
  if not (is_property_context_sector_symbol_off_property_context_symbol sym_pco)
  then false
  else
    begin
      let sym_pcs = property_context_sector_symbol_off_property_context_symbol sym_pco in
      Property_context_sector_symbol_v.is_property_context_sector_constructor sym_pcs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let property_context_symbol_of_property_context_domain_symbol sym_pcd = 
  Property_context_symbol_t.Property_context_domain_symbol sym_pcd
;;

let property_context_symbol_of_property_context_inputbase_symbol sym_pci = 
  Property_context_symbol_t.Property_context_inputbase_symbol sym_pci
;;

let property_context_symbol_of_property_context_inputbox_symbol sym_pci = 
  Property_context_symbol_t.Property_context_inputbox_symbol sym_pci
;;

let property_context_symbol_of_property_context_sector_symbol sym_pcs = 
  Property_context_symbol_t.Property_context_sector_symbol sym_pcs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let property_context_domain_constructor s = property_context_symbol_of_property_context_domain_symbol (Property_context_domain_symbol_v.property_context_domain_constructor s);;

let property_context_inputbase_constructor s = property_context_symbol_of_property_context_inputbase_symbol (Property_context_inputbase_symbol_v.property_context_inputbase_constructor s);;

let property_context_inputbox_constructor s = property_context_symbol_of_property_context_inputbox_symbol (Property_context_inputbox_symbol_v.property_context_inputbox_constructor s);;

let property_context_sector_constructor s = property_context_symbol_of_property_context_sector_symbol (Property_context_sector_symbol_v.property_context_sector_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Property_context_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Property_context_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try property_context_symbol_of_property_context_domain_symbol
      (Property_context_domain_symbol_v.make nam s)
  with Failure "Not_a_property_context_domain_symbol:Property_context_domain_symbol_v.ml:make" ->
  try property_context_symbol_of_property_context_inputbase_symbol
      (Property_context_inputbase_symbol_v.make nam s)
  with Failure "Not_a_property_context_inputbase_symbol:Property_context_inputbase_symbol_v.ml:make" ->
  try property_context_symbol_of_property_context_inputbox_symbol
      (Property_context_inputbox_symbol_v.make nam s)
  with Failure "Not_a_property_context_inputbox_symbol:Property_context_inputbox_symbol_v.ml:make" ->
  try property_context_symbol_of_property_context_sector_symbol
      (Property_context_sector_symbol_v.make nam s)
  with Failure "Not_a_property_context_sector_symbol:Property_context_sector_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Property_context_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Property_context_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Property_context_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Property_context_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Property_context subtype" nam s)
      "it does not exists"
      "Check file Property_context_symbol_v.ml"
    in
    failwith "Not_a_property_context_symbol:Property_context_symbol_v.ml:make"
;;


(** Property_context_symbol_v at 10:48:20 on 19 Mar 2017. created by version v2.4 of generator *)



