type energy_value =
  | Energy_kinetic_value of Energy_kinetic_value_t.energy_kinetic_value
  | Energy_potential_value of Energy_potential_value_t.energy_potential_value
  | Energy_total_value of Energy_total_value_t.energy_total_value
;;
