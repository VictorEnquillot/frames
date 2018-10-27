(** {3 Units_actual_v} *)


(** {6 Documenting} *)

let documentation () = 
  [
   "Current : UNI:Units_actual_v";
   "Needs :";
   "Needed-by :";
   "What-is-it :";
   "How-is-it-done :";
   "Example: ";
   "Author : François Colonna 08 janvier 2017 at 13:47:46+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Units_actual_t.Units_actual_action eaa ->
    Units_actual_action_v.name eaa
  | Units_actual_t.Units_actual_angle eaa ->
    Units_actual_angle_v.name eaa
  | Units_actual_t.Units_actual_charge eac ->
    Units_actual_charge_v.name eac
  | Units_actual_t.Units_actual_energy eae ->
    Units_actual_energy_v.name eae
  | Units_actual_t.Units_actual_length eal ->
    Units_actual_length_v.name eal
  | Units_actual_t.Units_actual_mass eam ->
    Units_actual_mass_v.name eam
  | Units_actual_t.Units_actual_temperature eat ->
    Units_actual_temperature_v.name eat
  | Units_actual_t.Units_actual_time eat ->
    Units_actual_time_v.name eat
  | Units_actual_t.Units_actual_none ean ->
    Units_actual_none_v.name ean
;;

(** {6 Dimensioning} *)

let dimension = function
  | Units_actual_t.Units_actual_action eaa ->
  Units_actual_action_v.dimension eaa
  | Units_actual_t.Units_actual_angle eaa ->
  Units_actual_angle_v.dimension eaa
  | Units_actual_t.Units_actual_charge eac ->
  Units_actual_charge_v.dimension eac
  | Units_actual_t.Units_actual_energy eae ->
  Units_actual_energy_v.dimension eae
  | Units_actual_t.Units_actual_length eal ->
  Units_actual_length_v.dimension eal
  | Units_actual_t.Units_actual_mass eam ->
  Units_actual_mass_v.dimension eam
  | Units_actual_t.Units_actual_temperature eat ->
  Units_actual_temperature_v.dimension eat
  | Units_actual_t.Units_actual_time eat ->
  Units_actual_time_v.dimension eat
  | Units_actual_t.Units_actual_none ean ->
  Units_actual_none_v.dimension ean
;;

(** {6 Shortnaming} *)

let shortname = function
  | Units_actual_t.Units_actual_action eaa ->
  Units_actual_action_v.shortname eaa
  | Units_actual_t.Units_actual_angle eaa ->
  Units_actual_angle_v.shortname eaa
  | Units_actual_t.Units_actual_charge eac ->
  Units_actual_charge_v.shortname eac
  | Units_actual_t.Units_actual_energy eae ->
  Units_actual_energy_v.shortname eae
  | Units_actual_t.Units_actual_length eal ->
  Units_actual_length_v.shortname eal
  | Units_actual_t.Units_actual_mass eam ->
  Units_actual_mass_v.shortname eam
  | Units_actual_t.Units_actual_temperature eat ->
  Units_actual_temperature_v.shortname eat
  | Units_actual_t.Units_actual_time eat ->
  Units_actual_time_v.shortname eat
  | Units_actual_t.Units_actual_none ean ->
  Units_actual_none_v.shortname ean
;;

(** {6 Kinding} *)

let kind uac = "actual";;

(** {6 Longnaming} *)

let longname eua =
  Format.sprintf "Units_actual_t.%s" (String.capitalize (name eua))
;;


(** {6 Fullnaming} *)

let fullname eua =
  Format.sprintf "%s \"%s\"" (longname eua) (dimension eua)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let units_actual_action_off_units_actual = function
  | Units_actual_t.Units_actual_action eaa -> eaa
  | eua -> Error_messages_v.print_fatal_error
      nam_mod "units_actual_action_off_units_actual"
      "Units_actual_action"
      (name eua) "check"
;;

let units_actual_angle_off_units_actual = function
  | Units_actual_t.Units_actual_angle eaa -> eaa
  | eua -> Error_messages_v.print_fatal_error
      nam_mod "units_actual_angle_off_units_actual"
      "Units_actual_angle"
      (name eua) "check"
;;

let units_actual_charge_off_units_actual = function
  | Units_actual_t.Units_actual_charge eac -> eac
  | eua -> Error_messages_v.print_fatal_error
      nam_mod "units_actual_charge_off_units_actual"
      "Units_actual_charge"
      (name eua) "check"
;;

let units_actual_energy_off_units_actual = function
  | Units_actual_t.Units_actual_energy eae -> eae
  | eua -> Error_messages_v.print_fatal_error
      nam_mod "units_actual_energy_off_units_actual"
      "Units_actual_energy"
      (name eua) "check"
;;

let units_actual_length_off_units_actual = function
  | Units_actual_t.Units_actual_length eal -> eal
  | eua -> Error_messages_v.print_fatal_error
      nam_mod "units_actual_length_off_units_actual"
      "Units_actual_length"
      (name eua) "check"
;;

let units_actual_mass_off_units_actual = function
  | Units_actual_t.Units_actual_mass eam -> eam
  | eua -> Error_messages_v.print_fatal_error
      nam_mod "units_actual_mass_off_units_actual"
      "Units_actual_mass"
      (name eua) "check"
;;

let units_actual_temperature_off_units_actual = function
  | Units_actual_t.Units_actual_temperature eat -> eat
  | eua -> Error_messages_v.print_fatal_error
      nam_mod "units_actual_temperature_off_units_actual"
      "Units_actual_temperature"
      (name eua) "check"
;;

let units_actual_time_off_units_actual = function
  | Units_actual_t.Units_actual_time eat -> eat
  | eua -> Error_messages_v.print_fatal_error
      nam_mod "units_actual_time_off_units_actual"
      "Units_actual_time"
      (name eua) "check"
;;

let units_actual_none_off_units_actual = function
  | Units_actual_t.Units_actual_none ean -> ean
  | eua -> Error_messages_v.print_fatal_error
      nam_mod "units_actual_none_off_units_actual"
      "Units_actual_none"
      (name eua) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_units_actual_action_off_units_actual = function
  | Units_actual_t.Units_actual_action _ -> true
  | _ -> false
;;

let is_units_actual_angle_off_units_actual = function
  | Units_actual_t.Units_actual_angle _ -> true
  | _ -> false
;;

let is_units_actual_charge_off_units_actual = function
  | Units_actual_t.Units_actual_charge _ -> true
  | _ -> false
;;

let is_units_actual_energy_off_units_actual = function
  | Units_actual_t.Units_actual_energy _ -> true
  | _ -> false
;;

let is_units_actual_length_off_units_actual = function
  | Units_actual_t.Units_actual_length _ -> true
  | _ -> false
;;

let is_units_actual_mass_off_units_actual = function
  | Units_actual_t.Units_actual_mass _ -> true
  | _ -> false
;;

let is_units_actual_temperature_off_units_actual = function
  | Units_actual_t.Units_actual_temperature _ -> true
  | _ -> false
;;

let is_units_actual_time_off_units_actual = function
  | Units_actual_t.Units_actual_time _ -> true
  | _ -> false
;;

let is_units_actual_none_off_units_actual = function
  | Units_actual_t.Units_actual_none _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_kilocalorie_second eua =
  if not (is_units_actual_action_off_units_actual eua)
  then false
  else
    begin
      let eaa = units_actual_action_off_units_actual eua in
      Units_actual_action_v.is_kilocalorie_second eaa
    end
;;

let is_kilojoule_second eua =
  if not (is_units_actual_action_off_units_actual eua)
  then false
  else
    begin
      let eaa = units_actual_action_off_units_actual eua in
      Units_actual_action_v.is_kilojoule_second eaa
    end
;;

let is_planck_constant eua =
  if not (is_units_actual_action_off_units_actual eua)
  then false
  else
    begin
      let eaa = units_actual_action_off_units_actual eua in
      Units_actual_action_v.is_planck_constant eaa
    end
;;

let is_degree eua =
  if not (is_units_actual_angle_off_units_actual eua)
  then false
  else
    begin
      let eaa = units_actual_angle_off_units_actual eua in
      Units_actual_angle_v.is_degree eaa
    end
;;

let is_radian eua =
  if not (is_units_actual_angle_off_units_actual eua)
  then false
  else
    begin
      let eaa = units_actual_angle_off_units_actual eua in
      Units_actual_angle_v.is_radian eaa
    end
;;

let is_coulomb eua =
  if not (is_units_actual_charge_off_units_actual eua)
  then false
  else
    begin
      let eac = units_actual_charge_off_units_actual eua in
      Units_actual_charge_v.is_coulomb eac
    end
;;

let is_electron_charge eua =
  if not (is_units_actual_charge_off_units_actual eua)
  then false
  else
    begin
      let eac = units_actual_charge_off_units_actual eua in
      Units_actual_charge_v.is_electron_charge eac
    end
;;

let is_hartree eua =
  if not (is_units_actual_energy_off_units_actual eua)
  then false
  else
    begin
      let eae = units_actual_energy_off_units_actual eua in
      Units_actual_energy_v.is_hartree eae
    end
;;

let is_calorie eua =
  if not (is_units_actual_energy_off_units_actual eua)
  then false
  else
    begin
      let eae = units_actual_energy_off_units_actual eua in
      Units_actual_energy_v.is_calorie eae
    end
;;

let is_electron_volt eua =
  if not (is_units_actual_energy_off_units_actual eua)
  then false
  else
    begin
      let eae = units_actual_energy_off_units_actual eua in
      Units_actual_energy_v.is_electron_volt eae
    end
;;

let is_joule eua =
  if not (is_units_actual_energy_off_units_actual eua)
  then false
  else
    begin
      let eae = units_actual_energy_off_units_actual eua in
      Units_actual_energy_v.is_joule eae
    end
;;

let is_kilocalorie eua =
  if not (is_units_actual_energy_off_units_actual eua)
  then false
  else
    begin
      let eae = units_actual_energy_off_units_actual eua in
      Units_actual_energy_v.is_kilocalorie eae
    end
;;

let is_kilojoule eua =
  if not (is_units_actual_energy_off_units_actual eua)
  then false
  else
    begin
      let eae = units_actual_energy_off_units_actual eua in
      Units_actual_energy_v.is_kilojoule eae
    end
;;

let is_angstrom eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_angstrom eal
    end
;;

let is_bohr eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_bohr eal
    end
;;

let is_centimeter eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_centimeter eal
    end
;;

let is_decameter eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_decameter eal
    end
;;

let is_decimeter eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_decimeter eal
    end
;;

let is_foot eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_foot eal
    end
;;

let is_inch eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_inch eal
    end
;;

let is_kilometer eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_kilometer eal
    end
;;

let is_light_year eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_light_year eal
    end
;;

let is_meter eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_meter eal
    end
;;

let is_millimeter eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_millimeter eal
    end
;;

let is_nanometer eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_nanometer eal
    end
;;

let is_yard eua =
  if not (is_units_actual_length_off_units_actual eua)
  then false
  else
    begin
      let eal = units_actual_length_off_units_actual eua in
      Units_actual_length_v.is_yard eal
    end
;;

let is_electron_mass eua =
  if not (is_units_actual_mass_off_units_actual eua)
  then false
  else
    begin
      let eam = units_actual_mass_off_units_actual eua in
      Units_actual_mass_v.is_electron_mass eam
    end
;;

let is_atomic_mass_unit eua =
  if not (is_units_actual_mass_off_units_actual eua)
  then false
  else
    begin
      let eam = units_actual_mass_off_units_actual eua in
      Units_actual_mass_v.is_atomic_mass_unit eam
    end
;;

let is_kilogram eua =
  if not (is_units_actual_mass_off_units_actual eua)
  then false
  else
    begin
      let eam = units_actual_mass_off_units_actual eua in
      Units_actual_mass_v.is_kilogram eam
    end
;;

let is_celsius eua =
  if not (is_units_actual_temperature_off_units_actual eua)
  then false
  else
    begin
      let eat = units_actual_temperature_off_units_actual eua in
      Units_actual_temperature_v.is_celsius eat
    end
;;

let is_kelvin eua =
  if not (is_units_actual_temperature_off_units_actual eua)
  then false
  else
    begin
      let eat = units_actual_temperature_off_units_actual eua in
      Units_actual_temperature_v.is_kelvin eat
    end
;;

let is_atomic_time_unit eua =
  if not (is_units_actual_time_off_units_actual eua)
  then false
  else
    begin
      let eat = units_actual_time_off_units_actual eua in
      Units_actual_time_v.is_atomic_time_unit eat
    end
;;

let is_femtosecond eua =
  if not (is_units_actual_time_off_units_actual eua)
  then false
  else
    begin
      let eat = units_actual_time_off_units_actual eua in
      Units_actual_time_v.is_femtosecond eat
    end
;;

let is_nanosecond eua =
  if not (is_units_actual_time_off_units_actual eua)
  then false
  else
    begin
      let eat = units_actual_time_off_units_actual eua in
      Units_actual_time_v.is_nanosecond eat
    end
;;

let is_picosecond eua =
  if not (is_units_actual_time_off_units_actual eua)
  then false
  else
    begin
      let eat = units_actual_time_off_units_actual eua in
      Units_actual_time_v.is_picosecond eat
    end
;;

let is_second eua =
  if not (is_units_actual_time_off_units_actual eua)
  then false
  else
    begin
      let eat = units_actual_time_off_units_actual eua in
      Units_actual_time_v.is_second eat
    end
;;

let is_unitless eua =
  if not (is_units_actual_none_off_units_actual eua)
  then false
  else
    begin
      let ean = units_actual_none_off_units_actual eua in
      Units_actual_none_v.is_unitless ean
    end
;;


(** {6 Querying_grandson_ofstring} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let units_actual_of_units_actual_action eaa = 
  Units_actual_t.Units_actual_action eaa
;;

let units_actual_of_units_actual_angle eaa = 
  Units_actual_t.Units_actual_angle eaa
;;

let units_actual_of_units_actual_charge eac = 
  Units_actual_t.Units_actual_charge eac
;;

let units_actual_of_units_actual_energy eae = 
  Units_actual_t.Units_actual_energy eae
;;

let units_actual_of_units_actual_length eal = 
  Units_actual_t.Units_actual_length eal
;;

let units_actual_of_units_actual_mass eam = 
  Units_actual_t.Units_actual_mass eam
;;

let units_actual_of_units_actual_temperature eat = 
  Units_actual_t.Units_actual_temperature eat
;;

let units_actual_of_units_actual_time eat = 
  Units_actual_t.Units_actual_time eat
;;

let units_actual_of_units_actual_none ean = 
  Units_actual_t.Units_actual_none ean
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let kilocalorie_second = units_actual_of_units_actual_action Units_actual_action_v.kilocalorie_second;;

let kilojoule_second = units_actual_of_units_actual_action Units_actual_action_v.kilojoule_second;;

let planck_constant = units_actual_of_units_actual_action Units_actual_action_v.planck_constant;;

let degree = units_actual_of_units_actual_angle Units_actual_angle_v.degree;;

let radian = units_actual_of_units_actual_angle Units_actual_angle_v.radian;;

let coulomb = units_actual_of_units_actual_charge Units_actual_charge_v.coulomb;;

let electron_charge = units_actual_of_units_actual_charge Units_actual_charge_v.electron_charge;;

let hartree = units_actual_of_units_actual_energy Units_actual_energy_v.hartree;;

let calorie = units_actual_of_units_actual_energy Units_actual_energy_v.calorie;;

let electron_volt = units_actual_of_units_actual_energy Units_actual_energy_v.electron_volt;;

let joule = units_actual_of_units_actual_energy Units_actual_energy_v.joule;;

let kilocalorie = units_actual_of_units_actual_energy Units_actual_energy_v.kilocalorie;;

let kilojoule = units_actual_of_units_actual_energy Units_actual_energy_v.kilojoule;;

let angstrom = units_actual_of_units_actual_length Units_actual_length_v.angstrom;;

let bohr = units_actual_of_units_actual_length Units_actual_length_v.bohr;;

let centimeter = units_actual_of_units_actual_length Units_actual_length_v.centimeter;;

let decameter = units_actual_of_units_actual_length Units_actual_length_v.decameter;;

let decimeter = units_actual_of_units_actual_length Units_actual_length_v.decimeter;;

let foot = units_actual_of_units_actual_length Units_actual_length_v.foot;;

let inch = units_actual_of_units_actual_length Units_actual_length_v.inch;;

let kilometer = units_actual_of_units_actual_length Units_actual_length_v.kilometer;;

let light_year = units_actual_of_units_actual_length Units_actual_length_v.light_year;;

let meter = units_actual_of_units_actual_length Units_actual_length_v.meter;;

let millimeter = units_actual_of_units_actual_length Units_actual_length_v.millimeter;;

let nanometer = units_actual_of_units_actual_length Units_actual_length_v.nanometer;;

let yard = units_actual_of_units_actual_length Units_actual_length_v.yard;;

let electron_mass = units_actual_of_units_actual_mass Units_actual_mass_v.electron_mass;;

let atomic_mass_unit = units_actual_of_units_actual_mass Units_actual_mass_v.atomic_mass_unit;;

let kilogram = units_actual_of_units_actual_mass Units_actual_mass_v.kilogram;;

let celsius = units_actual_of_units_actual_temperature Units_actual_temperature_v.celsius;;

let kelvin = units_actual_of_units_actual_temperature Units_actual_temperature_v.kelvin;;

let atomic_time_unit = units_actual_of_units_actual_time Units_actual_time_v.atomic_time_unit;;

let femtosecond = units_actual_of_units_actual_time Units_actual_time_v.femtosecond;;

let nanosecond = units_actual_of_units_actual_time Units_actual_time_v.nanosecond;;

let picosecond = units_actual_of_units_actual_time Units_actual_time_v.picosecond;;

let second = units_actual_of_units_actual_time Units_actual_time_v.second;;

let unitless = units_actual_of_units_actual_none Units_actual_none_v.unitless;;


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Units_actual_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_actual_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  try units_actual_of_units_actual_action
      (Units_actual_action_v.make nam s)
  with Failure "Not_a_units_actual_action:Units_actual_action_v.ml:make" ->
  try units_actual_of_units_actual_angle
      (Units_actual_angle_v.make nam s)
  with Failure "Not_a_units_actual_angle:Units_actual_angle_v.ml:make" ->
  try units_actual_of_units_actual_charge
      (Units_actual_charge_v.make nam s)
  with Failure "Not_a_units_actual_charge:Units_actual_charge_v.ml:make" ->
  try units_actual_of_units_actual_energy
      (Units_actual_energy_v.make nam s)
  with Failure "Not_a_units_actual_energy:Units_actual_energy_v.ml:make" ->
  try units_actual_of_units_actual_length
      (Units_actual_length_v.make nam s)
  with Failure "Not_a_units_actual_length:Units_actual_length_v.ml:make" ->
  try units_actual_of_units_actual_mass
      (Units_actual_mass_v.make nam s)
  with Failure "Not_a_units_actual_mass:Units_actual_mass_v.ml:make" ->
  try units_actual_of_units_actual_temperature
      (Units_actual_temperature_v.make nam s)
  with Failure "Not_a_units_actual_temperature:Units_actual_temperature_v.ml:make" ->
  try units_actual_of_units_actual_time
      (Units_actual_time_v.make nam s)
  with Failure "Not_a_units_actual_time:Units_actual_time_v.ml:make" ->
  try units_actual_of_units_actual_none
      (Units_actual_none_v.make nam s)
  with Failure "Not_a_units_actual_none:Units_actual_none_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Units_actual_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_actual_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_actual_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_actual_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_actual subtype" nam s)
      "it does not exists"
      "Check file Units_actual_v.ml"
    in
    failwith "Not_a_units_actual:Units_actual_v.ml:make"
;;


(** Units_actual_v at 11:52:25 on 9 May 2016. created by version v2.4 of generator *)

