(** {3 Coordinate_set_fence_homogeneous_cartesian_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Coordinate_set_fence_homogeneous_cartesian_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol sym_ccx ->
    Coordinate_set_fence_homogeneous_cartesian_x_symbol_v.name sym_ccx
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol sym_ccy ->
    Coordinate_set_fence_homogeneous_cartesian_y_symbol_v.name sym_ccy
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol sym_ccz ->
    Coordinate_set_fence_homogeneous_cartesian_z_symbol_v.name sym_ccz
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol sym_ccx ->
  Coordinate_set_fence_homogeneous_cartesian_x_symbol_v.string_off sym_ccx
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol sym_ccy ->
  Coordinate_set_fence_homogeneous_cartesian_y_symbol_v.string_off sym_ccy
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol sym_ccz ->
  Coordinate_set_fence_homogeneous_cartesian_z_symbol_v.string_off sym_ccz
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_chc =
  Format.sprintf "Coordinate_set_fence_homogeneous_cartesian_symbol_t.%s" (String.capitalize (name sym_chc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_chc =
  Format.sprintf "%s \"%s\"" (longname sym_chc) (string_off sym_chc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol = function
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol sym_ccx -> sym_ccx
  | sym_chc -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol"
      "Coordinate_set_fence_homogeneous_cartesian_x_symbol"
      (name sym_chc) "check"
;;

let coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol = function
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol sym_ccy -> sym_ccy
  | sym_chc -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol"
      "Coordinate_set_fence_homogeneous_cartesian_y_symbol"
      (name sym_chc) "check"
;;

let coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol = function
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol sym_ccz -> sym_ccz
  | sym_chc -> Error_messages_v.print_fatal_error
      nam_cod "coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol"
      "Coordinate_set_fence_homogeneous_cartesian_z_symbol"
      (name sym_chc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol = function
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol _ -> true
  | _ -> false
;;

let is_coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol = function
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol _ -> true
  | _ -> false
;;

let is_coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol = function
  | Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_coordinate_set_fence_homogeneous_cartesian_x_constructor sym_chc =
  if not (is_coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol sym_chc)
  then false
  else
    begin
      let sym_ccx = coordinate_set_fence_homogeneous_cartesian_x_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol sym_chc in
      Coordinate_set_fence_homogeneous_cartesian_x_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_x_constructor sym_ccx
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_y_constructor sym_chc =
  if not (is_coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol sym_chc)
  then false
  else
    begin
      let sym_ccy = coordinate_set_fence_homogeneous_cartesian_y_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol sym_chc in
      Coordinate_set_fence_homogeneous_cartesian_y_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_y_constructor sym_ccy
    end
;;

let is_coordinate_set_fence_homogeneous_cartesian_z_constructor sym_chc =
  if not (is_coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol sym_chc)
  then false
  else
    begin
      let sym_ccz = coordinate_set_fence_homogeneous_cartesian_z_symbol_off_coordinate_set_fence_homogeneous_cartesian_symbol sym_chc in
      Coordinate_set_fence_homogeneous_cartesian_z_symbol_v.is_coordinate_set_fence_homogeneous_cartesian_z_constructor sym_ccz
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let coordinate_set_fence_homogeneous_cartesian_symbol_of_coordinate_set_fence_homogeneous_cartesian_x_symbol sym_ccx = 
  Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_x_symbol sym_ccx
;;

let coordinate_set_fence_homogeneous_cartesian_symbol_of_coordinate_set_fence_homogeneous_cartesian_y_symbol sym_ccy = 
  Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_y_symbol sym_ccy
;;

let coordinate_set_fence_homogeneous_cartesian_symbol_of_coordinate_set_fence_homogeneous_cartesian_z_symbol sym_ccz = 
  Coordinate_set_fence_homogeneous_cartesian_symbol_t.Coordinate_set_fence_homogeneous_cartesian_z_symbol sym_ccz
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let coordinate_set_fence_homogeneous_cartesian_x_constructor s = coordinate_set_fence_homogeneous_cartesian_symbol_of_coordinate_set_fence_homogeneous_cartesian_x_symbol (Coordinate_set_fence_homogeneous_cartesian_x_symbol_v.coordinate_set_fence_homogeneous_cartesian_x_constructor s);;

let coordinate_set_fence_homogeneous_cartesian_y_constructor s = coordinate_set_fence_homogeneous_cartesian_symbol_of_coordinate_set_fence_homogeneous_cartesian_y_symbol (Coordinate_set_fence_homogeneous_cartesian_y_symbol_v.coordinate_set_fence_homogeneous_cartesian_y_constructor s);;

let coordinate_set_fence_homogeneous_cartesian_z_constructor s = coordinate_set_fence_homogeneous_cartesian_symbol_of_coordinate_set_fence_homogeneous_cartesian_z_symbol (Coordinate_set_fence_homogeneous_cartesian_z_symbol_v.coordinate_set_fence_homogeneous_cartesian_z_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Coordinate_set_fence_homogeneous_cartesian_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Coordinate_set_fence_homogeneous_cartesian_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try coordinate_set_fence_homogeneous_cartesian_symbol_of_coordinate_set_fence_homogeneous_cartesian_x_symbol
      (Coordinate_set_fence_homogeneous_cartesian_x_symbol_v.make nam s)
  with Failure "Not_a_coordinate_set_fence_homogeneous_cartesian_x_symbol:Coordinate_set_fence_homogeneous_cartesian_x_symbol_v.ml:make" ->
  try coordinate_set_fence_homogeneous_cartesian_symbol_of_coordinate_set_fence_homogeneous_cartesian_y_symbol
      (Coordinate_set_fence_homogeneous_cartesian_y_symbol_v.make nam s)
  with Failure "Not_a_coordinate_set_fence_homogeneous_cartesian_y_symbol:Coordinate_set_fence_homogeneous_cartesian_y_symbol_v.ml:make" ->
  try coordinate_set_fence_homogeneous_cartesian_symbol_of_coordinate_set_fence_homogeneous_cartesian_z_symbol
      (Coordinate_set_fence_homogeneous_cartesian_z_symbol_v.make nam s)
  with Failure "Not_a_coordinate_set_fence_homogeneous_cartesian_z_symbol:Coordinate_set_fence_homogeneous_cartesian_z_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Coordinate_set_fence_homogeneous_cartesian_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Coordinate_set_fence_homogeneous_cartesian_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Coordinate_set_fence_homogeneous_cartesian_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Coordinate_set_fence_homogeneous_cartesian_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Coordinate_set_fence_homogeneous_cartesian subtype" nam s)
      "it does not exists"
      "Check file Coordinate_set_fence_homogeneous_cartesian_symbol_v.ml"
    in
    failwith "Not_a_coordinate_set_fence_homogeneous_cartesian_symbol:Coordinate_set_fence_homogeneous_cartesian_symbol_v.ml:make"
;;


(** Coordinate_set_fence_homogeneous_cartesian_symbol_v at 11:32:49 on 14 Dec 2016. created by version v2.4 of generator *)



