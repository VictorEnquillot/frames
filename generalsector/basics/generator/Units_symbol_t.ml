(** {3 Units_symbol_t} *)


(** {6 Typing_for_symbol} *)

type units_symbol =
  | Units_action_symbol of Units_action_symbol_t.units_action_symbol
  | Units_angle_symbol of Units_angle_symbol_t.units_angle_symbol
  | Units_charge_symbol of Units_charge_symbol_t.units_charge_symbol
  | Units_energy_symbol of Units_energy_symbol_t.units_energy_symbol
  | Units_length_symbol of Units_length_symbol_t.units_length_symbol
  | Units_mass_symbol of Units_mass_symbol_t.units_mass_symbol
  | Units_temperature_symbol of Units_temperature_symbol_t.units_temperature_symbol
  | Units_time_symbol of Units_time_symbol_t.units_time_symbol
;;


(** Units_symbol_t at 12:42:37 on 17 Oct 2013. created by version v2.3 of generator *)



