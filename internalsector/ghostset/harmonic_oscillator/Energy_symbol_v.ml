let name = function
  | Energy_symbol_t.Energy_kinetic_symbol sym_eki -> 
      Energy_kinetic_symbol_v.name sym_eki
  | Energy_symbol_t.Energy_potential_symbol sym_epo ->
      Energy_potential_symbol_v.name sym_epo
  | Energy_symbol_t.Energy_total_symbol sym_eto -> 
      Energy_total_symbol_v.name sym_eto
;;
