(** {3 Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol sym_dla ->
    Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_v.name sym_dla
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol sym_dlb ->
    Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_v.name sym_dlb
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol sym_dlm ->
    Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_v.name sym_dlm
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol sym_dln ->
    Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_v.name sym_dln
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol sym_dla ->
  Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_v.string_off sym_dla
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol sym_dlb ->
  Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_v.string_off sym_dlb
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol sym_dlm ->
  Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_v.string_off sym_dlm
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol sym_dln ->
  Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_v.string_off sym_dln
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dul =
  Format.sprintf "Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.%s" (String.capitalize (name sym_dul))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dul =
  Format.sprintf "%s \"%s\"" (longname sym_dul) (string_off sym_dul)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol sym_dla -> sym_dla
  | sym_dul -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol"
      "Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol"
      (name sym_dul) "check"
;;

let db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol sym_dlb -> sym_dlb
  | sym_dul -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol"
      "Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol"
      (name sym_dul) "check"
;;

let db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol sym_dlm -> sym_dlm
  | sym_dul -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol"
      "Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol"
      (name sym_dul) "check"
;;

let db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol sym_dln -> sym_dln
  | sym_dul -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol"
      "Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol"
      (name sym_dul) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor sym_dul =
  if not (is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul)
  then false
  else
    begin
      let sym_dla = db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul in
      Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor sym_dla
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor sym_dul =
  if not (is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul)
  then false
  else
    begin
      let sym_dlb = db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul in
      Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor sym_dlb
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor sym_dul =
  if not (is_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul)
  then false
  else
    begin
      let sym_dlm = db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul in
      Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor sym_dlm
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor sym_dul =
  if not (is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul)
  then false
  else
    begin
      let sym_dln = db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_off_db1pointsdata_set_fence_token_coordinates_units_length_symbol sym_dul in
      Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_v.is_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor sym_dln
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol sym_dla = 
  Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol sym_dla
;;

let db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol sym_dlb = 
  Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol sym_dlb
;;

let db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol sym_dlm = 
  Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol sym_dlm
;;

let db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol sym_dln = 
  Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol sym_dln
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor s = db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol (Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_angstrom_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor s = db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol (Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_bohr_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor s = db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol (Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor s);;

let db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor s = db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol (Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_v.db1pointsdata_set_fence_token_coordinates_units_length_nanometer_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol
      (Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol:Db1pointsdata_set_fence_token_coordinates_units_length_angstrom_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol
      (Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol:Db1pointsdata_set_fence_token_coordinates_units_length_bohr_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol
      (Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol:Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_token_coordinates_units_length_symbol_of_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol
      (Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol:Db1pointsdata_set_fence_token_coordinates_units_length_nanometer_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_set_fence_token_coordinates_units_length subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_set_fence_token_coordinates_units_length_symbol:Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v.ml:make"
;;


(** Db1pointsdata_set_fence_token_coordinates_units_length_symbol_v at 12:40:42 on 4 Jun 2017. created by version v2.4 of generator *)



