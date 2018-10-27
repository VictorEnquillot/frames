type energy_symbol =
  | Energy_kinetic_symbol of Energy_kinetic_symbol_t.energy_kinetic_symbol
  | Energy_potential_symbol of Energy_potential_symbol_t.energy_potential_symbol
  | Energy_total_symbol of Energy_total_symbol_t.energy_total_symbol
;;
