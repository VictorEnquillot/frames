(** {3 Elementary_fence_units_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_units_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol sym_eua ->
    Elementary_fence_units_actual_symbol_v.name sym_eua
  | Elementary_fence_units_symbol_t.Elementary_fence_units_canonical_symbol sym_euc ->
    Elementary_fence_units_canonical_symbol_v.name sym_euc
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol sym_eua ->
  Elementary_fence_units_actual_symbol_v.string_off sym_eua
  | Elementary_fence_units_symbol_t.Elementary_fence_units_canonical_symbol sym_euc ->
  Elementary_fence_units_canonical_symbol_v.string_off sym_euc
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_efu =
  Format.sprintf "Elementary_fence_units_symbol_t.%s" (String.capitalize (name sym_efu))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_efu =
  Format.sprintf "%s \"%s\"" (longname sym_efu) (string_off sym_efu)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol = function
  | Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol sym_eua -> sym_eua
  | sym_efu -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol"
      "Elementary_fence_units_actual_symbol"
      (name sym_efu) "check"
;;

let elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol = function
  | Elementary_fence_units_symbol_t.Elementary_fence_units_canonical_symbol sym_euc -> sym_euc
  | sym_efu -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol"
      "Elementary_fence_units_canonical_symbol"
      (name sym_efu) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let elementary_fence_units_actual_action_symbol_off_elementary_fence_units_symbol sym_efu = 
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_action_symbol_off_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_symbol sym_efu = 
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_symbol sym_efu = 
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_symbol sym_efu = 
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_actual_length_symbol_off_elementary_fence_units_symbol sym_efu = 
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_symbol sym_efu = 
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_symbol sym_efu = 
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_actual_time_symbol_off_elementary_fence_units_symbol sym_efu = 
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_actual_none_symbol_off_elementary_fence_units_symbol sym_efu = 
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_none_symbol_off_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_symbol sym_efu = 
  let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
    Elementary_fence_units_canonical_symbol_v.elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc
;;

let elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_symbol sym_efu = 
  let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
    Elementary_fence_units_canonical_symbol_v.elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol = function
  | Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol = function
  | Elementary_fence_units_symbol_t.Elementary_fence_units_canonical_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_kilocalorie_second sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_kilocalorie_second sym_eua
    end
;;

let is_kilojoule_second sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_kilojoule_second sym_eua
    end
;;

let is_planck_constant sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_planck_constant sym_eua
    end
;;

let is_degree sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_degree sym_eua
    end
;;

let is_radian sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_radian sym_eua
    end
;;

let is_coulomb sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_coulomb sym_eua
    end
;;

let is_electron_charge sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_electron_charge sym_eua
    end
;;

let is_hartree sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_hartree sym_eua
    end
;;

let is_calorie sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_calorie sym_eua
    end
;;

let is_electron_volt sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_electron_volt sym_eua
    end
;;

let is_joule sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_joule sym_eua
    end
;;

let is_kilocalorie sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_kilocalorie sym_eua
    end
;;

let is_kilojoule sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_kilojoule sym_eua
    end
;;

let is_angstrom sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_angstrom sym_eua
    end
;;

let is_bohr sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_bohr sym_eua
    end
;;

let is_centimeter sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_centimeter sym_eua
    end
;;

let is_decameter sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_decameter sym_eua
    end
;;

let is_decimeter sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_decimeter sym_eua
    end
;;

let is_foot sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_foot sym_eua
    end
;;

let is_inch sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_inch sym_eua
    end
;;

let is_kilometer sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_kilometer sym_eua
    end
;;

let is_light_year sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_light_year sym_eua
    end
;;

let is_meter sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_meter sym_eua
    end
;;

let is_millimeter sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_millimeter sym_eua
    end
;;

let is_nanometer sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_nanometer sym_eua
    end
;;

let is_yard sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_yard sym_eua
    end
;;

let is_electron_mass sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_electron_mass sym_eua
    end
;;

let is_atomic_mass_unit sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_atomic_mass_unit sym_eua
    end
;;

let is_kilogram sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_kilogram sym_eua
    end
;;

let is_celsius sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_celsius sym_eua
    end
;;

let is_kelvin sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_kelvin sym_eua
    end
;;

let is_atomic_time_unit sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_atomic_time_unit sym_eua
    end
;;

let is_femtosecond sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_femtosecond sym_eua
    end
;;

let is_nanosecond sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_nanosecond sym_eua
    end
;;

let is_picosecond sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_picosecond sym_eua
    end
;;

let is_second sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_second sym_eua
    end
;;

let is_unitless sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_actual_symbol_v.is_unitless sym_eua
    end
;;

let is_canonical_classical_action_kilocalorie_second sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_classical_action_kilocalorie_second sym_euc
    end
;;

let is_canonical_classical_angle_radian sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_classical_angle_radian sym_euc
    end
;;

let is_canonical_classical_charge_coulomb sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_classical_charge_coulomb sym_euc
    end
;;

let is_canonical_classical_energy_kilocalorie sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_classical_energy_kilocalorie sym_euc
    end
;;

let is_canonical_classical_length_angstrom sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_classical_length_angstrom sym_euc
    end
;;

let is_canonical_classical_mass_electron_mass sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_classical_mass_electron_mass sym_euc
    end
;;

let is_canonical_classical_temperature_kelvin sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_classical_temperature_kelvin sym_euc
    end
;;

let is_canonical_classical_time_femtosecond sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_classical_time_femtosecond sym_euc
    end
;;

let is_canonical_classical_none sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_classical_none sym_euc
    end
;;

let is_canonical_quantum_action_planck_constant sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_quantum_action_planck_constant sym_euc
    end
;;

let is_canonical_quantum_angle_radian sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_quantum_angle_radian sym_euc
    end
;;

let is_canonical_quantum_charge_electron_charge sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_quantum_charge_electron_charge sym_euc
    end
;;

let is_canonical_quantum_energy_hartree sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_quantum_energy_hartree sym_euc
    end
;;

let is_canonical_quantum_length_bohr sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_quantum_length_bohr sym_euc
    end
;;

let is_canonical_quantum_mass_electron_mass sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_quantum_mass_electron_mass sym_euc
    end
;;

let is_canonical_quantum_temperature_kelvin sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_quantum_temperature_kelvin sym_euc
    end
;;

let is_canonical_quantum_time_femtosecond sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_quantum_time_femtosecond sym_euc
    end
;;

let is_canonical_quantum_none sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
      let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
      Elementary_fence_units_canonical_symbol_v.is_canonical_quantum_none sym_euc
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_elementary_fence_units_actual_action_symbol_off_elementary_fence_units_symbol sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
  Elementary_fence_units_actual_symbol_v.is_elementary_fence_units_actual_action_symbol_off_elementary_fence_units_actual_symbol sym_eua
    end
;;

let is_elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_symbol sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
  Elementary_fence_units_actual_symbol_v.is_elementary_fence_units_actual_angle_symbol_off_elementary_fence_units_actual_symbol sym_eua
    end
;;

let is_elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_symbol sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
  Elementary_fence_units_actual_symbol_v.is_elementary_fence_units_actual_charge_symbol_off_elementary_fence_units_actual_symbol sym_eua
    end
;;

let is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_symbol sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
  Elementary_fence_units_actual_symbol_v.is_elementary_fence_units_actual_energy_symbol_off_elementary_fence_units_actual_symbol sym_eua
    end
;;

let is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_symbol sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
  Elementary_fence_units_actual_symbol_v.is_elementary_fence_units_actual_length_symbol_off_elementary_fence_units_actual_symbol sym_eua
    end
;;

let is_elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_symbol sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
  Elementary_fence_units_actual_symbol_v.is_elementary_fence_units_actual_mass_symbol_off_elementary_fence_units_actual_symbol sym_eua
    end
;;

let is_elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_symbol sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
  Elementary_fence_units_actual_symbol_v.is_elementary_fence_units_actual_temperature_symbol_off_elementary_fence_units_actual_symbol sym_eua
    end
;;

let is_elementary_fence_units_actual_time_symbol_off_elementary_fence_units_symbol sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
  Elementary_fence_units_actual_symbol_v.is_elementary_fence_units_actual_time_symbol_off_elementary_fence_units_actual_symbol sym_eua
    end
;;

let is_elementary_fence_units_actual_none_symbol_off_elementary_fence_units_symbol sym_efu =
  if not (is_elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
  let sym_eua = elementary_fence_units_actual_symbol_off_elementary_fence_units_symbol sym_efu in
  Elementary_fence_units_actual_symbol_v.is_elementary_fence_units_actual_none_symbol_off_elementary_fence_units_actual_symbol sym_eua
    end
;;

let is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_symbol sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
  let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
  Elementary_fence_units_canonical_symbol_v.is_elementary_fence_units_canonical_classical_symbol_off_elementary_fence_units_canonical_symbol sym_euc
    end
;;

let is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_symbol sym_efu =
  if not (is_elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu)
  then false
  else
    begin
  let sym_euc = elementary_fence_units_canonical_symbol_off_elementary_fence_units_symbol sym_efu in
  Elementary_fence_units_canonical_symbol_v.is_elementary_fence_units_canonical_quantum_symbol_off_elementary_fence_units_canonical_symbol sym_euc
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol sym_eua = 
  Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol sym_euc = 
  Elementary_fence_units_symbol_t.Elementary_fence_units_canonical_symbol sym_euc
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let elementary_fence_units_symbol_of_elementary_fence_units_actual_action_symbol sym_eaa = 
  let sym_eua = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_action_symbol sym_eaa in
    elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_symbol_of_elementary_fence_units_actual_angle_symbol sym_eaa = 
  let sym_eua = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_angle_symbol sym_eaa in
    elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_symbol_of_elementary_fence_units_actual_charge_symbol sym_eac = 
  let sym_eua = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_charge_symbol sym_eac in
    elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_symbol_of_elementary_fence_units_actual_energy_symbol sym_eae = 
  let sym_eua = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_energy_symbol sym_eae in
    elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_symbol_of_elementary_fence_units_actual_length_symbol sym_eal = 
  let sym_eua = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol sym_eal in
    elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_symbol_of_elementary_fence_units_actual_mass_symbol sym_eam = 
  let sym_eua = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_mass_symbol sym_eam in
    elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_symbol_of_elementary_fence_units_actual_temperature_symbol sym_eat = 
  let sym_eua = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_temperature_symbol sym_eat in
    elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_symbol_of_elementary_fence_units_actual_time_symbol sym_eat = 
  let sym_eua = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_time_symbol sym_eat in
    elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_symbol_of_elementary_fence_units_actual_none_symbol sym_ean = 
  let sym_eua = Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_none_symbol sym_ean in
    elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol sym_eua
;;

let elementary_fence_units_symbol_of_elementary_fence_units_canonical_classical_symbol sym_ecc = 
  let sym_euc = Elementary_fence_units_canonical_symbol_v.elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_classical_symbol sym_ecc in
    elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol sym_euc
;;

let elementary_fence_units_symbol_of_elementary_fence_units_canonical_quantum_symbol sym_ecq = 
  let sym_euc = Elementary_fence_units_canonical_symbol_v.elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol sym_ecq in
    elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol sym_euc
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let kilocalorie_second = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.kilocalorie_second;;

let kilojoule_second = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.kilojoule_second;;

let planck_constant = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.planck_constant;;

let degree = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.degree;;

let radian = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.radian;;

let coulomb = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.coulomb;;

let electron_charge = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.electron_charge;;

let hartree = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.hartree;;

let calorie = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.calorie;;

let electron_volt = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.electron_volt;;

let joule = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.joule;;

let kilocalorie = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.kilocalorie;;

let kilojoule = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.kilojoule;;

let angstrom = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.angstrom;;

let bohr = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.bohr;;

let centimeter = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.centimeter;;

let decameter = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.decameter;;

let decimeter = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.decimeter;;

let foot = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.foot;;

let inch = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.inch;;

let kilometer = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.kilometer;;

let light_year = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.light_year;;

let meter = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.meter;;

let millimeter = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.millimeter;;

let nanometer = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.nanometer;;

let yard = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.yard;;

let electron_mass = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.electron_mass;;

let atomic_mass_unit = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.atomic_mass_unit;;

let kilogram = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.kilogram;;

let celsius = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.celsius;;

let kelvin = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.kelvin;;

let atomic_time_unit = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.atomic_time_unit;;

let femtosecond = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.femtosecond;;

let nanosecond = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.nanosecond;;

let picosecond = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.picosecond;;

let second = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.second;;

let unitless = elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol Elementary_fence_units_actual_symbol_v.unitless;;

let canonical_classical_action_kilocalorie_second = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_classical_action_kilocalorie_second;;

let canonical_classical_angle_radian = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_classical_angle_radian;;

let canonical_classical_charge_coulomb = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_classical_charge_coulomb;;

let canonical_classical_energy_kilocalorie = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_classical_energy_kilocalorie;;

let canonical_classical_length_angstrom = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_classical_length_angstrom;;

let canonical_classical_mass_electron_mass = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_classical_mass_electron_mass;;

let canonical_classical_temperature_kelvin = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_classical_temperature_kelvin;;

let canonical_classical_time_femtosecond = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_classical_time_femtosecond;;

let canonical_classical_none = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_classical_none;;

let canonical_quantum_action_planck_constant = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_quantum_action_planck_constant;;

let canonical_quantum_angle_radian = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_quantum_angle_radian;;

let canonical_quantum_charge_electron_charge = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_quantum_charge_electron_charge;;

let canonical_quantum_energy_hartree = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_quantum_energy_hartree;;

let canonical_quantum_length_bohr = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_quantum_length_bohr;;

let canonical_quantum_mass_electron_mass = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_quantum_mass_electron_mass;;

let canonical_quantum_temperature_kelvin = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_quantum_temperature_kelvin;;

let canonical_quantum_time_femtosecond = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_quantum_time_femtosecond;;

let canonical_quantum_none = elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol Elementary_fence_units_canonical_symbol_v.canonical_quantum_none;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_units_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_units_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_fence_units_symbol_of_elementary_fence_units_actual_symbol
      (Elementary_fence_units_actual_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_actual_symbol:Elementary_fence_units_actual_symbol_v.ml:make" ->
  try elementary_fence_units_symbol_of_elementary_fence_units_canonical_symbol
      (Elementary_fence_units_canonical_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_units_canonical_symbol:Elementary_fence_units_canonical_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_fence_units_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_units_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_units_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_units_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_units subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_units_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_units_symbol:Elementary_fence_units_symbol_v.ml:make"
;;


(** Elementary_fence_units_symbol_v at 11:52:24 on 9 May 2016. created by version v2.4 of generator *)



