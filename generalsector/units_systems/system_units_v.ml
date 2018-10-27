module Syu_t = System_units_t

let constants_system_names = {
  Syu_t.a0_n     = "Bohr radius";
  Syu_t.c_n      = "light velocity"; 
  Syu_t.e_n      = "electron charge";
  Syu_t.epsi_systemlon0_n = "permittivity of free space";
  Syu_t.hbar_n   = "hbar = h / (2 pi)";
  Syu_t.kappa_n  = "kappa = 1 / (4 pi epsi_systemlon0)";
  Syu_t.kb_n     = "Boltzmann constant";
  Syu_t.na_n     = "Avogadro number or substance amount";
  Syu_t.me_n     = "electron mass";
  Syu_t.r_n      = "gas constant";
}
;;

let constants_system_dimensi_systemon_symbols = {
  Syu_t.a0_ds       = "L";
  Syu_t.c_ds        = "LT-1"; 
  Syu_t.e_ds        = "Q";
  Syu_t.epsi_systemlon0_ds = "Q2T2M-1L-3";
  Syu_t.hbar_ds     = "ML2T-1";
  Syu_t.kappa_ds    = "ML3Q-2T-2";
  Syu_t.kb_ds       = "ML2T-2K-1";
  Syu_t.na_ds       = "N";
  Syu_t.me_ds       = "M";
  Syu_t.r_ds        = "L";
}
;;

let base_quantities_dimensi_systemon_symbols = {
  Syu_t.angle_ds              = "A";
  Syu_t.charge_ds             = "Q";
  Syu_t.length_ds             = "L";
  Syu_t.luminous_intensi_systemty_ds = "J";
  Syu_t.mass_ds               = "M";
  Syu_t.substance_amount_ds   = "N";
  Syu_t.temperature_ds        = "K";
  Syu_t.time_ds               = "T";
}
;;

let base_quantities_names = {
  Syu_t.angle_n              = "angle";
  Syu_t.charge_n             = "charge";
  Syu_t.length_n             = "length";
  Syu_t.luminous_intensi_systemty_n = "luminous intensi_systemty";
  Syu_t.mass_n               = "mass";
  Syu_t.substance_amount_n   = "amount of substance";
  Syu_t.temperature_n        = "thermodynamic temperature";
  Syu_t.time_n               = "time";
}
;;

let base_quantities_symbols = {
  Syu_t.angle_s              = "a";
  Syu_t.charge_s             = "q";
  Syu_t.length_s             = "l";
  Syu_t.luminous_intensi_systemty_s = "iv";
  Syu_t.mass_s               = "m";
  Syu_t.substance_amount_s   = "n";
  Syu_t.temperature_s        = "T";
  Syu_t.time_s               = "t";
}
;;

let base_quantities_si_system_units = {
  Syu_t.angle_si_system              = "radian";
  Syu_t.charge_si_system             = "coulomb";
  Syu_t.length_si_system             = "meter";
  Syu_t.luminous_intensi_systemty_si_system = "candela";
  Syu_t.mass_si_system               = "kilogram";
  Syu_t.substance_amount_si_system   = "mole";
  Syu_t.temperature_si_system        = "kelvin";
  Syu_t.time_si_system               = "second";
}
;;

(** As an example:
    get_energy : 'a system -> 'a measure
    let get_energy au_system = au_system.hbar +. 1.0;;
*)
