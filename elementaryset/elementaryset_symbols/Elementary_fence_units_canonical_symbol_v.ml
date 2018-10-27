(** {3 Elementary_fence_units_canonical_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_units_canonical_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol sym_ecc ->
    Elementary_fence_units_canonical_classical_symbol_v.name sym_ecc
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol sym_ecq ->
    Elementary_fence_units_canonical_quantum_symbol_v.name sym_ecq
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol sym_ecc ->
  Elementary_fence_units_canonical_classical_symbol_v.string_off sym_ecc
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol sym_ecq ->
  Elementary_fence_units_canonical_quantum_symbol_v.string_off sym_ecq
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_euc =
  Format.sprintf "Elementary_fence_units_canonical_symbol_t.%s" (String.capitalize (name sym_euc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_euc =
  Format.sprintf "%s \"%s\"" (longname sym_euc) (string_off sym_euc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol = function
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol sym_ecc -> sym_ecc
  | sym_euc -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol"
      "Elementary_fence_units_canonical_classical_symbol"
      (name sym_euc) "check"
;;

let elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol = function
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol sym_ecq -> sym_ecq
  | sym_euc -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol"
      "Elementary_fence_units_canonical_quantum_symbol"
      (name sym_euc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol = function
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol = function
  | Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_canonical_classical_action_kilocalorie_second sym_euc =
  if not (is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecc = elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_classical_symbol_v.is_canonical_classical_action_kilocalorie_second sym_ecc
    end
;;

let is_canonical_classical_angle_radian sym_euc =
  if not (is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecc = elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_classical_symbol_v.is_canonical_classical_angle_radian sym_ecc
    end
;;

let is_canonical_classical_charge_coulomb sym_euc =
  if not (is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecc = elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_classical_symbol_v.is_canonical_classical_charge_coulomb sym_ecc
    end
;;

let is_canonical_classical_energy_kilocalorie sym_euc =
  if not (is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecc = elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_classical_symbol_v.is_canonical_classical_energy_kilocalorie sym_ecc
    end
;;

let is_canonical_classical_length_angstrom sym_euc =
  if not (is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecc = elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_classical_symbol_v.is_canonical_classical_length_angstrom sym_ecc
    end
;;

let is_canonical_classical_mass_electron_mass sym_euc =
  if not (is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecc = elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_classical_symbol_v.is_canonical_classical_mass_electron_mass sym_ecc
    end
;;

let is_canonical_classical_temperature_kelvin sym_euc =
  if not (is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecc = elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_classical_symbol_v.is_canonical_classical_temperature_kelvin sym_ecc
    end
;;

let is_canonical_classical_time_femtosecond sym_euc =
  if not (is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecc = elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_classical_symbol_v.is_canonical_classical_time_femtosecond sym_ecc
    end
;;

let is_canonical_classical_none sym_euc =
  if not (is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecc = elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_classical_symbol_v.is_canonical_classical_none sym_ecc
    end
;;

let is_canonical_quantum_action_planck_constant sym_euc =
  if not (is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecq = elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_quantum_symbol_v.is_canonical_quantum_action_planck_constant sym_ecq
    end
;;

let is_canonical_quantum_angle_radian sym_euc =
  if not (is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecq = elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_quantum_symbol_v.is_canonical_quantum_angle_radian sym_ecq
    end
;;

let is_canonical_quantum_charge_electron_charge sym_euc =
  if not (is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecq = elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_quantum_symbol_v.is_canonical_quantum_charge_electron_charge sym_ecq
    end
;;

let is_canonical_quantum_energy_hartree sym_euc =
  if not (is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecq = elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_quantum_symbol_v.is_canonical_quantum_energy_hartree sym_ecq
    end
;;

let is_canonical_quantum_length_bohr sym_euc =
  if not (is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecq = elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_quantum_symbol_v.is_canonical_quantum_length_bohr sym_ecq
    end
;;

let is_canonical_quantum_mass_electron_mass sym_euc =
  if not (is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecq = elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_quantum_symbol_v.is_canonical_quantum_mass_electron_mass sym_ecq
    end
;;

let is_canonical_quantum_temperature_kelvin sym_euc =
  if not (is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecq = elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_quantum_symbol_v.is_canonical_quantum_temperature_kelvin sym_ecq
    end
;;

let is_canonical_quantum_time_femtosecond sym_euc =
  if not (is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecq = elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_quantum_symbol_v.is_canonical_quantum_time_femtosecond sym_ecq
    end
;;

let is_canonical_quantum_none sym_euc =
  if not (is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc)
  then false
  else
    begin
      let sym_ecq = elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc in
      Elementary_fence_units_canonical_quantum_symbol_v.is_canonical_quantum_none sym_ecq
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol sym_ecc = 
  Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol sym_ecc
;;

let elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol sym_ecq = 
  Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol sym_ecq
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let canonical_classical_action_kilocalorie_second = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol Elementary_fence_units_canonical_classical_symbol_v.canonical_classical_action_kilocalorie_second;;

let canonical_classical_angle_radian = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol Elementary_fence_units_canonical_classical_symbol_v.canonical_classical_angle_radian;;

let canonical_classical_charge_coulomb = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol Elementary_fence_units_canonical_classical_symbol_v.canonical_classical_charge_coulomb;;

let canonical_classical_energy_kilocalorie = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol Elementary_fence_units_canonical_classical_symbol_v.canonical_classical_energy_kilocalorie;;

let canonical_classical_length_angstrom = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol Elementary_fence_units_canonical_classical_symbol_v.canonical_classical_length_angstrom;;

let canonical_classical_mass_electron_mass = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol Elementary_fence_units_canonical_classical_symbol_v.canonical_classical_mass_electron_mass;;

let canonical_classical_temperature_kelvin = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol Elementary_fence_units_canonical_classical_symbol_v.canonical_classical_temperature_kelvin;;

let canonical_classical_time_femtosecond = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol Elementary_fence_units_canonical_classical_symbol_v.canonical_classical_time_femtosecond;;

let canonical_classical_none = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol Elementary_fence_units_canonical_classical_symbol_v.canonical_classical_none;;

let canonical_quantum_action_planck_constant = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol Elementary_fence_units_canonical_quantum_symbol_v.canonical_quantum_action_planck_constant;;

let canonical_quantum_angle_radian = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol Elementary_fence_units_canonical_quantum_symbol_v.canonical_quantum_angle_radian;;

let canonical_quantum_charge_electron_charge = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol Elementary_fence_units_canonical_quantum_symbol_v.canonical_quantum_charge_electron_charge;;

let canonical_quantum_energy_hartree = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol Elementary_fence_units_canonical_quantum_symbol_v.canonical_quantum_energy_hartree;;

let canonical_quantum_length_bohr = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol Elementary_fence_units_canonical_quantum_symbol_v.canonical_quantum_length_bohr;;

let canonical_quantum_mass_electron_mass = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol Elementary_fence_units_canonical_quantum_symbol_v.canonical_quantum_mass_electron_mass;;

let canonical_quantum_temperature_kelvin = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol Elementary_fence_units_canonical_quantum_symbol_v.canonical_quantum_temperature_kelvin;;

let canonical_quantum_time_femtosecond = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol Elementary_fence_units_canonical_quantum_symbol_v.canonical_quantum_time_femtosecond;;

let canonical_quantum_none = elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol Elementary_fence_units_canonical_quantum_symbol_v.canonical_quantum_none;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_units_canonical_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_units_canonical_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol
      (Elementary_fence_units_canonical_classical_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_canonical_classical_symbol:Elementary_fence_units_canonical_classical_symbol_v.ml:make" ->
  try elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol
      (Elementary_fence_units_canonical_quantum_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_canonical_quantum_symbol:Elementary_fence_units_canonical_quantum_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_fence_units_canonical_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_units_canonical_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_units_canonical_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_units_canonical_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_units_canonical subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_units_canonical_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_units_canonical_symbol:Elementary_fence_units_canonical_symbol_v.ml:make"
;;


(** Elementary_fence_units_canonical_symbol_v at 11:52:26 on 9 May 2016. created by version v2.4 of generator *)



