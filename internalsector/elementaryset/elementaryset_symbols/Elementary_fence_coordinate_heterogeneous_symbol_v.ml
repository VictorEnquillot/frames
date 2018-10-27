(** {3 Elementary_fence_coordinate_heterogeneous_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_coordinate_heterogeneous_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc ->
    Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.name sym_ehc
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp ->
    Elementary_fence_coordinate_heterogeneous_polar_symbol_v.name sym_ehp
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs ->
    Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.name sym_ehs
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc ->
  Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.string_off sym_ehc
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp ->
  Elementary_fence_coordinate_heterogeneous_polar_symbol_v.string_off sym_ehp
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs ->
  Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.string_off sym_ehs
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ech =
  Format.sprintf "Elementary_fence_coordinate_heterogeneous_symbol_t.%s" (String.capitalize (name sym_ech))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ech =
  Format.sprintf "%s \"%s\"" (longname sym_ech) (string_off sym_ech)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol = function
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc -> sym_ehc
  | sym_ech -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol"
      "Elementary_fence_coordinate_heterogeneous_cylindrical_symbol"
      (name sym_ech) "check"
;;

let elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol = function
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp -> sym_ehp
  | sym_ech -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol"
      "Elementary_fence_coordinate_heterogeneous_polar_symbol"
      (name sym_ech) "check"
;;

let elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol = function
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs -> sym_ehs
  | sym_ech -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol"
      "Elementary_fence_coordinate_heterogeneous_spherical_symbol"
      (name sym_ech) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech = 
  let sym_ehc = elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
    Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc
;;

let elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech = 
  let sym_ehc = elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
    Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc
;;

let elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech = 
  let sym_ehc = elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
    Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc
;;

let elementary_fence_coordinate_heterogeneous_polar_rho_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech = 
  let sym_ehp = elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
    Elementary_fence_coordinate_heterogeneous_polar_symbol_v.elementary_fence_coordinate_heterogeneous_polar_rho_symbol_off_elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp
;;

let elementary_fence_coordinate_heterogeneous_polar_theta_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech = 
  let sym_ehp = elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
    Elementary_fence_coordinate_heterogeneous_polar_symbol_v.elementary_fence_coordinate_heterogeneous_polar_theta_symbol_off_elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp
;;

let elementary_fence_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech = 
  let sym_ehs = elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
    Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs
;;

let elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech = 
  let sym_ehs = elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
    Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs
;;

let elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech = 
  let sym_ehs = elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
    Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol = function
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_cylindrical_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol = function
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_polar_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol = function
  | Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_fence_coordinate_heterogeneous_cylindrical_rho_constructor sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehc = elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
      Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_rho_constructor sym_ehc
    end
;;

let is_elementary_fence_coordinate_heterogeneous_cylindrical_phi_constructor sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehc = elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
      Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_phi_constructor sym_ehc
    end
;;

let is_elementary_fence_coordinate_heterogeneous_cylindrical_zed_constructor sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehc = elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
      Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_zed_constructor sym_ehc
    end
;;

let is_elementary_fence_coordinate_heterogeneous_polar_rho_constructor sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehp = elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
      Elementary_fence_coordinate_heterogeneous_polar_symbol_v.is_elementary_fence_coordinate_heterogeneous_polar_rho_constructor sym_ehp
    end
;;

let is_elementary_fence_coordinate_heterogeneous_polar_theta_constructor sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehp = elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
      Elementary_fence_coordinate_heterogeneous_polar_symbol_v.is_elementary_fence_coordinate_heterogeneous_polar_theta_constructor sym_ehp
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_rho_constructor sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehs = elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
      Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_rho_constructor sym_ehs
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_phi_constructor sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehs = elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
      Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_phi_constructor sym_ehs
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_theta_constructor sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehs = elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
      Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_theta_constructor sym_ehs
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehc = elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
  Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc
    end
;;

let is_elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehc = elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
  Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc
    end
;;

let is_elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehc = elementary_fence_coordinate_heterogeneous_cylindrical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
  Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.is_elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc
    end
;;

let is_elementary_fence_coordinate_heterogeneous_polar_rho_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehp = elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
  Elementary_fence_coordinate_heterogeneous_polar_symbol_v.is_elementary_fence_coordinate_heterogeneous_polar_rho_symbol_off_elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp
    end
;;

let is_elementary_fence_coordinate_heterogeneous_polar_theta_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehp = elementary_fence_coordinate_heterogeneous_polar_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
  Elementary_fence_coordinate_heterogeneous_polar_symbol_v.is_elementary_fence_coordinate_heterogeneous_polar_theta_symbol_off_elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehs = elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
  Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehs = elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
  Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_off_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs
    end
;;

let is_elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech =
  if not (is_elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehs = elementary_fence_coordinate_heterogeneous_spherical_symbol_off_elementary_fence_coordinate_heterogeneous_symbol sym_ech in
  Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_off_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc = 
  Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc
;;

let elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp = 
  Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp
;;

let elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs = 
  Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr = 
  let sym_ehc = Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr in
    elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc
;;

let elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp = 
  let sym_ehc = Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp in
    elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc
;;

let elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz = 
  let sym_ehc = Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz in
    elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_symbol sym_ehc
;;

let elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_polar_rho_symbol sym_epr = 
  let sym_ehp = Elementary_fence_coordinate_heterogeneous_polar_symbol_v.elementary_fence_coordinate_heterogeneous_polar_symbol_of_elementary_fence_coordinate_heterogeneous_polar_rho_symbol sym_epr in
    elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp
;;

let elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_polar_theta_symbol sym_ept = 
  let sym_ehp = Elementary_fence_coordinate_heterogeneous_polar_symbol_v.elementary_fence_coordinate_heterogeneous_polar_symbol_of_elementary_fence_coordinate_heterogeneous_polar_theta_symbol sym_ept in
    elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_polar_symbol sym_ehp
;;

let elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_rho_symbol sym_esr = 
  let sym_ehs = Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_rho_symbol sym_esr in
    elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs
;;

let elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_phi_symbol sym_esp = 
  let sym_ehs = Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_phi_symbol sym_esp in
    elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs
;;

let elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_theta_symbol sym_est = 
  let sym_ehs = Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_theta_symbol sym_est in
    elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_symbol sym_ehs
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_fence_coordinate_heterogeneous_cylindrical_rho_constructor s = elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_symbol (Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_rho_constructor s);;

let elementary_fence_coordinate_heterogeneous_cylindrical_phi_constructor s = elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_symbol (Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_phi_constructor s);;

let elementary_fence_coordinate_heterogeneous_cylindrical_zed_constructor s = elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_symbol (Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.elementary_fence_coordinate_heterogeneous_cylindrical_zed_constructor s);;

let elementary_fence_coordinate_heterogeneous_polar_rho_constructor s = elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_polar_symbol (Elementary_fence_coordinate_heterogeneous_polar_symbol_v.elementary_fence_coordinate_heterogeneous_polar_rho_constructor s);;

let elementary_fence_coordinate_heterogeneous_polar_theta_constructor s = elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_polar_symbol (Elementary_fence_coordinate_heterogeneous_polar_symbol_v.elementary_fence_coordinate_heterogeneous_polar_theta_constructor s);;

let elementary_fence_coordinate_heterogeneous_spherical_rho_constructor s = elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_symbol (Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_rho_constructor s);;

let elementary_fence_coordinate_heterogeneous_spherical_phi_constructor s = elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_symbol (Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_phi_constructor s);;

let elementary_fence_coordinate_heterogeneous_spherical_theta_constructor s = elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_symbol (Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.elementary_fence_coordinate_heterogeneous_spherical_theta_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_coordinate_heterogeneous_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_coordinate_heterogeneous_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_cylindrical_symbol
      (Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_coordinate_heterogeneous_cylindrical_symbol:Elementary_fence_coordinate_heterogeneous_cylindrical_symbol_v.ml:make" ->
  try elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_polar_symbol
      (Elementary_fence_coordinate_heterogeneous_polar_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_coordinate_heterogeneous_polar_symbol:Elementary_fence_coordinate_heterogeneous_polar_symbol_v.ml:make" ->
  try elementary_fence_coordinate_heterogeneous_symbol_of_elementary_fence_coordinate_heterogeneous_spherical_symbol
      (Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_coordinate_heterogeneous_spherical_symbol:Elementary_fence_coordinate_heterogeneous_spherical_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_fence_coordinate_heterogeneous_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_coordinate_heterogeneous_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_coordinate_heterogeneous_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_coordinate_heterogeneous_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_coordinate_heterogeneous subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_coordinate_heterogeneous_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_coordinate_heterogeneous_symbol:Elementary_fence_coordinate_heterogeneous_symbol_v.ml:make"
;;


(** Elementary_fence_coordinate_heterogeneous_symbol_v at 9:51:55 on 27 Sep 2016. created by version v2.4 of generator *)



