(** {3 Units_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Units_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Units_symbol_t.Units_action_symbol sym_uac ->
    Units_action_symbol_v.name sym_uac
  | Units_symbol_t.Units_angle_symbol sym_uan ->
    Units_angle_symbol_v.name sym_uan
  | Units_symbol_t.Units_charge_symbol sym_uch ->
    Units_charge_symbol_v.name sym_uch
  | Units_symbol_t.Units_energy_symbol sym_uen ->
    Units_energy_symbol_v.name sym_uen
  | Units_symbol_t.Units_length_symbol sym_ule ->
    Units_length_symbol_v.name sym_ule
  | Units_symbol_t.Units_mass_symbol sym_uma ->
    Units_mass_symbol_v.name sym_uma
  | Units_symbol_t.Units_temperature_symbol sym_ute ->
    Units_temperature_symbol_v.name sym_ute
  | Units_symbol_t.Units_time_symbol sym_uti ->
    Units_time_symbol_v.name sym_uti
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Units_symbol_t.Units_action_symbol sym_uac ->
  Units_action_symbol_v.string_off sym_uac
  | Units_symbol_t.Units_angle_symbol sym_uan ->
  Units_angle_symbol_v.string_off sym_uan
  | Units_symbol_t.Units_charge_symbol sym_uch ->
  Units_charge_symbol_v.string_off sym_uch
  | Units_symbol_t.Units_energy_symbol sym_uen ->
  Units_energy_symbol_v.string_off sym_uen
  | Units_symbol_t.Units_length_symbol sym_ule ->
  Units_length_symbol_v.string_off sym_ule
  | Units_symbol_t.Units_mass_symbol sym_uma ->
  Units_mass_symbol_v.string_off sym_uma
  | Units_symbol_t.Units_temperature_symbol sym_ute ->
  Units_temperature_symbol_v.string_off sym_ute
  | Units_symbol_t.Units_time_symbol sym_uti ->
  Units_time_symbol_v.string_off sym_uti
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_uni =
  Format.sprintf "Units_symbol_t.%s" (String.capitalize (name sym_uni))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_uni =
  Format.sprintf "%s \"%s\"" (longname sym_uni) (string_off sym_uni)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let units_action_symbol_off_units_symbol = function
  | Units_symbol_t.Units_action_symbol sym_uac -> sym_uac
  | sym_uni -> Error_messages_v.print_fatal_error
      nam_cod "units_action_symbol_off_units_symbol"
      "Units_action_symbol"
      (name sym_uni) "check"
;;

let units_angle_symbol_off_units_symbol = function
  | Units_symbol_t.Units_angle_symbol sym_uan -> sym_uan
  | sym_uni -> Error_messages_v.print_fatal_error
      nam_cod "units_angle_symbol_off_units_symbol"
      "Units_angle_symbol"
      (name sym_uni) "check"
;;

let units_charge_symbol_off_units_symbol = function
  | Units_symbol_t.Units_charge_symbol sym_uch -> sym_uch
  | sym_uni -> Error_messages_v.print_fatal_error
      nam_cod "units_charge_symbol_off_units_symbol"
      "Units_charge_symbol"
      (name sym_uni) "check"
;;

let units_energy_symbol_off_units_symbol = function
  | Units_symbol_t.Units_energy_symbol sym_uen -> sym_uen
  | sym_uni -> Error_messages_v.print_fatal_error
      nam_cod "units_energy_symbol_off_units_symbol"
      "Units_energy_symbol"
      (name sym_uni) "check"
;;

let units_length_symbol_off_units_symbol = function
  | Units_symbol_t.Units_length_symbol sym_ule -> sym_ule
  | sym_uni -> Error_messages_v.print_fatal_error
      nam_cod "units_length_symbol_off_units_symbol"
      "Units_length_symbol"
      (name sym_uni) "check"
;;

let units_mass_symbol_off_units_symbol = function
  | Units_symbol_t.Units_mass_symbol sym_uma -> sym_uma
  | sym_uni -> Error_messages_v.print_fatal_error
      nam_cod "units_mass_symbol_off_units_symbol"
      "Units_mass_symbol"
      (name sym_uni) "check"
;;

let units_temperature_symbol_off_units_symbol = function
  | Units_symbol_t.Units_temperature_symbol sym_ute -> sym_ute
  | sym_uni -> Error_messages_v.print_fatal_error
      nam_cod "units_temperature_symbol_off_units_symbol"
      "Units_temperature_symbol"
      (name sym_uni) "check"
;;

let units_time_symbol_off_units_symbol = function
  | Units_symbol_t.Units_time_symbol sym_uti -> sym_uti
  | sym_uni -> Error_messages_v.print_fatal_error
      nam_cod "units_time_symbol_off_units_symbol"
      "Units_time_symbol"
      (name sym_uni) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_units_action_symbol_off_units_symbol = function
  | Units_symbol_t.Units_action_symbol _ -> true
  | _ -> false
;;

let is_units_angle_symbol_off_units_symbol = function
  | Units_symbol_t.Units_angle_symbol _ -> true
  | _ -> false
;;

let is_units_charge_symbol_off_units_symbol = function
  | Units_symbol_t.Units_charge_symbol _ -> true
  | _ -> false
;;

let is_units_energy_symbol_off_units_symbol = function
  | Units_symbol_t.Units_energy_symbol _ -> true
  | _ -> false
;;

let is_units_length_symbol_off_units_symbol = function
  | Units_symbol_t.Units_length_symbol _ -> true
  | _ -> false
;;

let is_units_mass_symbol_off_units_symbol = function
  | Units_symbol_t.Units_mass_symbol _ -> true
  | _ -> false
;;

let is_units_temperature_symbol_off_units_symbol = function
  | Units_symbol_t.Units_temperature_symbol _ -> true
  | _ -> false
;;

let is_units_time_symbol_off_units_symbol = function
  | Units_symbol_t.Units_time_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_planck_constant sym_uni =
  if not (is_units_action_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uac = units_action_symbol_off_units_symbol sym_uni in
      Units_action_symbol_v.is_planck_constant sym_uac
    end
;;

let is_degree sym_uni =
  if not (is_units_angle_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uan = units_angle_symbol_off_units_symbol sym_uni in
      Units_angle_symbol_v.is_degree sym_uan
    end
;;

let is_radian sym_uni =
  if not (is_units_angle_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uan = units_angle_symbol_off_units_symbol sym_uni in
      Units_angle_symbol_v.is_radian sym_uan
    end
;;

let is_coulomb sym_uni =
  if not (is_units_charge_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uch = units_charge_symbol_off_units_symbol sym_uni in
      Units_charge_symbol_v.is_coulomb sym_uch
    end
;;

let is_electron sym_uni =
  if not (is_units_charge_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uch = units_charge_symbol_off_units_symbol sym_uni in
      Units_charge_symbol_v.is_electron sym_uch
    end
;;

let is_atomic_units_energy sym_uni =
  if not (is_units_energy_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uen = units_energy_symbol_off_units_symbol sym_uni in
      Units_energy_symbol_v.is_atomic_units_energy sym_uen
    end
;;

let is_calorie sym_uni =
  if not (is_units_energy_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uen = units_energy_symbol_off_units_symbol sym_uni in
      Units_energy_symbol_v.is_calorie sym_uen
    end
;;

let is_electron_volt sym_uni =
  if not (is_units_energy_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uen = units_energy_symbol_off_units_symbol sym_uni in
      Units_energy_symbol_v.is_electron_volt sym_uen
    end
;;

let is_joule sym_uni =
  if not (is_units_energy_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uen = units_energy_symbol_off_units_symbol sym_uni in
      Units_energy_symbol_v.is_joule sym_uen
    end
;;

let is_kilocalorie sym_uni =
  if not (is_units_energy_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uen = units_energy_symbol_off_units_symbol sym_uni in
      Units_energy_symbol_v.is_kilocalorie sym_uen
    end
;;

let is_kilojoule sym_uni =
  if not (is_units_energy_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uen = units_energy_symbol_off_units_symbol sym_uni in
      Units_energy_symbol_v.is_kilojoule sym_uen
    end
;;

let is_angstrom sym_uni =
  if not (is_units_length_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_ule = units_length_symbol_off_units_symbol sym_uni in
      Units_length_symbol_v.is_angstrom sym_ule
    end
;;

let is_bohr sym_uni =
  if not (is_units_length_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_ule = units_length_symbol_off_units_symbol sym_uni in
      Units_length_symbol_v.is_bohr sym_ule
    end
;;

let is_meter sym_uni =
  if not (is_units_length_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_ule = units_length_symbol_off_units_symbol sym_uni in
      Units_length_symbol_v.is_meter sym_ule
    end
;;

let is_atomic_units_mass sym_uni =
  if not (is_units_mass_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uma = units_mass_symbol_off_units_symbol sym_uni in
      Units_mass_symbol_v.is_atomic_units_mass sym_uma
    end
;;

let is_gram sym_uni =
  if not (is_units_mass_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uma = units_mass_symbol_off_units_symbol sym_uni in
      Units_mass_symbol_v.is_gram sym_uma
    end
;;

let is_celsius sym_uni =
  if not (is_units_temperature_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_ute = units_temperature_symbol_off_units_symbol sym_uni in
      Units_temperature_symbol_v.is_celsius sym_ute
    end
;;

let is_kelvin sym_uni =
  if not (is_units_temperature_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_ute = units_temperature_symbol_off_units_symbol sym_uni in
      Units_temperature_symbol_v.is_kelvin sym_ute
    end
;;

let is_femtosecond sym_uni =
  if not (is_units_time_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uti = units_time_symbol_off_units_symbol sym_uni in
      Units_time_symbol_v.is_femtosecond sym_uti
    end
;;

let is_nanosecond sym_uni =
  if not (is_units_time_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uti = units_time_symbol_off_units_symbol sym_uni in
      Units_time_symbol_v.is_nanosecond sym_uti
    end
;;

let is_picosecond sym_uni =
  if not (is_units_time_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uti = units_time_symbol_off_units_symbol sym_uni in
      Units_time_symbol_v.is_picosecond sym_uti
    end
;;

let is_second sym_uni =
  if not (is_units_time_symbol_off_units_symbol sym_uni)
  then false
  else
    begin
      let sym_uti = units_time_symbol_off_units_symbol sym_uni in
      Units_time_symbol_v.is_second sym_uti
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let units_symbol_of_units_action_symbol sym_uac = 
  Units_symbol_t.Units_action_symbol sym_uac
;;

let units_symbol_of_units_angle_symbol sym_uan = 
  Units_symbol_t.Units_angle_symbol sym_uan
;;

let units_symbol_of_units_charge_symbol sym_uch = 
  Units_symbol_t.Units_charge_symbol sym_uch
;;

let units_symbol_of_units_energy_symbol sym_uen = 
  Units_symbol_t.Units_energy_symbol sym_uen
;;

let units_symbol_of_units_length_symbol sym_ule = 
  Units_symbol_t.Units_length_symbol sym_ule
;;

let units_symbol_of_units_mass_symbol sym_uma = 
  Units_symbol_t.Units_mass_symbol sym_uma
;;

let units_symbol_of_units_temperature_symbol sym_ute = 
  Units_symbol_t.Units_temperature_symbol sym_ute
;;

let units_symbol_of_units_time_symbol sym_uti = 
  Units_symbol_t.Units_time_symbol sym_uti
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let planck_constant = units_symbol_of_units_action_symbol Units_action_symbol_v.planck_constant;;

let degree = units_symbol_of_units_angle_symbol Units_angle_symbol_v.degree;;

let radian = units_symbol_of_units_angle_symbol Units_angle_symbol_v.radian;;

let coulomb = units_symbol_of_units_charge_symbol Units_charge_symbol_v.coulomb;;

let electron = units_symbol_of_units_charge_symbol Units_charge_symbol_v.electron;;

let atomic_units_energy = units_symbol_of_units_energy_symbol Units_energy_symbol_v.atomic_units_energy;;

let calorie = units_symbol_of_units_energy_symbol Units_energy_symbol_v.calorie;;

let electron_volt = units_symbol_of_units_energy_symbol Units_energy_symbol_v.electron_volt;;

let joule = units_symbol_of_units_energy_symbol Units_energy_symbol_v.joule;;

let kilocalorie = units_symbol_of_units_energy_symbol Units_energy_symbol_v.kilocalorie;;

let kilojoule = units_symbol_of_units_energy_symbol Units_energy_symbol_v.kilojoule;;

let angstrom = units_symbol_of_units_length_symbol Units_length_symbol_v.angstrom;;

let bohr = units_symbol_of_units_length_symbol Units_length_symbol_v.bohr;;

let meter = units_symbol_of_units_length_symbol Units_length_symbol_v.meter;;

let atomic_units_mass = units_symbol_of_units_mass_symbol Units_mass_symbol_v.atomic_units_mass;;

let gram = units_symbol_of_units_mass_symbol Units_mass_symbol_v.gram;;

let celsius = units_symbol_of_units_temperature_symbol Units_temperature_symbol_v.celsius;;

let kelvin = units_symbol_of_units_temperature_symbol Units_temperature_symbol_v.kelvin;;

let femtosecond = units_symbol_of_units_time_symbol Units_time_symbol_v.femtosecond;;

let nanosecond = units_symbol_of_units_time_symbol Units_time_symbol_v.nanosecond;;

let picosecond = units_symbol_of_units_time_symbol Units_time_symbol_v.picosecond;;

let second = units_symbol_of_units_time_symbol Units_time_symbol_v.second;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Units_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try units_symbol_of_units_action_symbol
      (Units_action_symbol_v.make nam s)
  with Failure "Not_a_units_action_symbol:Units_action_symbol_v.ml:make" ->
  try units_symbol_of_units_angle_symbol
      (Units_angle_symbol_v.make nam s)
  with Failure "Not_a_units_angle_symbol:Units_angle_symbol_v.ml:make" ->
  try units_symbol_of_units_charge_symbol
      (Units_charge_symbol_v.make nam s)
  with Failure "Not_a_units_charge_symbol:Units_charge_symbol_v.ml:make" ->
  try units_symbol_of_units_energy_symbol
      (Units_energy_symbol_v.make nam s)
  with Failure "Not_a_units_energy_symbol:Units_energy_symbol_v.ml:make" ->
  try units_symbol_of_units_length_symbol
      (Units_length_symbol_v.make nam s)
  with Failure "Not_a_units_length_symbol:Units_length_symbol_v.ml:make" ->
  try units_symbol_of_units_mass_symbol
      (Units_mass_symbol_v.make nam s)
  with Failure "Not_a_units_mass_symbol:Units_mass_symbol_v.ml:make" ->
  try units_symbol_of_units_temperature_symbol
      (Units_temperature_symbol_v.make nam s)
  with Failure "Not_a_units_temperature_symbol:Units_temperature_symbol_v.ml:make" ->
  try units_symbol_of_units_time_symbol
      (Units_time_symbol_v.make nam s)
  with Failure "Not_a_units_time_symbol:Units_time_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Units_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units subtype" nam s)
      "it does not exists"
      "Check file Units_symbol_v.ml"
    in
    failwith "Not_a_units_symbol:Units_symbol_v.ml:make"
;;


(** Units_symbol_v at 12:42:31 on 17 Oct 2013. created by version v2.3 of generator *)



