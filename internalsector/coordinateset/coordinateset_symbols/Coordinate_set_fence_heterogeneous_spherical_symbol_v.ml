(** {3 Coordinate_set_fence_heterogeneous_spherical_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Coordinate_set_fence_heterogeneous_spherical_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol sym_csr ->
    Coordinate_set_fence_heterogeneous_spherical_rho_symbol_v.name sym_csr
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol sym_csp ->
    Coordinate_set_fence_heterogeneous_spherical_phi_symbol_v.name sym_csp
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol sym_cst ->
    Coordinate_set_fence_heterogeneous_spherical_theta_symbol_v.name sym_cst
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol sym_csr ->
  Coordinate_set_fence_heterogeneous_spherical_rho_symbol_v.string_off sym_csr
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol sym_csp ->
  Coordinate_set_fence_heterogeneous_spherical_phi_symbol_v.string_off sym_csp
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol sym_cst ->
  Coordinate_set_fence_heterogeneous_spherical_theta_symbol_v.string_off sym_cst
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_chs =
  Format.sprintf "Coordinate_set_fence_heterogeneous_spherical_symbol_t.%s" (String.capitalize (name sym_chs))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_chs =
  Format.sprintf "%s \"%s\"" (longname sym_chs) (string_off sym_chs)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol = function
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol sym_csr -> sym_csr
  | sym_chs -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol"
      "Coordinate_set_fence_heterogeneous_spherical_rho_symbol"
      (name sym_chs) "check"
;;

let coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol = function
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol sym_csp -> sym_csp
  | sym_chs -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol"
      "Coordinate_set_fence_heterogeneous_spherical_phi_symbol"
      (name sym_chs) "check"
;;

let coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol = function
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol sym_cst -> sym_cst
  | sym_chs -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol"
      "Coordinate_set_fence_heterogeneous_spherical_theta_symbol"
      (name sym_chs) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol = function
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol _ -> true
  | _ -> false
;;

let is_coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol = function
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol _ -> true
  | _ -> false
;;

let is_coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol = function
  | Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_coordinate_set_fence_heterogeneous_spherical_rho_constructor sym_chs =
  if not (is_coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol sym_chs)
  then false
  else
    begin
      let sym_csr = coordinate_set_fence_heterogeneous_spherical_rho_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol sym_chs in
      Coordinate_set_fence_heterogeneous_spherical_rho_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_rho_constructor sym_csr
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_phi_constructor sym_chs =
  if not (is_coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol sym_chs)
  then false
  else
    begin
      let sym_csp = coordinate_set_fence_heterogeneous_spherical_phi_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol sym_chs in
      Coordinate_set_fence_heterogeneous_spherical_phi_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_phi_constructor sym_csp
    end
;;

let is_coordinate_set_fence_heterogeneous_spherical_theta_constructor sym_chs =
  if not (is_coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol sym_chs)
  then false
  else
    begin
      let sym_cst = coordinate_set_fence_heterogeneous_spherical_theta_symbol_off_coordinate_set_fence_heterogeneous_spherical_symbol sym_chs in
      Coordinate_set_fence_heterogeneous_spherical_theta_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_theta_constructor sym_cst
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let coordinate_set_fence_heterogeneous_spherical_symbol_of_coordinate_set_fence_heterogeneous_spherical_rho_symbol sym_csr = 
  Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol sym_csr
;;

let coordinate_set_fence_heterogeneous_spherical_symbol_of_coordinate_set_fence_heterogeneous_spherical_phi_symbol sym_csp = 
  Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol sym_csp
;;

let coordinate_set_fence_heterogeneous_spherical_symbol_of_coordinate_set_fence_heterogeneous_spherical_theta_symbol sym_cst = 
  Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol sym_cst
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let coordinate_set_fence_heterogeneous_spherical_rho_constructor s = coordinate_set_fence_heterogeneous_spherical_symbol_of_coordinate_set_fence_heterogeneous_spherical_rho_symbol (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_v.coordinate_set_fence_heterogeneous_spherical_rho_constructor s);;

let coordinate_set_fence_heterogeneous_spherical_phi_constructor s = coordinate_set_fence_heterogeneous_spherical_symbol_of_coordinate_set_fence_heterogeneous_spherical_phi_symbol (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_v.coordinate_set_fence_heterogeneous_spherical_phi_constructor s);;

let coordinate_set_fence_heterogeneous_spherical_theta_constructor s = coordinate_set_fence_heterogeneous_spherical_symbol_of_coordinate_set_fence_heterogeneous_spherical_theta_symbol (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_v.coordinate_set_fence_heterogeneous_spherical_theta_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Coordinate_set_fence_heterogeneous_spherical_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Coordinate_set_fence_heterogeneous_spherical_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try coordinate_set_fence_heterogeneous_spherical_symbol_of_coordinate_set_fence_heterogeneous_spherical_rho_symbol
      (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_v.make nam s)
  with Failure "Not_a_coordinate_set_fence_heterogeneous_spherical_rho_symbol:Coordinate_set_fence_heterogeneous_spherical_rho_symbol_v.ml:make" ->
  try coordinate_set_fence_heterogeneous_spherical_symbol_of_coordinate_set_fence_heterogeneous_spherical_phi_symbol
      (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_v.make nam s)
  with Failure "Not_a_coordinate_set_fence_heterogeneous_spherical_phi_symbol:Coordinate_set_fence_heterogeneous_spherical_phi_symbol_v.ml:make" ->
  try coordinate_set_fence_heterogeneous_spherical_symbol_of_coordinate_set_fence_heterogeneous_spherical_theta_symbol
      (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_v.make nam s)
  with Failure "Not_a_coordinate_set_fence_heterogeneous_spherical_theta_symbol:Coordinate_set_fence_heterogeneous_spherical_theta_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Coordinate_set_fence_heterogeneous_spherical_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Coordinate_set_fence_heterogeneous_spherical_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Coordinate_set_fence_heterogeneous_spherical_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Coordinate_set_fence_heterogeneous_spherical_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Coordinate_set_fence_heterogeneous_spherical subtype" nam s)
      "it does not exists"
      "Check file Coordinate_set_fence_heterogeneous_spherical_symbol_v.ml"
    in
    failwith "Not_a_coordinate_set_fence_heterogeneous_spherical_symbol:Coordinate_set_fence_heterogeneous_spherical_symbol_v.ml:make"
;;


(** Coordinate_set_fence_heterogeneous_spherical_symbol_v at 11:32:48 on 14 Dec 2016. created by version v2.4 of generator *)



