(** {3 Elementary_fence_units_actual_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_units_actual_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_action_symbol sym_eaa ->
    Elementary_fence_units_actual_action_symbol_v.name sym_eaa
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol sym_eaa ->
    Elementary_fence_units_actual_angle_symbol_v.name sym_eaa
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_charge_symbol sym_eac ->
    Elementary_fence_units_actual_charge_symbol_v.name sym_eac
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_energy_symbol sym_eae ->
    Elementary_fence_units_actual_energy_symbol_v.name sym_eae
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol sym_eal ->
    Elementary_fence_units_actual_length_symbol_v.name sym_eal
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_mass_symbol sym_eam ->
    Elementary_fence_units_actual_mass_symbol_v.name sym_eam
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_temperature_symbol sym_eat ->
    Elementary_fence_units_actual_temperature_symbol_v.name sym_eat
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_time_symbol sym_eat ->
    Elementary_fence_units_actual_time_symbol_v.name sym_eat
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_none_symbol sym_ean ->
    Elementary_fence_units_actual_none_symbol_v.name sym_ean
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_action_symbol sym_eaa ->
  Elementary_fence_units_actual_action_symbol_v.string_off sym_eaa
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol sym_eaa ->
  Elementary_fence_units_actual_angle_symbol_v.string_off sym_eaa
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_charge_symbol sym_eac ->
  Elementary_fence_units_actual_charge_symbol_v.string_off sym_eac
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_energy_symbol sym_eae ->
  Elementary_fence_units_actual_energy_symbol_v.string_off sym_eae
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol sym_eal ->
  Elementary_fence_units_actual_length_symbol_v.string_off sym_eal
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_mass_symbol sym_eam ->
  Elementary_fence_units_actual_mass_symbol_v.string_off sym_eam
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_temperature_symbol sym_eat ->
  Elementary_fence_units_actual_temperature_symbol_v.string_off sym_eat
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_time_symbol sym_eat ->
  Elementary_fence_units_actual_time_symbol_v.string_off sym_eat
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_none_symbol sym_ean ->
  Elementary_fence_units_actual_none_symbol_v.string_off sym_ean
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_eua =
  Format.sprintf "Elementary_fence_units_actual_symbol_t.%s" (String.capitalize (name sym_eua))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_eua =
  Format.sprintf "%s \"%s\"" (longname sym_eua) (string_off sym_eua)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_fence_units_actual_action_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_action_symbol sym_eaa -> sym_eaa
  | sym_eua -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_actual_action_symbol_off_elementary_fence_units_actual_symbol"
      "Elementary_fence_units_actual_action_symbol"
      (name sym_eua) "check"
;;

let elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol sym_eaa -> sym_eaa
  | sym_eua -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol"
      "Elementary_fence_units_actual_angle_symbol"
      (name sym_eua) "check"
;;

let elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_charge_symbol sym_eac -> sym_eac
  | sym_eua -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_actual_symbol"
      "Elementary_fence_units_actual_charge_symbol"
      (name sym_eua) "check"
;;

let elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_energy_symbol sym_eae -> sym_eae
  | sym_eua -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol"
      "Elementary_fence_units_actual_energy_symbol"
      (name sym_eua) "check"
;;

let elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol sym_eal -> sym_eal
  | sym_eua -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol"
      "Elementary_fence_units_actual_length_symbol"
      (name sym_eua) "check"
;;

let elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_mass_symbol sym_eam -> sym_eam
  | sym_eua -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_actual_symbol"
      "Elementary_fence_units_actual_mass_symbol"
      (name sym_eua) "check"
;;

let elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_temperature_symbol sym_eat -> sym_eat
  | sym_eua -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_actual_symbol"
      "Elementary_fence_units_actual_temperature_symbol"
      (name sym_eua) "check"
;;

let elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_time_symbol sym_eat -> sym_eat
  | sym_eua -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol"
      "Elementary_fence_units_actual_time_symbol"
      (name sym_eua) "check"
;;

let elementary_fence_units_actual_none_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_none_symbol sym_ean -> sym_ean
  | sym_eua -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_actual_none_symbol_off_elementary_fence_units_actual_symbol"
      "Elementary_fence_units_actual_none_symbol"
      (name sym_eua) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_fence_units_actual_action_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_action_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_charge_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_energy_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_mass_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_temperature_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_time_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_units_actual_none_symbol_off_elementary_fence_units_actual_symbol = function
  | Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_none_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_kilocalorie_second sym_eua =
  if not (is_elementary_fence_units_actual_action_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eaa = elementary_fence_units_actual_action_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_action_symbol_v.is_kilocalorie_second sym_eaa
    end
;;

let is_kilojoule_second sym_eua =
  if not (is_elementary_fence_units_actual_action_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eaa = elementary_fence_units_actual_action_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_action_symbol_v.is_kilojoule_second sym_eaa
    end
;;

let is_planck_constant sym_eua =
  if not (is_elementary_fence_units_actual_action_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eaa = elementary_fence_units_actual_action_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_action_symbol_v.is_planck_constant sym_eaa
    end
;;

let is_degree sym_eua =
  if not (is_elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eaa = elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_angle_symbol_v.is_degree sym_eaa
    end
;;

let is_radian sym_eua =
  if not (is_elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eaa = elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_angle_symbol_v.is_radian sym_eaa
    end
;;

let is_coulomb sym_eua =
  if not (is_elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eac = elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_charge_symbol_v.is_coulomb sym_eac
    end
;;

let is_electron_charge sym_eua =
  if not (is_elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eac = elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_charge_symbol_v.is_electron_charge sym_eac
    end
;;

let is_hartree sym_eua =
  if not (is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eae = elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_energy_symbol_v.is_hartree sym_eae
    end
;;

let is_calorie sym_eua =
  if not (is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eae = elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_energy_symbol_v.is_calorie sym_eae
    end
;;

let is_electron_volt sym_eua =
  if not (is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eae = elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_energy_symbol_v.is_electron_volt sym_eae
    end
;;

let is_joule sym_eua =
  if not (is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eae = elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_energy_symbol_v.is_joule sym_eae
    end
;;

let is_kilocalorie sym_eua =
  if not (is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eae = elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_energy_symbol_v.is_kilocalorie sym_eae
    end
;;

let is_kilojoule sym_eua =
  if not (is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eae = elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_energy_symbol_v.is_kilojoule sym_eae
    end
;;

let is_angstrom sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_angstrom sym_eal
    end
;;

let is_bohr sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_bohr sym_eal
    end
;;

let is_centimeter sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_centimeter sym_eal
    end
;;

let is_decameter sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_decameter sym_eal
    end
;;

let is_decimeter sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_decimeter sym_eal
    end
;;

let is_foot sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_foot sym_eal
    end
;;

let is_inch sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_inch sym_eal
    end
;;

let is_kilometer sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_kilometer sym_eal
    end
;;

let is_light_year sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_light_year sym_eal
    end
;;

let is_meter sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_meter sym_eal
    end
;;

let is_millimeter sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_millimeter sym_eal
    end
;;

let is_nanometer sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_nanometer sym_eal
    end
;;

let is_yard sym_eua =
  if not (is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eal = elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_length_symbol_v.is_yard sym_eal
    end
;;

let is_electron_mass sym_eua =
  if not (is_elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eam = elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_mass_symbol_v.is_electron_mass sym_eam
    end
;;

let is_atomic_mass_unit sym_eua =
  if not (is_elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eam = elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_mass_symbol_v.is_atomic_mass_unit sym_eam
    end
;;

let is_kilogram sym_eua =
  if not (is_elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eam = elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_mass_symbol_v.is_kilogram sym_eam
    end
;;

let is_celsius sym_eua =
  if not (is_elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eat = elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_temperature_symbol_v.is_celsius sym_eat
    end
;;

let is_kelvin sym_eua =
  if not (is_elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eat = elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_temperature_symbol_v.is_kelvin sym_eat
    end
;;

let is_atomic_time_unit sym_eua =
  if not (is_elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eat = elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_time_symbol_v.is_atomic_time_unit sym_eat
    end
;;

let is_femtosecond sym_eua =
  if not (is_elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eat = elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_time_symbol_v.is_femtosecond sym_eat
    end
;;

let is_nanosecond sym_eua =
  if not (is_elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eat = elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_time_symbol_v.is_nanosecond sym_eat
    end
;;

let is_picosecond sym_eua =
  if not (is_elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eat = elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_time_symbol_v.is_picosecond sym_eat
    end
;;

let is_second sym_eua =
  if not (is_elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_eat = elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_time_symbol_v.is_second sym_eat
    end
;;

let is_unitless sym_eua =
  if not (is_elementary_fence_units_actual_none_symbol_off_elementary_fence_units_actual_symbol sym_eua)
  then false
  else
    begin
      let sym_ean = elementary_fence_units_actual_none_symbol_off_elementary_fence_units_actual_symbol sym_eua in
      Elementary_fence_units_actual_none_symbol_v.is_unitless sym_ean
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_action_symbol sym_eaa = 
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_action_symbol sym_eaa
;;

let elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_angle_symbol sym_eaa = 
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_angle_symbol sym_eaa
;;

let elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_charge_symbol sym_eac = 
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_charge_symbol sym_eac
;;

let elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol sym_eae = 
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_energy_symbol sym_eae
;;

let elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol sym_eal = 
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol sym_eal
;;

let elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_mass_symbol sym_eam = 
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_mass_symbol sym_eam
;;

let elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_temperature_symbol sym_eat = 
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_temperature_symbol sym_eat
;;

let elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_time_symbol sym_eat = 
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_time_symbol sym_eat
;;

let elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_none_symbol sym_ean = 
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_none_symbol sym_ean
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let kilocalorie_second = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_action_symbol Elementary_fence_units_actual_action_symbol_v.kilocalorie_second;;

let kilojoule_second = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_action_symbol Elementary_fence_units_actual_action_symbol_v.kilojoule_second;;

let planck_constant = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_action_symbol Elementary_fence_units_actual_action_symbol_v.planck_constant;;

let degree = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_angle_symbol Elementary_fence_units_actual_angle_symbol_v.degree;;

let radian = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_angle_symbol Elementary_fence_units_actual_angle_symbol_v.radian;;

let coulomb = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_charge_symbol Elementary_fence_units_actual_charge_symbol_v.coulomb;;

let electron_charge = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_charge_symbol Elementary_fence_units_actual_charge_symbol_v.electron_charge;;

let hartree = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol Elementary_fence_units_actual_energy_symbol_v.hartree;;

let calorie = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol Elementary_fence_units_actual_energy_symbol_v.calorie;;

let electron_volt = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol Elementary_fence_units_actual_energy_symbol_v.electron_volt;;

let joule = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol Elementary_fence_units_actual_energy_symbol_v.joule;;

let kilocalorie = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol Elementary_fence_units_actual_energy_symbol_v.kilocalorie;;

let kilojoule = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol Elementary_fence_units_actual_energy_symbol_v.kilojoule;;

let angstrom = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.angstrom;;

let bohr = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.bohr;;

let centimeter = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.centimeter;;

let decameter = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.decameter;;

let decimeter = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.decimeter;;

let foot = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.foot;;

let inch = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.inch;;

let kilometer = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.kilometer;;

let light_year = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.light_year;;

let meter = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.meter;;

let millimeter = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.millimeter;;

let nanometer = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.nanometer;;

let yard = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol Elementary_fence_units_actual_length_symbol_v.yard;;

let electron_mass = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_mass_symbol Elementary_fence_units_actual_mass_symbol_v.electron_mass;;

let atomic_mass_unit = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_mass_symbol Elementary_fence_units_actual_mass_symbol_v.atomic_mass_unit;;

let kilogram = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_mass_symbol Elementary_fence_units_actual_mass_symbol_v.kilogram;;

let celsius = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_temperature_symbol Elementary_fence_units_actual_temperature_symbol_v.celsius;;

let kelvin = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_temperature_symbol Elementary_fence_units_actual_temperature_symbol_v.kelvin;;

let atomic_time_unit = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_time_symbol Elementary_fence_units_actual_time_symbol_v.atomic_time_unit;;

let femtosecond = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_time_symbol Elementary_fence_units_actual_time_symbol_v.femtosecond;;

let nanosecond = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_time_symbol Elementary_fence_units_actual_time_symbol_v.nanosecond;;

let picosecond = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_time_symbol Elementary_fence_units_actual_time_symbol_v.picosecond;;

let second = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_time_symbol Elementary_fence_units_actual_time_symbol_v.second;;

let unitless = elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_none_symbol Elementary_fence_units_actual_none_symbol_v.unitless;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_units_actual_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_units_actual_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_action_symbol
      (Elementary_fence_units_actual_action_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_actual_action_symbol:Elementary_fence_units_actual_action_symbol_v.ml:make" ->
  try elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_angle_symbol
      (Elementary_fence_units_actual_angle_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_actual_angle_symbol:Elementary_fence_units_actual_angle_symbol_v.ml:make" ->
  try elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_charge_symbol
      (Elementary_fence_units_actual_charge_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_actual_charge_symbol:Elementary_fence_units_actual_charge_symbol_v.ml:make" ->
  try elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol
      (Elementary_fence_units_actual_energy_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_actual_energy_symbol:Elementary_fence_units_actual_energy_symbol_v.ml:make" ->
  try elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol
      (Elementary_fence_units_actual_length_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_actual_length_symbol:Elementary_fence_units_actual_length_symbol_v.ml:make" ->
  try elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_mass_symbol
      (Elementary_fence_units_actual_mass_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_actual_mass_symbol:Elementary_fence_units_actual_mass_symbol_v.ml:make" ->
  try elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_temperature_symbol
      (Elementary_fence_units_actual_temperature_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_actual_temperature_symbol:Elementary_fence_units_actual_temperature_symbol_v.ml:make" ->
  try elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_time_symbol
      (Elementary_fence_units_actual_time_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_actual_time_symbol:Elementary_fence_units_actual_time_symbol_v.ml:make" ->
  try elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_none_symbol
      (Elementary_fence_units_actual_none_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_actual_none_symbol:Elementary_fence_units_actual_none_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_fence_units_actual_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_units_actual_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_units_actual_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_units_actual_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_units_actual subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_units_actual_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_units_actual_symbol:Elementary_fence_units_actual_symbol_v.ml:make"
;;


(** Elementary_fence_units_actual_symbol_v at 11:52:25 on 9 May 2016. created by version v2.4 of generator *)



