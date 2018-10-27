(** {3 Parameter_context_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Parameter_context_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Parameter_context_symbol_t.Parameter_context_database_symbol sym_pcd ->
    Parameter_context_database_symbol_v.name sym_pcd
  | Parameter_context_symbol_t.Parameter_context_databox_symbol sym_pcd ->
    Parameter_context_databox_symbol_v.name sym_pcd
  | Parameter_context_symbol_t.Parameter_context_domain_symbol sym_pcd ->
    Parameter_context_domain_symbol_v.name sym_pcd
  | Parameter_context_symbol_t.Parameter_context_sector_symbol sym_pcs ->
    Parameter_context_sector_symbol_v.name sym_pcs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Parameter_context_symbol_t.Parameter_context_database_symbol sym_pcd ->
  Parameter_context_database_symbol_v.string_off sym_pcd
  | Parameter_context_symbol_t.Parameter_context_databox_symbol sym_pcd ->
  Parameter_context_databox_symbol_v.string_off sym_pcd
  | Parameter_context_symbol_t.Parameter_context_domain_symbol sym_pcd ->
  Parameter_context_domain_symbol_v.string_off sym_pcd
  | Parameter_context_symbol_t.Parameter_context_sector_symbol sym_pcs ->
  Parameter_context_sector_symbol_v.string_off sym_pcs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_pco =
  Format.sprintf "Parameter_context_symbol_t.%s" (String.capitalize (name sym_pco))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_pco =
  Format.sprintf "%s \"%s\"" (longname sym_pco) (string_off sym_pco)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let parameter_context_database_symbol_off_parameter_context_symbol = function
  | Parameter_context_symbol_t.Parameter_context_database_symbol sym_pcd -> sym_pcd
  | sym_pco -> Error_messages_v.print_fatal_error
      nam_cod "parameter_context_database_symbol_off_parameter_context_symbol"
      "Parameter_context_database_symbol"
      (name sym_pco) "check"
;;

let parameter_context_databox_symbol_off_parameter_context_symbol = function
  | Parameter_context_symbol_t.Parameter_context_databox_symbol sym_pcd -> sym_pcd
  | sym_pco -> Error_messages_v.print_fatal_error
      nam_cod "parameter_context_databox_symbol_off_parameter_context_symbol"
      "Parameter_context_databox_symbol"
      (name sym_pco) "check"
;;

let parameter_context_domain_symbol_off_parameter_context_symbol = function
  | Parameter_context_symbol_t.Parameter_context_domain_symbol sym_pcd -> sym_pcd
  | sym_pco -> Error_messages_v.print_fatal_error
      nam_cod "parameter_context_domain_symbol_off_parameter_context_symbol"
      "Parameter_context_domain_symbol"
      (name sym_pco) "check"
;;

let parameter_context_sector_symbol_off_parameter_context_symbol = function
  | Parameter_context_symbol_t.Parameter_context_sector_symbol sym_pcs -> sym_pcs
  | sym_pco -> Error_messages_v.print_fatal_error
      nam_cod "parameter_context_sector_symbol_off_parameter_context_symbol"
      "Parameter_context_sector_symbol"
      (name sym_pco) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_parameter_context_database_symbol_off_parameter_context_symbol = function
  | Parameter_context_symbol_t.Parameter_context_database_symbol _ -> true
  | _ -> false
;;

let is_parameter_context_databox_symbol_off_parameter_context_symbol = function
  | Parameter_context_symbol_t.Parameter_context_databox_symbol _ -> true
  | _ -> false
;;

let is_parameter_context_domain_symbol_off_parameter_context_symbol = function
  | Parameter_context_symbol_t.Parameter_context_domain_symbol _ -> true
  | _ -> false
;;

let is_parameter_context_sector_symbol_off_parameter_context_symbol = function
  | Parameter_context_symbol_t.Parameter_context_sector_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_parameter_context_database_constructor sym_pco =
  if not (is_parameter_context_database_symbol_off_parameter_context_symbol sym_pco)
  then false
  else
    begin
      let sym_pcd = parameter_context_database_symbol_off_parameter_context_symbol sym_pco in
      Parameter_context_database_symbol_v.is_parameter_context_database_constructor sym_pcd
    end
;;

let is_parameter_context_databox_constructor sym_pco =
  if not (is_parameter_context_databox_symbol_off_parameter_context_symbol sym_pco)
  then false
  else
    begin
      let sym_pcd = parameter_context_databox_symbol_off_parameter_context_symbol sym_pco in
      Parameter_context_databox_symbol_v.is_parameter_context_databox_constructor sym_pcd
    end
;;

let is_parameter_context_domain_constructor sym_pco =
  if not (is_parameter_context_domain_symbol_off_parameter_context_symbol sym_pco)
  then false
  else
    begin
      let sym_pcd = parameter_context_domain_symbol_off_parameter_context_symbol sym_pco in
      Parameter_context_domain_symbol_v.is_parameter_context_domain_constructor sym_pcd
    end
;;

let is_parameter_context_sector_constructor sym_pco =
  if not (is_parameter_context_sector_symbol_off_parameter_context_symbol sym_pco)
  then false
  else
    begin
      let sym_pcs = parameter_context_sector_symbol_off_parameter_context_symbol sym_pco in
      Parameter_context_sector_symbol_v.is_parameter_context_sector_constructor sym_pcs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let parameter_context_symbol_of_parameter_context_database_symbol sym_pcd = 
  Parameter_context_symbol_t.Parameter_context_database_symbol sym_pcd
;;

let parameter_context_symbol_of_parameter_context_databox_symbol sym_pcd = 
  Parameter_context_symbol_t.Parameter_context_databox_symbol sym_pcd
;;

let parameter_context_symbol_of_parameter_context_domain_symbol sym_pcd = 
  Parameter_context_symbol_t.Parameter_context_domain_symbol sym_pcd
;;

let parameter_context_symbol_of_parameter_context_sector_symbol sym_pcs = 
  Parameter_context_symbol_t.Parameter_context_sector_symbol sym_pcs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let parameter_context_database_constructor s = parameter_context_symbol_of_parameter_context_database_symbol (Parameter_context_database_symbol_v.parameter_context_database_constructor s);;

let parameter_context_databox_constructor s = parameter_context_symbol_of_parameter_context_databox_symbol (Parameter_context_databox_symbol_v.parameter_context_databox_constructor s);;

let parameter_context_domain_constructor s = parameter_context_symbol_of_parameter_context_domain_symbol (Parameter_context_domain_symbol_v.parameter_context_domain_constructor s);;

let parameter_context_sector_constructor s = parameter_context_symbol_of_parameter_context_sector_symbol (Parameter_context_sector_symbol_v.parameter_context_sector_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Parameter_context_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Parameter_context_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try parameter_context_symbol_of_parameter_context_database_symbol
      (Parameter_context_database_symbol_v.make nam s)
  with Failure "Not_a_parameter_context_database_symbol:Parameter_context_database_symbol_v.ml:make" ->
  try parameter_context_symbol_of_parameter_context_databox_symbol
      (Parameter_context_databox_symbol_v.make nam s)
  with Failure "Not_a_parameter_context_databox_symbol:Parameter_context_databox_symbol_v.ml:make" ->
  try parameter_context_symbol_of_parameter_context_domain_symbol
      (Parameter_context_domain_symbol_v.make nam s)
  with Failure "Not_a_parameter_context_domain_symbol:Parameter_context_domain_symbol_v.ml:make" ->
  try parameter_context_symbol_of_parameter_context_sector_symbol
      (Parameter_context_sector_symbol_v.make nam s)
  with Failure "Not_a_parameter_context_sector_symbol:Parameter_context_sector_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Parameter_context_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Parameter_context_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Parameter_context_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Parameter_context_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Parameter_context subtype" nam s)
      "it does not exists"
      "Check file Parameter_context_symbol_v.ml"
    in
    failwith "Not_a_parameter_context_symbol:Parameter_context_symbol_v.ml:make"
;;


(** Parameter_context_symbol_v at 16:28:38 on 2 Dec 2016. created by version v2.4 of generator *)



