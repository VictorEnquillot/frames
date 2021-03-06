(** {3 Elementary_border_coordinate_heterogeneous_spherical_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_border_coordinate_heterogeneous_spherical_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_esr ->
    Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_v.name sym_esr
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_esp ->
    Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_v.name sym_esp
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_est ->
    Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_v.name sym_est
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_esr ->
  Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_v.string_off sym_esr
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_esp ->
  Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_v.string_off sym_esp
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_est ->
  Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_v.string_off sym_est
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ehs =
  Format.sprintf "Elementary_border_coordinate_heterogeneous_spherical_symbol_t.%s" (String.capitalize (name sym_ehs))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ehs =
  Format.sprintf "%s \"%s\"" (longname sym_ehs) (string_off sym_ehs)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol = function
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_esr -> sym_esr
  | sym_ehs -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol"
      "Elementary_border_coordinate_heterogeneous_spherical_rho_symbol"
      (name sym_ehs) "check"
;;

let elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol = function
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_esp -> sym_esp
  | sym_ehs -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol"
      "Elementary_border_coordinate_heterogeneous_spherical_phi_symbol"
      (name sym_ehs) "check"
;;

let elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol = function
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_est -> sym_est
  | sym_ehs -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol"
      "Elementary_border_coordinate_heterogeneous_spherical_theta_symbol"
      (name sym_ehs) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol = function
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol _ -> true
  | _ -> false
;;

let is_elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol = function
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol _ -> true
  | _ -> false
;;

let is_elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol = function
  | Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_border_coordinate_heterogeneous_spherical_rho_constructor sym_ehs =
  if not (is_elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs)
  then false
  else
    begin
      let sym_esr = elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_rho_constructor sym_esr
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_phi_constructor sym_ehs =
  if not (is_elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs)
  then false
  else
    begin
      let sym_esp = elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_phi_constructor sym_esp
    end
;;

let is_elementary_border_coordinate_heterogeneous_spherical_theta_constructor sym_ehs =
  if not (is_elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs)
  then false
  else
    begin
      let sym_est = elementary_border_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_border_coordinate_heterogeneous_spherical_symbol sym_ehs in
      Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_theta_constructor sym_est
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_border_coordinate_heterogeneous_spherical_symbol_of_elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_esr = 
  Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol sym_esr
;;

let elementary_border_coordinate_heterogeneous_spherical_symbol_of_elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_esp = 
  Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol sym_esp
;;

let elementary_border_coordinate_heterogeneous_spherical_symbol_of_elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_est = 
  Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol sym_est
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_border_coordinate_heterogeneous_spherical_rho_constructor s = elementary_border_coordinate_heterogeneous_spherical_symbol_of_elementary_border_coordinate_heterogeneous_spherical_rho_symbol (Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_v.elementary_border_coordinate_heterogeneous_spherical_rho_constructor s);;

let elementary_border_coordinate_heterogeneous_spherical_phi_constructor s = elementary_border_coordinate_heterogeneous_spherical_symbol_of_elementary_border_coordinate_heterogeneous_spherical_phi_symbol (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_v.elementary_border_coordinate_heterogeneous_spherical_phi_constructor s);;

let elementary_border_coordinate_heterogeneous_spherical_theta_constructor s = elementary_border_coordinate_heterogeneous_spherical_symbol_of_elementary_border_coordinate_heterogeneous_spherical_theta_symbol (Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_v.elementary_border_coordinate_heterogeneous_spherical_theta_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_border_coordinate_heterogeneous_spherical_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_border_coordinate_heterogeneous_spherical_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_border_coordinate_heterogeneous_spherical_symbol_of_elementary_border_coordinate_heterogeneous_spherical_rho_symbol
      (Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_coordinate_heterogeneous_spherical_rho_symbol:Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_v.ml:make" ->
  try elementary_border_coordinate_heterogeneous_spherical_symbol_of_elementary_border_coordinate_heterogeneous_spherical_phi_symbol
      (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_coordinate_heterogeneous_spherical_phi_symbol:Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_v.ml:make" ->
  try elementary_border_coordinate_heterogeneous_spherical_symbol_of_elementary_border_coordinate_heterogeneous_spherical_theta_symbol
      (Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_coordinate_heterogeneous_spherical_theta_symbol:Elementary_border_coordinate_heterogeneous_spherical_theta_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_border_coordinate_heterogeneous_spherical_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_border_coordinate_heterogeneous_spherical_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_border_coordinate_heterogeneous_spherical_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_border_coordinate_heterogeneous_spherical_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_border_coordinate_heterogeneous_spherical subtype" nam s)
      "it does not exists"
      "Check file Elementary_border_coordinate_heterogeneous_spherical_symbol_v.ml"
    in
    failwith "Not_a_elementary_border_coordinate_heterogeneous_spherical_symbol:Elementary_border_coordinate_heterogeneous_spherical_symbol_v.ml:make"
;;


(** Elementary_border_coordinate_heterogeneous_spherical_symbol_v at 11:52:21 on 9 May 2016. created by version v2.4 of generator *)



