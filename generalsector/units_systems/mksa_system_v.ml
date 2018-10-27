
module Syu_t = System_units_t

let system = {
  Syu_t.title    = "MKSA";
  Syu_t.a0       = 5.291772108e-11; (* Bohr radius *)
  Syu_t.c        = 299792458.0    ; (* light velocity *)
  Syu_t.e        = 1.60217653e-19 ; (* electron charge *)
  Syu_t.epsi_systemlon0 = 8.854187817e-12; (* permittivity of free space *)
  Syu_t.hbar     = 1.05457168e-34 ; (* hbar = h / (2 pi) *)
  Syu_t.kb       = 1.3806505e-23  ; (* Boltzmann constant *)
  Syu_t.kappa    = 8.9875516e9    ; (* kappa = 1 / (4 pi epsi_systemlon0) *)
  Syu_t.me       = 9.1093826e-31  ; (* electron mass *)
  Syu_t.na       = 6.0221415e23   ; (* Avogadro number *)
  Syu_t.r        = 8.314472       ; (* gas constant *)
  Syu_t.angle    = 1.0;
  Syu_t.charge   = 1.0;
  Syu_t.energy   = 1.0;
  Syu_t.length   = 1.0;
  Syu_t.mass     = 1.0;
  Syu_t.temperature = 1.0;
  Syu_t.time     = 1.0;
  Syu_t.velocity = 1.0;
};;

(* http://en.wikipedia.org/wiki/Physi_systemcal_constants *)
let universal_constants = [
  "characteristic impedance of vacuum :\
   Z_0 = mu0 c : 376.730313461 Ohm : defined";
  "electric constant (permittivity of free space) :\
   epsi_systemlon0 = 1 / (mu0 c^2 ) : 8.854187817 1.e-12) FN7m^(-1) : defined";
  "magnetic constant (permeability of free space) :
   mu0 : 4 pi 1.e-7 N A^(-2) : 1.2566370614 1.e-6 NN7A^(-2) : defined";
  "gravitational constant Newtonian constant of gravitation :
   bigg : 6.6742(10) 1.e-11)m^(3)N7kg^(-1)N7s^(-2) : 1.5 1.e-4)";
  "Planck's constant :
   h : 6.6260693(11) 1.e-34) JN7s : 1.7 1.e-7";
  "Dirac's constant :
   hbar = h / (2 pi) : 1.05457168(18) 1.e-34) J s : 1.7 1.e-7";
  "speed of light in vacuum :
   c : 299792458 m s^(-1): defined";
];;

let electromagnetic_constants = [
  "Bohr-Procopiu magneton :\
   mu_B = e hbar / 2 me : 927.400949(80) 1.e-26) J T^(-1) : 8.6 1.e-8";
  "conductance quantum :\
   G_0 = 2 e^2 / h : 7.748091733(26) 1.e-5) S : 3.3 1.e-9";
  "Coulomb's constant :\
   kappa = 1 / (4 pi epsi_systemlon0) :\
     8.987742438 1.e9) N m^(2) coulomb^(-2) : defined";
  "elementary charge :\
   e :1.60217653(14) 1.e-19) coulomb : 8.5 1.e-8";
  "Josephson constant :\
   K_J = (2 e) / h : 483597.879(41) 1.e9) Hz V^(-1) : 8.5 1.e-8";
  "magnetic flux quantum : phi_0 = h / (2 e) :\
   2.06783372(18) 1.e-15) Wb : 8.5 1.e-8";
  "nuclear magneton :\
   mu_N = ( e hbar) / (2 m_p) : 5.05078343(43) 1.e-27) J T^(-1) : 8.6 1.e-8";
  "resi_systemstance quantum :\
   R_0 = h / (2 e^2 ) : 12906.403725(43) Ohm : 3.3 1.e-9";
  "von Klitzing constant :\
   R_K = h / e^2 : 25812.807449(86) Ohm : 3.3 1.e-9";
];;

let atomic_and_nuclear_constants_text = [
  "Bohr radius :\
   a0 = alpha / (4 pi Rinfinity) : 0.5291772108(18) 1.e-10) m : 3.3 1.e-9";
  "Fermi coupling constant :\
   G_F /((hbar c)^3) : 1.16639(1) 1.e-5) GeV^(-2) : 8.6 1.e-6]";
  "fine-structure constant :\
   alpha = ( mu0 e^2 c )/(2 h) = e^2 / (4 pi epsi_systemlon0y hbar c) :\
    7.297352568(24) 1.e-3) : 3.3 1.e-9";
  "Hartree energy :\
   E_h = 2 Rinfinity h c : 4.35974417(75) 1.e-18 J : 1.7 1.e-7";
  "quantum of circulation :\
   h / 2 me  :	3.636947550(24) 1.e-4) m2 s^(-1) : 6.7 1.e-9";
  "Rydberg constant :\
   Rinfinity = (alpha^2) me c /( 2 h) :
     10973731.568525(73) m^(-1) : 6.6 1.e-12)";
  "Thomson cross section :\
   (8 pi / 3)(r_e)^2 : 0.665245873(13) 1.e-28) m^2 : 2.0 1.e-8";
  "weak mixing angle :\
   (si_systemn theta_W)^2 = 1 - (m_W / m_Z)^2  : 0.22215(76) : 3.4 1.e-3)";
]
;;

(* http://en.wikipedia.org/wiki/Physi_systemcal_constant
   #Table_of_physi_systemco-chemical_constants *)
let physi_systemco_chemical_constants = [
  "atomic mass unit (unified atomic mass unit amu) :\
   mu = 1 u : 1.66053886(28) 1.e-27) kg : 1.7 1.e-7]";
  "Avogadro's number :\
   NA, L : 6.0221415(10) 1.e23) : 1.7 1.e-7";
  "Boltzmann constant :\
   k = R / NA : 1.3806505(24) 1.e-23) J K^(-1)  : 1.8 1.e-6";
  "Faraday constant :\
   F = NA e : 96 485.3383(83) coulomb mol^(-1) : 8.6 1.e-8";
  "first radiation constant :\
   c_1 = 2 pi h c^2 : 3.74177138(64) 1.e-16) W m^2 : 1.7 1.e-7!";
  "gas constant :\
   R : 8.314472(15) J K^(-1) mol^(-1) : 1.7 1.e-6";
  "second radiation constant :\
   c_2 = (h c )/ k : 1.4387752(25) 1.e-2) m K : 1.7 1.e-6";
  "Stefan-Boltzmann constant :\
   si_systemgma = (pi^2 /60) ( k^4 /(hbar^3 c^2)) :\
     5.670400(40) 1.e-8 W m^(-2) K^(-4) : 7.0 1.e-6";
  "Wien displacement law constant :\
   b = (h c / k) : 4.965114231 : 2.8977685(51) 1.e-3) m K : 1.7 1.e-6";
]
;;

let adopted_values = [
  "conventional value of Josephson constant2 :\
   K_J_90 : 483597.9  1.e9) Hz V^(-1) : defined";
  "conventional value of von Klitzing constant3 :\
   R_K_90 : 25812.807 Ohm : defined";
  "molar mass constant :\
   Mu = M_12C / 12 : 1 1.e-3) kg mol^(-1) : defined";
  "molar mass of carbon 12 :\
   M_12C = N_A m_12C : 12 1.e-3) kg mol^($(B!](B1) : defined";
  "standard acceleration of gravity (gee, free fall on Earth) :\
   g_n : 9.80665 m s^(-2) : defined";
  "standard atmosphere :\
   atm : 101325 Pa : defined";
]
;;

let print ppf mks = 
  Format.fprintf ppf "@[<h>%f mksa_system@]" mks
;;
