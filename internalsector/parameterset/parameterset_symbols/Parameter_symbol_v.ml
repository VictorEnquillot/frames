(** {3 Parameter_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Parameter_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Parameter_symbol_t.Parameter_context_symbol sym_pco ->
      Parameter_context_symbol_v.name sym_pco
  | Parameter_symbol_t.Parameter_set_symbol sym_pse ->
      Parameter_set_symbol_v.name sym_pse
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Parameter_symbol_t.Parameter_context_symbol sym_pco ->
  Parameter_context_symbol_v.string_off sym_pco
  | Parameter_symbol_t.Parameter_set_symbol sym_pse ->
  Parameter_set_symbol_v.string_off sym_pse
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_par =
  Format.sprintf "Parameter_symbol_t.%s" (String.capitalize (name sym_par))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_par =
  Format.sprintf "%s \"%s\"" (longname sym_par) (string_off sym_par)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let parameter_context_symbol_off_parameter_symbol = function
  | Parameter_symbol_t.Parameter_context_symbol sym_pco -> sym_pco
  | sym_par -> Error_messages_v.print_fatal_error
      nam_cod "parameter_context_symbol_off_parameter_symbol"
      "Parameter_context_symbol"
      (name sym_par) "check"
;;

let parameter_set_symbol_off_parameter_symbol = function
  | Parameter_symbol_t.Parameter_set_symbol sym_pse -> sym_pse
  | sym_par -> Error_messages_v.print_fatal_error
      nam_cod "parameter_set_symbol_off_parameter_symbol"
      "Parameter_set_symbol"
      (name sym_par) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let parameter_context_database_symbol_off_parameter_symbol sym_par = 
  let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
    Parameter_context_symbol_v.parameter_context_database_symbol_off_parameter_context_symbol sym_pco
;;

let parameter_context_databox_symbol_off_parameter_symbol sym_par = 
  let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
    Parameter_context_symbol_v.parameter_context_databox_symbol_off_parameter_context_symbol sym_pco
;;

let parameter_context_domain_symbol_off_parameter_symbol sym_par = 
  let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
    Parameter_context_symbol_v.parameter_context_domain_symbol_off_parameter_context_symbol sym_pco
;;

let parameter_context_sector_symbol_off_parameter_symbol sym_par = 
  let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
    Parameter_context_symbol_v.parameter_context_sector_symbol_off_parameter_context_symbol sym_pco
;;

let parameter_set_body_symbol_off_parameter_symbol sym_par = 
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
    Parameter_set_symbol_v.parameter_set_body_symbol_off_parameter_set_symbol sym_pse
;;

let parameter_set_body_tuple_symbol_off_parameter_symbol sym_par = 
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
    Parameter_set_symbol_v.parameter_set_body_tuple_symbol_off_parameter_set_symbol sym_pse
;;

let parameter_set_body_tuple_aopef_symbol_off_parameter_symbol sym_par = 
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
    Parameter_set_symbol_v.parameter_set_body_tuple_aopef_symbol_off_parameter_set_symbol sym_pse
;;

let parameter_set_body_tuple_ecppef_symbol_off_parameter_symbol sym_par = 
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
    Parameter_set_symbol_v.parameter_set_body_tuple_ecppef_symbol_off_parameter_set_symbol sym_pse
;;

let parameter_set_fence_symbol_off_parameter_symbol sym_par = 
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
    Parameter_set_symbol_v.parameter_set_fence_symbol_off_parameter_set_symbol sym_pse
;;

let parameter_set_fence_aopef_symbol_off_parameter_symbol sym_par = 
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
    Parameter_set_symbol_v.parameter_set_fence_aopef_symbol_off_parameter_set_symbol sym_pse
;;

let parameter_set_fence_aopef_coefficient_symbol_off_parameter_symbol sym_par = 
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
    Parameter_set_symbol_v.parameter_set_fence_aopef_coefficient_symbol_off_parameter_set_symbol sym_pse
;;

let parameter_set_fence_aopef_exponent_symbol_off_parameter_symbol sym_par = 
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
    Parameter_set_symbol_v.parameter_set_fence_aopef_exponent_symbol_off_parameter_set_symbol sym_pse
;;

let parameter_set_fence_ecppef_symbol_off_parameter_symbol sym_par = 
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
    Parameter_set_symbol_v.parameter_set_fence_ecppef_symbol_off_parameter_set_symbol sym_pse
;;

let parameter_set_fence_ecppef_coefficient_symbol_off_parameter_symbol sym_par = 
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
    Parameter_set_symbol_v.parameter_set_fence_ecppef_coefficient_symbol_off_parameter_set_symbol sym_pse
;;

let parameter_set_fence_ecppef_exponent_symbol_off_parameter_symbol sym_par = 
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
    Parameter_set_symbol_v.parameter_set_fence_ecppef_exponent_symbol_off_parameter_set_symbol sym_pse
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_parameter_context_symbol_off_parameter_symbol = function
  | Parameter_symbol_t.Parameter_context_symbol _ -> true
  | _ -> false
;;

let is_parameter_set_symbol_off_parameter_symbol = function
  | Parameter_symbol_t.Parameter_set_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_parameter_context_database_constructor sym_par =
  if not (is_parameter_context_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
      let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
      Parameter_context_symbol_v.is_parameter_context_database_constructor sym_pco
    end
;;

let is_parameter_context_databox_constructor sym_par =
  if not (is_parameter_context_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
      let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
      Parameter_context_symbol_v.is_parameter_context_databox_constructor sym_pco
    end
;;

let is_parameter_context_domain_constructor sym_par =
  if not (is_parameter_context_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
      let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
      Parameter_context_symbol_v.is_parameter_context_domain_constructor sym_pco
    end
;;

let is_parameter_context_sector_constructor sym_par =
  if not (is_parameter_context_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
      let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
      Parameter_context_symbol_v.is_parameter_context_sector_constructor sym_pco
    end
;;

let is_parameter_set_body_tuple_aopef_constructor sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
      let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
      Parameter_set_symbol_v.is_parameter_set_body_tuple_aopef_constructor sym_pse
    end
;;

let is_parameter_set_body_tuple_ecppef_constructor sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
      let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
      Parameter_set_symbol_v.is_parameter_set_body_tuple_ecppef_constructor sym_pse
    end
;;

let is_parameter_set_fence_aopef_coefficient_constructor sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
      let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
      Parameter_set_symbol_v.is_parameter_set_fence_aopef_coefficient_constructor sym_pse
    end
;;

let is_parameter_set_fence_aopef_exponent_constructor sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
      let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
      Parameter_set_symbol_v.is_parameter_set_fence_aopef_exponent_constructor sym_pse
    end
;;

let is_parameter_set_fence_ecppef_coefficient_constructor sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
      let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
      Parameter_set_symbol_v.is_parameter_set_fence_ecppef_coefficient_constructor sym_pse
    end
;;

let is_parameter_set_fence_ecppef_exponent_constructor sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
      let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
      Parameter_set_symbol_v.is_parameter_set_fence_ecppef_exponent_constructor sym_pse
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_parameter_context_database_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_context_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
  Parameter_context_symbol_v.is_parameter_context_database_symbol_off_parameter_context_symbol sym_pco
    end
;;

let is_parameter_context_databox_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_context_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
  Parameter_context_symbol_v.is_parameter_context_databox_symbol_off_parameter_context_symbol sym_pco
    end
;;

let is_parameter_context_domain_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_context_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
  Parameter_context_symbol_v.is_parameter_context_domain_symbol_off_parameter_context_symbol sym_pco
    end
;;

let is_parameter_context_sector_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_context_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pco = parameter_context_symbol_off_parameter_symbol sym_par in
  Parameter_context_symbol_v.is_parameter_context_sector_symbol_off_parameter_context_symbol sym_pco
    end
;;

let is_parameter_set_body_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
  Parameter_set_symbol_v.is_parameter_set_body_symbol_off_parameter_set_symbol sym_pse
    end
;;

let is_parameter_set_body_tuple_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
  Parameter_set_symbol_v.is_parameter_set_body_tuple_symbol_off_parameter_set_symbol sym_pse
    end
;;

let is_parameter_set_body_tuple_aopef_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
  Parameter_set_symbol_v.is_parameter_set_body_tuple_aopef_symbol_off_parameter_set_symbol sym_pse
    end
;;

let is_parameter_set_body_tuple_ecppef_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
  Parameter_set_symbol_v.is_parameter_set_body_tuple_ecppef_symbol_off_parameter_set_symbol sym_pse
    end
;;

let is_parameter_set_fence_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
  Parameter_set_symbol_v.is_parameter_set_fence_symbol_off_parameter_set_symbol sym_pse
    end
;;

let is_parameter_set_fence_aopef_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
  Parameter_set_symbol_v.is_parameter_set_fence_aopef_symbol_off_parameter_set_symbol sym_pse
    end
;;

let is_parameter_set_fence_aopef_coefficient_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
  Parameter_set_symbol_v.is_parameter_set_fence_aopef_coefficient_symbol_off_parameter_set_symbol sym_pse
    end
;;

let is_parameter_set_fence_aopef_exponent_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
  Parameter_set_symbol_v.is_parameter_set_fence_aopef_exponent_symbol_off_parameter_set_symbol sym_pse
    end
;;

let is_parameter_set_fence_ecppef_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
  Parameter_set_symbol_v.is_parameter_set_fence_ecppef_symbol_off_parameter_set_symbol sym_pse
    end
;;

let is_parameter_set_fence_ecppef_coefficient_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
  Parameter_set_symbol_v.is_parameter_set_fence_ecppef_coefficient_symbol_off_parameter_set_symbol sym_pse
    end
;;

let is_parameter_set_fence_ecppef_exponent_symbol_off_parameter_symbol sym_par =
  if not (is_parameter_set_symbol_off_parameter_symbol sym_par)
  then false
  else
    begin
  let sym_pse = parameter_set_symbol_off_parameter_symbol sym_par in
  Parameter_set_symbol_v.is_parameter_set_fence_ecppef_exponent_symbol_off_parameter_set_symbol sym_pse
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let parameter_symbol_of_parameter_context_symbol sym_pco = 
  Parameter_symbol_t.Parameter_context_symbol sym_pco
;;

let parameter_symbol_of_parameter_set_symbol sym_pse = 
  Parameter_symbol_t.Parameter_set_symbol sym_pse
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let parameter_symbol_of_parameter_context_database_symbol sym_pcd = 
  let sym_pco = Parameter_context_symbol_v.parameter_context_symbol_of_parameter_context_database_symbol sym_pcd in
    parameter_symbol_of_parameter_context_symbol sym_pco
;;

let parameter_symbol_of_parameter_context_databox_symbol sym_pcd = 
  let sym_pco = Parameter_context_symbol_v.parameter_context_symbol_of_parameter_context_databox_symbol sym_pcd in
    parameter_symbol_of_parameter_context_symbol sym_pco
;;

let parameter_symbol_of_parameter_context_domain_symbol sym_pcd = 
  let sym_pco = Parameter_context_symbol_v.parameter_context_symbol_of_parameter_context_domain_symbol sym_pcd in
    parameter_symbol_of_parameter_context_symbol sym_pco
;;

let parameter_symbol_of_parameter_context_sector_symbol sym_pcs = 
  let sym_pco = Parameter_context_symbol_v.parameter_context_symbol_of_parameter_context_sector_symbol sym_pcs in
    parameter_symbol_of_parameter_context_symbol sym_pco
;;

let parameter_symbol_of_parameter_set_body_symbol sym_psb = 
  let sym_pse = Parameter_set_symbol_v.parameter_set_symbol_of_parameter_set_body_symbol sym_psb in
    parameter_symbol_of_parameter_set_symbol sym_pse
;;

let parameter_symbol_of_parameter_set_body_tuple_symbol sym_pbt = 
  let sym_pse = Parameter_set_symbol_v.parameter_set_symbol_of_parameter_set_body_tuple_symbol sym_pbt in
    parameter_symbol_of_parameter_set_symbol sym_pse
;;

let parameter_symbol_of_parameter_set_body_tuple_aopef_symbol sym_pta = 
  let sym_pse = Parameter_set_symbol_v.parameter_set_symbol_of_parameter_set_body_tuple_aopef_symbol sym_pta in
    parameter_symbol_of_parameter_set_symbol sym_pse
;;

let parameter_symbol_of_parameter_set_body_tuple_ecppef_symbol sym_pte = 
  let sym_pse = Parameter_set_symbol_v.parameter_set_symbol_of_parameter_set_body_tuple_ecppef_symbol sym_pte in
    parameter_symbol_of_parameter_set_symbol sym_pse
;;

let parameter_symbol_of_parameter_set_fence_symbol sym_psf = 
  let sym_pse = Parameter_set_symbol_v.parameter_set_symbol_of_parameter_set_fence_symbol sym_psf in
    parameter_symbol_of_parameter_set_symbol sym_pse
;;

let parameter_symbol_of_parameter_set_fence_aopef_symbol sym_pfa = 
  let sym_pse = Parameter_set_symbol_v.parameter_set_symbol_of_parameter_set_fence_aopef_symbol sym_pfa in
    parameter_symbol_of_parameter_set_symbol sym_pse
;;

let parameter_symbol_of_parameter_set_fence_aopef_coefficient_symbol sym_pac = 
  let sym_pse = Parameter_set_symbol_v.parameter_set_symbol_of_parameter_set_fence_aopef_coefficient_symbol sym_pac in
    parameter_symbol_of_parameter_set_symbol sym_pse
;;

let parameter_symbol_of_parameter_set_fence_aopef_exponent_symbol sym_pae = 
  let sym_pse = Parameter_set_symbol_v.parameter_set_symbol_of_parameter_set_fence_aopef_exponent_symbol sym_pae in
    parameter_symbol_of_parameter_set_symbol sym_pse
;;

let parameter_symbol_of_parameter_set_fence_ecppef_symbol sym_pfe = 
  let sym_pse = Parameter_set_symbol_v.parameter_set_symbol_of_parameter_set_fence_ecppef_symbol sym_pfe in
    parameter_symbol_of_parameter_set_symbol sym_pse
;;

let parameter_symbol_of_parameter_set_fence_ecppef_coefficient_symbol sym_pec = 
  let sym_pse = Parameter_set_symbol_v.parameter_set_symbol_of_parameter_set_fence_ecppef_coefficient_symbol sym_pec in
    parameter_symbol_of_parameter_set_symbol sym_pse
;;

let parameter_symbol_of_parameter_set_fence_ecppef_exponent_symbol sym_pee = 
  let sym_pse = Parameter_set_symbol_v.parameter_set_symbol_of_parameter_set_fence_ecppef_exponent_symbol sym_pee in
    parameter_symbol_of_parameter_set_symbol sym_pse
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let parameter_context_database_constructor s = parameter_symbol_of_parameter_context_symbol (Parameter_context_symbol_v.parameter_context_database_constructor s);;

let parameter_context_databox_constructor s = parameter_symbol_of_parameter_context_symbol (Parameter_context_symbol_v.parameter_context_databox_constructor s);;

let parameter_context_domain_constructor s = parameter_symbol_of_parameter_context_symbol (Parameter_context_symbol_v.parameter_context_domain_constructor s);;

let parameter_context_sector_constructor s = parameter_symbol_of_parameter_context_symbol (Parameter_context_symbol_v.parameter_context_sector_constructor s);;

let parameter_set_body_tuple_aopef_constructor s = parameter_symbol_of_parameter_set_symbol (Parameter_set_symbol_v.parameter_set_body_tuple_aopef_constructor s);;

let parameter_set_body_tuple_ecppef_constructor s = parameter_symbol_of_parameter_set_symbol (Parameter_set_symbol_v.parameter_set_body_tuple_ecppef_constructor s);;

let parameter_set_fence_aopef_coefficient_constructor s = parameter_symbol_of_parameter_set_symbol (Parameter_set_symbol_v.parameter_set_fence_aopef_coefficient_constructor s);;

let parameter_set_fence_aopef_exponent_constructor s = parameter_symbol_of_parameter_set_symbol (Parameter_set_symbol_v.parameter_set_fence_aopef_exponent_constructor s);;

let parameter_set_fence_ecppef_coefficient_constructor s = parameter_symbol_of_parameter_set_symbol (Parameter_set_symbol_v.parameter_set_fence_ecppef_coefficient_constructor s);;

let parameter_set_fence_ecppef_exponent_constructor s = parameter_symbol_of_parameter_set_symbol (Parameter_set_symbol_v.parameter_set_fence_ecppef_exponent_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Parameter_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Parameter_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try parameter_symbol_of_parameter_context_symbol
      (Parameter_context_symbol_v.make nam s)
  with Failure "Not_a_parameter_context_symbol:Parameter_context_symbol_v.ml:make" ->
  try parameter_symbol_of_parameter_set_symbol
      (Parameter_set_symbol_v.make nam s)
  with Failure "Not_a_parameter_set_symbol:Parameter_set_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Parameter_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Parameter_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Parameter_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Parameter_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Parameter subtype" nam s)
      "it does not exists"
      "Check file Parameter_symbol_v.ml"
    in
    failwith "Not_a_parameter_symbol:Parameter_symbol_v.ml:make"
;;


(** Parameter_symbol_v at 16:28:38 on 2 Dec 2016. created by version v2.4 of generator *)



