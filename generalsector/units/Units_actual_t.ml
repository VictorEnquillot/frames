(** {3 Units_actual_t} *)


(** {6 Typing} *)

type units_actual =
  | Units_actual_action of Units_actual_action_t.units_actual_action
  | Units_actual_angle of Units_actual_angle_t.units_actual_angle
  | Units_actual_charge of Units_actual_charge_t.units_actual_charge
  | Units_actual_energy of Units_actual_energy_t.units_actual_energy
  | Units_actual_length of Units_actual_length_t.units_actual_length
  | Units_actual_mass of Units_actual_mass_t.units_actual_mass
  | Units_actual_temperature of Units_actual_temperature_t.units_actual_temperature
  | Units_actual_time of Units_actual_time_t.units_actual_time
  | Units_actual_none of Units_actual_none_t.units_actual_none
;;


(** Units_actual_t at 11:53:17 on 9 May 2016. created by version v2.4 of generator *)



