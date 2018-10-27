(** {3 Elementary_fence_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_symbol_t.Elementary_fence_basic_symbol sym_efb ->
    Elementary_fence_basic_symbol_v.name sym_efb
  | Elementary_fence_symbol_t.Elementary_fence_color_symbol sym_efc ->
    Elementary_fence_color_symbol_v.name sym_efc
  | Elementary_fence_symbol_t.Elementary_fence_units_symbol sym_efu ->
    Elementary_fence_units_symbol_v.name sym_efu
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_symbol_t.Elementary_fence_basic_symbol sym_efb ->
  Elementary_fence_basic_symbol_v.string_off sym_efb
  | Elementary_fence_symbol_t.Elementary_fence_color_symbol sym_efc ->
  Elementary_fence_color_symbol_v.string_off sym_efc
  | Elementary_fence_symbol_t.Elementary_fence_units_symbol sym_efu ->
  Elementary_fence_units_symbol_v.string_off sym_efu
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_efe =
  Format.sprintf "Elementary_fence_symbol_t.%s" (String.capitalize (name sym_efe))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_efe =
  Format.sprintf "%s \"%s\"" (longname sym_efe) (string_off sym_efe)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_fence_basic_symbol_off_elementary_fence_symbol = function
  | Elementary_fence_symbol_t.Elementary_fence_basic_symbol sym_efb -> sym_efb
  | sym_efe -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_basic_symbol_off_elementary_fence_symbol"
      "Elementary_fence_basic_symbol"
      (name sym_efe) "check"
;;

let elementary_fence_color_symbol_off_elementary_fence_symbol = function
  | Elementary_fence_symbol_t.Elementary_fence_color_symbol sym_efc -> sym_efc
  | sym_efe -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_color_symbol_off_elementary_fence_symbol"
      "Elementary_fence_color_symbol"
      (name sym_efe) "check"
;;

let elementary_fence_units_symbol_off_elementary_fence_symbol = function
  | Elementary_fence_symbol_t.Elementary_fence_units_symbol sym_efu -> sym_efu
  | sym_efe -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_symbol_off_elementary_fence_symbol"
      "Elementary_fence_units_symbol"
      (name sym_efe) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let elementary_fence_basic_boolean_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_basic_symbol_v.elementary_fence_basic_boolean_symbol_off_elementary_fence_basic_symbol sym_efb
;;

let elementary_fence_basic_float_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_basic_symbol_v.elementary_fence_basic_float_symbol_off_elementary_fence_basic_symbol sym_efb
;;

let elementary_fence_basic_integer_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_basic_symbol_v.elementary_fence_basic_integer_symbol_off_elementary_fence_basic_symbol sym_efb
;;

let elementary_fence_basic_string_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_basic_symbol_v.elementary_fence_basic_string_symbol_off_elementary_fence_basic_symbol sym_efb
;;

let elementary_fence_units_actual_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_actual_action_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_actual_action_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_actual_angle_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_actual_charge_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_actual_energy_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_actual_length_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_actual_length_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_actual_mass_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_actual_temperature_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_actual_time_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_actual_time_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_actual_none_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_actual_none_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_canonical_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_canonical_classical_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_symbol sym_efe = 
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
    Elementary_fence_units_symbol_v.elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_symbol sym_efu
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_fence_basic_symbol_off_elementary_fence_symbol = function
  | Elementary_fence_symbol_t.Elementary_fence_basic_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_color_symbol_off_elementary_fence_symbol = function
  | Elementary_fence_symbol_t.Elementary_fence_color_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_units_symbol_off_elementary_fence_symbol = function
  | Elementary_fence_symbol_t.Elementary_fence_units_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_boolean sym_efe =
  if not (is_elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_basic_symbol_v.is_boolean sym_efb
    end
;;

let is_float sym_efe =
  if not (is_elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_basic_symbol_v.is_float sym_efb
    end
;;

let is_integer sym_efe =
  if not (is_elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_basic_symbol_v.is_integer sym_efb
    end
;;

let is_string sym_efe =
  if not (is_elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_basic_symbol_v.is_string sym_efb
    end
;;

let is_black sym_efe =
  if not (is_elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efc = elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_color_symbol_v.is_black sym_efc
    end
;;

let is_blue sym_efe =
  if not (is_elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efc = elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_color_symbol_v.is_blue sym_efc
    end
;;

let is_green sym_efe =
  if not (is_elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efc = elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_color_symbol_v.is_green sym_efc
    end
;;

let is_orange sym_efe =
  if not (is_elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efc = elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_color_symbol_v.is_orange sym_efc
    end
;;

let is_pink sym_efe =
  if not (is_elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efc = elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_color_symbol_v.is_pink sym_efc
    end
;;

let is_red sym_efe =
  if not (is_elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efc = elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_color_symbol_v.is_red sym_efc
    end
;;

let is_white sym_efe =
  if not (is_elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efc = elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_color_symbol_v.is_white sym_efc
    end
;;

let is_yellow sym_efe =
  if not (is_elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efc = elementary_fence_color_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_color_symbol_v.is_yellow sym_efc
    end
;;

let is_kilocalorie_second sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_kilocalorie_second sym_efu
    end
;;

let is_kilojoule_second sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_kilojoule_second sym_efu
    end
;;

let is_planck_constant sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_planck_constant sym_efu
    end
;;

let is_degree sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_degree sym_efu
    end
;;

let is_radian sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_radian sym_efu
    end
;;

let is_coulomb sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_coulomb sym_efu
    end
;;

let is_electron_charge sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_electron_charge sym_efu
    end
;;

let is_hartree sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_hartree sym_efu
    end
;;

let is_calorie sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_calorie sym_efu
    end
;;

let is_electron_volt sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_electron_volt sym_efu
    end
;;

let is_joule sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_joule sym_efu
    end
;;

let is_kilocalorie sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_kilocalorie sym_efu
    end
;;

let is_kilojoule sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_kilojoule sym_efu
    end
;;

let is_angstrom sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_angstrom sym_efu
    end
;;

let is_bohr sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_bohr sym_efu
    end
;;

let is_centimeter sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_centimeter sym_efu
    end
;;

let is_decameter sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_decameter sym_efu
    end
;;

let is_decimeter sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_decimeter sym_efu
    end
;;

let is_foot sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_foot sym_efu
    end
;;

let is_inch sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_inch sym_efu
    end
;;

let is_kilometer sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_kilometer sym_efu
    end
;;

let is_light_year sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_light_year sym_efu
    end
;;

let is_meter sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_meter sym_efu
    end
;;

let is_millimeter sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_millimeter sym_efu
    end
;;

let is_nanometer sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_nanometer sym_efu
    end
;;

let is_yard sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_yard sym_efu
    end
;;

let is_electron_mass sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_electron_mass sym_efu
    end
;;

let is_atomic_mass_unit sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_atomic_mass_unit sym_efu
    end
;;

let is_kilogram sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_kilogram sym_efu
    end
;;

let is_celsius sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_celsius sym_efu
    end
;;

let is_kelvin sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_kelvin sym_efu
    end
;;

let is_atomic_time_unit sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_atomic_time_unit sym_efu
    end
;;

let is_femtosecond sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_femtosecond sym_efu
    end
;;

let is_nanosecond sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_nanosecond sym_efu
    end
;;

let is_picosecond sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_picosecond sym_efu
    end
;;

let is_second sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_second sym_efu
    end
;;

let is_unitless sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_unitless sym_efu
    end
;;

let is_canonical_classical_action_kilocalorie_second sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_classical_action_kilocalorie_second sym_efu
    end
;;

let is_canonical_classical_angle_radian sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_classical_angle_radian sym_efu
    end
;;

let is_canonical_classical_charge_coulomb sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_classical_charge_coulomb sym_efu
    end
;;

let is_canonical_classical_energy_kilocalorie sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_classical_energy_kilocalorie sym_efu
    end
;;

let is_canonical_classical_length_angstrom sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_classical_length_angstrom sym_efu
    end
;;

let is_canonical_classical_mass_electron_mass sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_classical_mass_electron_mass sym_efu
    end
;;

let is_canonical_classical_temperature_kelvin sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_classical_temperature_kelvin sym_efu
    end
;;

let is_canonical_classical_time_femtosecond sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_classical_time_femtosecond sym_efu
    end
;;

let is_canonical_classical_none sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_classical_none sym_efu
    end
;;

let is_canonical_quantum_action_planck_constant sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_quantum_action_planck_constant sym_efu
    end
;;

let is_canonical_quantum_angle_radian sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_quantum_angle_radian sym_efu
    end
;;

let is_canonical_quantum_charge_electron_charge sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_quantum_charge_electron_charge sym_efu
    end
;;

let is_canonical_quantum_energy_hartree sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_quantum_energy_hartree sym_efu
    end
;;

let is_canonical_quantum_length_bohr sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_quantum_length_bohr sym_efu
    end
;;

let is_canonical_quantum_mass_electron_mass sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_quantum_mass_electron_mass sym_efu
    end
;;

let is_canonical_quantum_temperature_kelvin sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_quantum_temperature_kelvin sym_efu
    end
;;

let is_canonical_quantum_time_femtosecond sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_quantum_time_femtosecond sym_efu
    end
;;

let is_canonical_quantum_none sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
      let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
      Elementary_fence_units_symbol_v.is_canonical_quantum_none sym_efu
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_elementary_fence_basic_boolean_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_basic_symbol_v.is_elementary_fence_basic_boolean_symbol_off_elementary_fence_basic_symbol sym_efb
    end
;;

let is_elementary_fence_basic_float_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_basic_symbol_v.is_elementary_fence_basic_float_symbol_off_elementary_fence_basic_symbol sym_efb
    end
;;

let is_elementary_fence_basic_integer_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_basic_symbol_v.is_elementary_fence_basic_integer_symbol_off_elementary_fence_basic_symbol sym_efb
    end
;;

let is_elementary_fence_basic_string_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efb = elementary_fence_basic_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_basic_symbol_v.is_elementary_fence_basic_string_symbol_off_elementary_fence_basic_symbol sym_efb
    end
;;

let is_elementary_fence_units_actual_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_actual_action_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_actual_action_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_actual_angle_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_actual_charge_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_actual_length_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_actual_mass_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_actual_temperature_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_actual_time_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_actual_time_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_actual_none_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_actual_none_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_canonical_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;

let is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_symbol sym_efe =
  if not (is_elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe)
  then false
  else
    begin
  let sym_efu = elementary_fence_units_symbol_off_elementary_fence_symbol sym_efe in
  Elementary_fence_units_symbol_v.is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_symbol sym_efu
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_fence_symbol_of_elementary_fence_basic_symbol sym_efb = 
  Elementary_fence_symbol_t.Elementary_fence_basic_symbol sym_efb
;;

let elementary_fence_symbol_of_elementary_fence_color_symbol sym_efc = 
  Elementary_fence_symbol_t.Elementary_fence_color_symbol sym_efc
;;

let elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu = 
  Elementary_fence_symbol_t.Elementary_fence_units_symbol sym_efu
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let elementary_fence_symbol_of_elementary_fence_basic_boolean_symbol sym_ebb = 
  let sym_efb = Elementary_fence_basic_symbol_v.elementary_fence_basic_symbol_of_elementary_fence_basic_boolean_symbol sym_ebb in
    elementary_fence_symbol_of_elementary_fence_basic_symbol sym_efb
;;

let elementary_fence_symbol_of_elementary_fence_basic_float_symbol sym_ebf = 
  let sym_efb = Elementary_fence_basic_symbol_v.elementary_fence_basic_symbol_of_elementary_fence_basic_float_symbol sym_ebf in
    elementary_fence_symbol_of_elementary_fence_basic_symbol sym_efb
;;

let elementary_fence_symbol_of_elementary_fence_basic_integer_symbol sym_ebi = 
  let sym_efb = Elementary_fence_basic_symbol_v.elementary_fence_basic_symbol_of_elementary_fence_basic_integer_symbol sym_ebi in
    elementary_fence_symbol_of_elementary_fence_basic_symbol sym_efb
;;

let elementary_fence_symbol_of_elementary_fence_basic_string_symbol sym_ebs = 
  let sym_efb = Elementary_fence_basic_symbol_v.elementary_fence_basic_symbol_of_elementary_fence_basic_string_symbol sym_ebs in
    elementary_fence_symbol_of_elementary_fence_basic_symbol sym_efb
;;

let elementary_fence_symbol_of_elementary_fence_units_actual_symbol sym_eua = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol sym_eua in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_actual_action_symbol sym_eaa = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_action_symbol sym_eaa in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_actual_angle_symbol sym_eaa = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_angle_symbol sym_eaa in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_actual_charge_symbol sym_eac = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_charge_symbol sym_eac in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_actual_energy_symbol sym_eae = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_energy_symbol sym_eae in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_actual_length_symbol sym_eal = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_length_symbol sym_eal in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_actual_mass_symbol sym_eam = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_mass_symbol sym_eam in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_actual_temperature_symbol sym_eat = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_temperature_symbol sym_eat in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_actual_time_symbol sym_eat = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_time_symbol sym_eat in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_actual_none_symbol sym_ean = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_none_symbol sym_ean in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_canonical_symbol sym_euc = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol sym_euc in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_canonical_classical_symbol sym_ecc = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_canonical_classical_symbol sym_ecc in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;

let elementary_fence_symbol_of_elementary_fence_units_canonical_quantum_symbol sym_ecq = 
  let sym_efu = Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_canonical_quantum_symbol sym_ecq in
    elementary_fence_symbol_of_elementary_fence_units_symbol sym_efu
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let boolean = elementary_fence_symbol_of_elementary_fence_basic_symbol Elementary_fence_basic_symbol_v.boolean;;

let float = elementary_fence_symbol_of_elementary_fence_basic_symbol Elementary_fence_basic_symbol_v.float;;

let integer = elementary_fence_symbol_of_elementary_fence_basic_symbol Elementary_fence_basic_symbol_v.integer;;

let string = elementary_fence_symbol_of_elementary_fence_basic_symbol Elementary_fence_basic_symbol_v.string;;

let black = elementary_fence_symbol_of_elementary_fence_color_symbol Elementary_fence_color_symbol_v.black;;

let blue = elementary_fence_symbol_of_elementary_fence_color_symbol Elementary_fence_color_symbol_v.blue;;

let green = elementary_fence_symbol_of_elementary_fence_color_symbol Elementary_fence_color_symbol_v.green;;

let orange = elementary_fence_symbol_of_elementary_fence_color_symbol Elementary_fence_color_symbol_v.orange;;

let pink = elementary_fence_symbol_of_elementary_fence_color_symbol Elementary_fence_color_symbol_v.pink;;

let red = elementary_fence_symbol_of_elementary_fence_color_symbol Elementary_fence_color_symbol_v.red;;

let white = elementary_fence_symbol_of_elementary_fence_color_symbol Elementary_fence_color_symbol_v.white;;

let yellow = elementary_fence_symbol_of_elementary_fence_color_symbol Elementary_fence_color_symbol_v.yellow;;

let kilocalorie_second = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.kilocalorie_second;;

let kilojoule_second = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.kilojoule_second;;

let planck_constant = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.planck_constant;;

let degree = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.degree;;

let radian = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.radian;;

let coulomb = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.coulomb;;

let electron_charge = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.electron_charge;;

let hartree = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.hartree;;

let calorie = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.calorie;;

let electron_volt = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.electron_volt;;

let joule = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.joule;;

let kilocalorie = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.kilocalorie;;

let kilojoule = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.kilojoule;;

let angstrom = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.angstrom;;

let bohr = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.bohr;;

let centimeter = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.centimeter;;

let decameter = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.decameter;;

let decimeter = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.decimeter;;

let foot = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.foot;;

let inch = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.inch;;

let kilometer = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.kilometer;;

let light_year = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.light_year;;

let meter = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.meter;;

let millimeter = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.millimeter;;

let nanometer = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.nanometer;;

let yard = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.yard;;

let electron_mass = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.electron_mass;;

let atomic_mass_unit = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.atomic_mass_unit;;

let kilogram = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.kilogram;;

let celsius = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.celsius;;

let kelvin = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.kelvin;;

let atomic_time_unit = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.atomic_time_unit;;

let femtosecond = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.femtosecond;;

let nanosecond = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.nanosecond;;

let picosecond = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.picosecond;;

let second = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.second;;

let unitless = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.unitless;;

let canonical_classical_action_kilocalorie_second = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_classical_action_kilocalorie_second;;

let canonical_classical_angle_radian = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_classical_angle_radian;;

let canonical_classical_charge_coulomb = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_classical_charge_coulomb;;

let canonical_classical_energy_kilocalorie = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_classical_energy_kilocalorie;;

let canonical_classical_length_angstrom = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_classical_length_angstrom;;

let canonical_classical_mass_electron_mass = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_classical_mass_electron_mass;;

let canonical_classical_temperature_kelvin = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_classical_temperature_kelvin;;

let canonical_classical_time_femtosecond = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_classical_time_femtosecond;;

let canonical_classical_none = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_classical_none;;

let canonical_quantum_action_planck_constant = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_quantum_action_planck_constant;;

let canonical_quantum_angle_radian = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_quantum_angle_radian;;

let canonical_quantum_charge_electron_charge = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_quantum_charge_electron_charge;;

let canonical_quantum_energy_hartree = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_quantum_energy_hartree;;

let canonical_quantum_length_bohr = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_quantum_length_bohr;;

let canonical_quantum_mass_electron_mass = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_quantum_mass_electron_mass;;

let canonical_quantum_temperature_kelvin = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_quantum_temperature_kelvin;;

let canonical_quantum_time_femtosecond = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_quantum_time_femtosecond;;

let canonical_quantum_none = elementary_fence_symbol_of_elementary_fence_units_symbol Elementary_fence_units_symbol_v.canonical_quantum_none;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_fence_symbol_of_elementary_fence_basic_symbol
      (Elementary_fence_basic_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_basic_symbol:Elementary_fence_basic_symbol_v.ml:make" ->
  try elementary_fence_symbol_of_elementary_fence_color_symbol
      (Elementary_fence_color_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_color_symbol:Elementary_fence_color_symbol_v.ml:make" ->
  try elementary_fence_symbol_of_elementary_fence_units_symbol
      (Elementary_fence_units_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_symbol:Elementary_fence_units_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_fence_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_symbol:Elementary_fence_symbol_v.ml:make"
;;


(** Elementary_fence_symbol_v at 11:52:23 on 9 May 2016. created by version v2.4 of generator *)



