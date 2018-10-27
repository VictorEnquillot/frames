(** {3 Wavefunction_closure_symbol_t} *)


(** {6 Typing_for_symbol} *)

type wavefunction_closure_symbol =
  | Wavefunction_closure_coefficient_symbol of Wavefunction_closure_coefficient_symbol_t.wavefunction_closure_coefficient_symbol
  | Wavefunction_closure_jastrow_factor_symbol of Wavefunction_closure_jastrow_factor_symbol_t.wavefunction_closure_jastrow_factor_symbol
  | Wavefunction_closure_spatial_orbital_symbol of Wavefunction_closure_spatial_orbital_symbol_t.wavefunction_closure_spatial_orbital_symbol
  | Wavefunction_closure_spin_symbol of Wavefunction_closure_spin_symbol_t.wavefunction_closure_spin_symbol
;;


(** Wavefunction_closure_symbol_t at 11:11:42 on 27 Mar 2015. created by version v2.3 of generator *)



