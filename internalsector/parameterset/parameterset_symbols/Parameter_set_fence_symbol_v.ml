(** {3 Parameter_set_fence_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Parameter_set_fence_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol sym_pfa ->
    Parameter_set_fence_aopef_symbol_v.name sym_pfa
  | Parameter_set_fence_symbol_t.Parameter_set_fence_ecppef_symbol sym_pfe ->
    Parameter_set_fence_ecppef_symbol_v.name sym_pfe
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol sym_pfa ->
  Parameter_set_fence_aopef_symbol_v.string_off sym_pfa
  | Parameter_set_fence_symbol_t.Parameter_set_fence_ecppef_symbol sym_pfe ->
  Parameter_set_fence_ecppef_symbol_v.string_off sym_pfe
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_psf =
  Format.sprintf "Parameter_set_fence_symbol_t.%s" (String.capitalize (name sym_psf))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_psf =
  Format.sprintf "%s \"%s\"" (longname sym_psf) (string_off sym_psf)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol = function
  | Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol sym_pfa -> sym_pfa
  | sym_psf -> Error_messages_v.print_fatal_error
      nam_cod "parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol"
      "Parameter_set_fence_aopef_symbol"
      (name sym_psf) "check"
;;

let parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol = function
  | Parameter_set_fence_symbol_t.Parameter_set_fence_ecppef_symbol sym_pfe -> sym_pfe
  | sym_psf -> Error_messages_v.print_fatal_error
      nam_cod "parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol"
      "Parameter_set_fence_ecppef_symbol"
      (name sym_psf) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let parameter_set_fence_aopef_coefficient_symbol_off_parameter_set_fence_symbol sym_psf = 
  let sym_pfa = parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol sym_psf in
    Parameter_set_fence_aopef_symbol_v.parameter_set_fence_aopef_coefficient_symbol_off_parameter_set_fence_aopef_symbol sym_pfa
;;

let parameter_set_fence_aopef_exponent_symbol_off_parameter_set_fence_symbol sym_psf = 
  let sym_pfa = parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol sym_psf in
    Parameter_set_fence_aopef_symbol_v.parameter_set_fence_aopef_exponent_symbol_off_parameter_set_fence_aopef_symbol sym_pfa
;;

let parameter_set_fence_ecppef_coefficient_symbol_off_parameter_set_fence_symbol sym_psf = 
  let sym_pfe = parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol sym_psf in
    Parameter_set_fence_ecppef_symbol_v.parameter_set_fence_ecppef_coefficient_symbol_off_parameter_set_fence_ecppef_symbol sym_pfe
;;

let parameter_set_fence_ecppef_exponent_symbol_off_parameter_set_fence_symbol sym_psf = 
  let sym_pfe = parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol sym_psf in
    Parameter_set_fence_ecppef_symbol_v.parameter_set_fence_ecppef_exponent_symbol_off_parameter_set_fence_ecppef_symbol sym_pfe
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol = function
  | Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol _ -> true
  | _ -> false
;;

let is_parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol = function
  | Parameter_set_fence_symbol_t.Parameter_set_fence_ecppef_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_parameter_set_fence_aopef_coefficient_constructor sym_psf =
  if not (is_parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol sym_psf)
  then false
  else
    begin
      let sym_pfa = parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol sym_psf in
      Parameter_set_fence_aopef_symbol_v.is_parameter_set_fence_aopef_coefficient_constructor sym_pfa
    end
;;

let is_parameter_set_fence_aopef_exponent_constructor sym_psf =
  if not (is_parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol sym_psf)
  then false
  else
    begin
      let sym_pfa = parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol sym_psf in
      Parameter_set_fence_aopef_symbol_v.is_parameter_set_fence_aopef_exponent_constructor sym_pfa
    end
;;

let is_parameter_set_fence_ecppef_coefficient_constructor sym_psf =
  if not (is_parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol sym_psf)
  then false
  else
    begin
      let sym_pfe = parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol sym_psf in
      Parameter_set_fence_ecppef_symbol_v.is_parameter_set_fence_ecppef_coefficient_constructor sym_pfe
    end
;;

let is_parameter_set_fence_ecppef_exponent_constructor sym_psf =
  if not (is_parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol sym_psf)
  then false
  else
    begin
      let sym_pfe = parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol sym_psf in
      Parameter_set_fence_ecppef_symbol_v.is_parameter_set_fence_ecppef_exponent_constructor sym_pfe
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_parameter_set_fence_aopef_coefficient_symbol_off_parameter_set_fence_symbol sym_psf =
  if not (is_parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol sym_psf)
  then false
  else
    begin
  let sym_pfa = parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol sym_psf in
  Parameter_set_fence_aopef_symbol_v.is_parameter_set_fence_aopef_coefficient_symbol_off_parameter_set_fence_aopef_symbol sym_pfa
    end
;;

let is_parameter_set_fence_aopef_exponent_symbol_off_parameter_set_fence_symbol sym_psf =
  if not (is_parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol sym_psf)
  then false
  else
    begin
  let sym_pfa = parameter_set_fence_aopef_symbol_off_parameter_set_fence_symbol sym_psf in
  Parameter_set_fence_aopef_symbol_v.is_parameter_set_fence_aopef_exponent_symbol_off_parameter_set_fence_aopef_symbol sym_pfa
    end
;;

let is_parameter_set_fence_ecppef_coefficient_symbol_off_parameter_set_fence_symbol sym_psf =
  if not (is_parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol sym_psf)
  then false
  else
    begin
  let sym_pfe = parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol sym_psf in
  Parameter_set_fence_ecppef_symbol_v.is_parameter_set_fence_ecppef_coefficient_symbol_off_parameter_set_fence_ecppef_symbol sym_pfe
    end
;;

let is_parameter_set_fence_ecppef_exponent_symbol_off_parameter_set_fence_symbol sym_psf =
  if not (is_parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol sym_psf)
  then false
  else
    begin
  let sym_pfe = parameter_set_fence_ecppef_symbol_off_parameter_set_fence_symbol sym_psf in
  Parameter_set_fence_ecppef_symbol_v.is_parameter_set_fence_ecppef_exponent_symbol_off_parameter_set_fence_ecppef_symbol sym_pfe
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let parameter_set_fence_symbol_of_parameter_set_fence_aopef_symbol sym_pfa = 
  Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol sym_pfa
;;

let parameter_set_fence_symbol_of_parameter_set_fence_ecppef_symbol sym_pfe = 
  Parameter_set_fence_symbol_t.Parameter_set_fence_ecppef_symbol sym_pfe
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let parameter_set_fence_symbol_of_parameter_set_fence_aopef_coefficient_symbol sym_pac = 
  let sym_pfa = Parameter_set_fence_aopef_symbol_v.parameter_set_fence_aopef_symbol_of_parameter_set_fence_aopef_coefficient_symbol sym_pac in
    parameter_set_fence_symbol_of_parameter_set_fence_aopef_symbol sym_pfa
;;

let parameter_set_fence_symbol_of_parameter_set_fence_aopef_exponent_symbol sym_pae = 
  let sym_pfa = Parameter_set_fence_aopef_symbol_v.parameter_set_fence_aopef_symbol_of_parameter_set_fence_aopef_exponent_symbol sym_pae in
    parameter_set_fence_symbol_of_parameter_set_fence_aopef_symbol sym_pfa
;;

let parameter_set_fence_symbol_of_parameter_set_fence_ecppef_coefficient_symbol sym_pec = 
  let sym_pfe = Parameter_set_fence_ecppef_symbol_v.parameter_set_fence_ecppef_symbol_of_parameter_set_fence_ecppef_coefficient_symbol sym_pec in
    parameter_set_fence_symbol_of_parameter_set_fence_ecppef_symbol sym_pfe
;;

let parameter_set_fence_symbol_of_parameter_set_fence_ecppef_exponent_symbol sym_pee = 
  let sym_pfe = Parameter_set_fence_ecppef_symbol_v.parameter_set_fence_ecppef_symbol_of_parameter_set_fence_ecppef_exponent_symbol sym_pee in
    parameter_set_fence_symbol_of_parameter_set_fence_ecppef_symbol sym_pfe
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let parameter_set_fence_aopef_coefficient_constructor s = parameter_set_fence_symbol_of_parameter_set_fence_aopef_symbol (Parameter_set_fence_aopef_symbol_v.parameter_set_fence_aopef_coefficient_constructor s);;

let parameter_set_fence_aopef_exponent_constructor s = parameter_set_fence_symbol_of_parameter_set_fence_aopef_symbol (Parameter_set_fence_aopef_symbol_v.parameter_set_fence_aopef_exponent_constructor s);;

let parameter_set_fence_ecppef_coefficient_constructor s = parameter_set_fence_symbol_of_parameter_set_fence_ecppef_symbol (Parameter_set_fence_ecppef_symbol_v.parameter_set_fence_ecppef_coefficient_constructor s);;

let parameter_set_fence_ecppef_exponent_constructor s = parameter_set_fence_symbol_of_parameter_set_fence_ecppef_symbol (Parameter_set_fence_ecppef_symbol_v.parameter_set_fence_ecppef_exponent_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Parameter_set_fence_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Parameter_set_fence_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try parameter_set_fence_symbol_of_parameter_set_fence_aopef_symbol
      (Parameter_set_fence_aopef_symbol_v.make nam s)
  with Failure "Not_a_parameter_set_fence_aopef_symbol:Parameter_set_fence_aopef_symbol_v.ml:make" ->
  try parameter_set_fence_symbol_of_parameter_set_fence_ecppef_symbol
      (Parameter_set_fence_ecppef_symbol_v.make nam s)
  with Failure "Not_a_parameter_set_fence_ecppef_symbol:Parameter_set_fence_ecppef_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Parameter_set_fence_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Parameter_set_fence_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Parameter_set_fence_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Parameter_set_fence_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Parameter_set_fence subtype" nam s)
      "it does not exists"
      "Check file Parameter_set_fence_symbol_v.ml"
    in
    failwith "Not_a_parameter_set_fence_symbol:Parameter_set_fence_symbol_v.ml:make"
;;


(** Parameter_set_fence_symbol_v at 16:28:39 on 2 Dec 2016. created by version v2.4 of generator *)


