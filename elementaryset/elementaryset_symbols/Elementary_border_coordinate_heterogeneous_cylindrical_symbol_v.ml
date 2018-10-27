(** {3 Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr ->
    Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_v.name sym_ecr
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp ->
    Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_v.name sym_ecp
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz ->
    Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_v.name sym_ecz
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr ->
  Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_v.string_off sym_ecr
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp ->
  Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_v.string_off sym_ecp
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz ->
  Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_v.string_off sym_ecz
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ehc =
  Format.sprintf "Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.%s" (String.capitalize (name sym_ehc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ehc =
  Format.sprintf "%s \"%s\"" (longname sym_ehc) (string_off sym_ehc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol = function
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr -> sym_ecr
  | sym_ehc -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol"
      "Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol"
      (name sym_ehc) "check"
;;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol = function
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp -> sym_ecp
  | sym_ehc -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol"
      "Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol"
      (name sym_ehc) "check"
;;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol = function
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz -> sym_ecz
  | sym_ehc -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol"
      "Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol"
      (name sym_ehc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol = function
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol _ -> true
  | _ -> false
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol = function
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol _ -> true
  | _ -> false
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol = function
  | Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor sym_ehc =
  if not (is_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc)
  then false
  else
    begin
      let sym_ecr = elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor sym_ecr
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor sym_ehc =
  if not (is_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc)
  then false
  else
    begin
      let sym_ecp = elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor sym_ecp
    end
;;

let is_elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor sym_ehc =
  if not (is_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc)
  then false
  else
    begin
      let sym_ecz = elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_off_elementary_border_coordinate_heterogeneous_cylindrical_symbol sym_ehc in
      Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_v.is_elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor sym_ecz
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_border_coordinate_heterogeneous_cylindrical_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr = 
  Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol sym_ecr
;;

let elementary_border_coordinate_heterogeneous_cylindrical_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp = 
  Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol sym_ecp
;;

let elementary_border_coordinate_heterogeneous_cylindrical_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz = 
  Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol sym_ecz
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor s = elementary_border_coordinate_heterogeneous_cylindrical_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol (Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor s);;

let elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor s = elementary_border_coordinate_heterogeneous_cylindrical_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol (Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor s);;

let elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor s = elementary_border_coordinate_heterogeneous_cylindrical_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol (Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_border_coordinate_heterogeneous_cylindrical_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol
      (Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol:Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol_v.ml:make" ->
  try elementary_border_coordinate_heterogeneous_cylindrical_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol
      (Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol:Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol_v.ml:make" ->
  try elementary_border_coordinate_heterogeneous_cylindrical_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol
      (Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol:Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_border_coordinate_heterogeneous_cylindrical subtype" nam s)
      "it does not exists"
      "Check file Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v.ml"
    in
    failwith "Not_a_elementary_border_coordinate_heterogeneous_cylindrical_symbol:Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v.ml:make"
;;


(** Elementary_border_coordinate_heterogeneous_cylindrical_symbol_v at 11:52:21 on 9 May 2016. created by version v2.4 of generator *)



