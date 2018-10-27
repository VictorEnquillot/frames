(** {3 Parameter_set_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Parameter_set_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol sym_pbt ->
    Parameter_set_body_tuple_symbol_v.name sym_pbt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol sym_pbt ->
  Parameter_set_body_tuple_symbol_v.string_off sym_pbt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_psb =
  Format.sprintf "Parameter_set_body_symbol_t.%s" (String.capitalize (name sym_psb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_psb =
  Format.sprintf "%s \"%s\"" (longname sym_psb) (string_off sym_psb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let parameter_set_body_tuple_symbol_off_parameter_set_body_symbol = function
  | Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol sym_pbt -> sym_pbt
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let parameter_set_body_tuple_aopef_symbol_off_parameter_set_body_symbol sym_psb = 
  let sym_pbt = parameter_set_body_tuple_symbol_off_parameter_set_body_symbol sym_psb in
    Parameter_set_body_tuple_symbol_v.parameter_set_body_tuple_aopef_symbol_off_parameter_set_body_tuple_symbol sym_pbt
;;

let parameter_set_body_tuple_ecppef_symbol_off_parameter_set_body_symbol sym_psb = 
  let sym_pbt = parameter_set_body_tuple_symbol_off_parameter_set_body_symbol sym_psb in
    Parameter_set_body_tuple_symbol_v.parameter_set_body_tuple_ecppef_symbol_off_parameter_set_body_tuple_symbol sym_pbt
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_parameter_set_body_tuple_symbol_off_parameter_set_body_symbol = function
  | Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol _ -> true
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_parameter_set_body_tuple_aopef_constructor sym_psb =
  if not (is_parameter_set_body_tuple_symbol_off_parameter_set_body_symbol sym_psb)
  then false
  else
    begin
      let sym_pbt = parameter_set_body_tuple_symbol_off_parameter_set_body_symbol sym_psb in
      Parameter_set_body_tuple_symbol_v.is_parameter_set_body_tuple_aopef_constructor sym_pbt
    end
;;

let is_parameter_set_body_tuple_ecppef_constructor sym_psb =
  if not (is_parameter_set_body_tuple_symbol_off_parameter_set_body_symbol sym_psb)
  then false
  else
    begin
      let sym_pbt = parameter_set_body_tuple_symbol_off_parameter_set_body_symbol sym_psb in
      Parameter_set_body_tuple_symbol_v.is_parameter_set_body_tuple_ecppef_constructor sym_pbt
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_parameter_set_body_tuple_aopef_symbol_off_parameter_set_body_symbol sym_psb =
  if not (is_parameter_set_body_tuple_symbol_off_parameter_set_body_symbol sym_psb)
  then false
  else
    begin
  let sym_pbt = parameter_set_body_tuple_symbol_off_parameter_set_body_symbol sym_psb in
  Parameter_set_body_tuple_symbol_v.is_parameter_set_body_tuple_aopef_symbol_off_parameter_set_body_tuple_symbol sym_pbt
    end
;;

let is_parameter_set_body_tuple_ecppef_symbol_off_parameter_set_body_symbol sym_psb =
  if not (is_parameter_set_body_tuple_symbol_off_parameter_set_body_symbol sym_psb)
  then false
  else
    begin
  let sym_pbt = parameter_set_body_tuple_symbol_off_parameter_set_body_symbol sym_psb in
  Parameter_set_body_tuple_symbol_v.is_parameter_set_body_tuple_ecppef_symbol_off_parameter_set_body_tuple_symbol sym_pbt
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let parameter_set_body_symbol_of_parameter_set_body_tuple_symbol sym_pbt = 
  Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol sym_pbt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let parameter_set_body_symbol_of_parameter_set_body_tuple_aopef_symbol sym_pta = 
  let sym_pbt = Parameter_set_body_tuple_symbol_v.parameter_set_body_tuple_symbol_of_parameter_set_body_tuple_aopef_symbol sym_pta in
    parameter_set_body_symbol_of_parameter_set_body_tuple_symbol sym_pbt
;;

let parameter_set_body_symbol_of_parameter_set_body_tuple_ecppef_symbol sym_pte = 
  let sym_pbt = Parameter_set_body_tuple_symbol_v.parameter_set_body_tuple_symbol_of_parameter_set_body_tuple_ecppef_symbol sym_pte in
    parameter_set_body_symbol_of_parameter_set_body_tuple_symbol sym_pbt
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let parameter_set_body_tuple_aopef_constructor s = parameter_set_body_symbol_of_parameter_set_body_tuple_symbol (Parameter_set_body_tuple_symbol_v.parameter_set_body_tuple_aopef_constructor s);;

let parameter_set_body_tuple_ecppef_constructor s = parameter_set_body_symbol_of_parameter_set_body_tuple_symbol (Parameter_set_body_tuple_symbol_v.parameter_set_body_tuple_ecppef_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Parameter_set_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Parameter_set_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try parameter_set_body_symbol_of_parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_v.make nam s)
  with Failure "Not_a_parameter_set_body_tuple_symbol:Parameter_set_body_tuple_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Parameter_set_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Parameter_set_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Parameter_set_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Parameter_set_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Parameter_set_body subtype" nam s)
      "it does not exists"
      "Check file Parameter_set_body_symbol_v.ml"
    in
    failwith "Not_a_parameter_set_body_symbol:Parameter_set_body_symbol_v.ml:make"
;;


(** Parameter_set_body_symbol_v at 16:28:39 on 2 Dec 2016. created by version v2.4 of generator *)



