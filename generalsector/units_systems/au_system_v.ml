module Syu_t = System_units_t

let system = {
  Syu_t.title  = "AU";
  Syu_t.a0     = 1.0;          (* Bohr radius *)
  Syu_t.c      = 137.03599911; (* light velocity *)
  Syu_t.e      = 1.0;          (* electron charge *)
  Syu_t.epsi_systemlon0 = 0.0795774715459476728; (* permittivity of free space *)
  Syu_t.hbar   = 1.0;          (* hbar = h / (2 pi) *)
  Syu_t.kb     = 0.16605388631270121e-23; (* Bolzmann constant *)
  Syu_t.kappa  = 1.0;          (* kappa = 1. /. (4. *. pi *. epsi_systemlon0) *)
  Syu_t.me     = 1.0;          (* electron mass *)
  Syu_t.na     = 6.0221415e23; (* Avogadro number *)
  Syu_t.r      = 1.0;          (* gas constant *)
  Syu_t.angle  = 1.0;
  Syu_t.charge = 1.0;
  Syu_t.energy = 1.0;
  Syu_t.length = 1.0;
  Syu_t.mass   = 1.0;
  Syu_t.temperature = 1.0;
  Syu_t.time   = 1.0;
  Syu_t.velocity = 1.0;
};;

(* http://en.wikipedia.org/wiki/Hartree_energy
   eh = 4.359 744 17(75)e-18 J = 27.211 3845(23)
   eV = 2 Ry = 627.509 391 kcal/mol
*)
(* http://en.wikipedia.org/wiki/Atomic_units#Fundamental_units *)

(*
let print ppf fmt m = Format.fprintf ppf "@[<h>%(%f%) au_system@]" fmt m
;;
*)

let print ppf msr = 
  Format.fprintf ppf "@[<h>%f au_system@]" msr
;;

let atomic_units_text = [
  "Quantity : Name : Symbol : SI value : Planck unit scale";
  "length : Bohr radius : a0 : 5.291772108(18) e-11 m : 10^(-35) m";
  "mass : electron rest mass : me : 9.1093826(16) e-31 kg : 10^(-8) kg";
  "charge : elementary charge : e :\
   1.60217653(14) 1.e-19 coulomb : 1.e-18) coulomb";
  "angular momentum Dirac's constant :\
   hbar = h /(2 pi) : 1.05457168(18) 1.e-34) J s :	(same)";
  "energy : Hartree energy : eh : 4.35974417(75) 1.e-18) J : 1.e9) J";
  "electrostatic force constant Coulomb's constant :\
   1 /(4 pi epsi_systemlon0) : 8.9875516e9 coulomb^(-2) N m^2 : (same)";
]
;;

let physi_systemcal_quantities_au_system_text = [
  "time : hbar/eh : 2.418884326505(16) 1.e-17) s : 1.e-43) s";
  "velocity :  (a0 eh)/hbar : 2.187 691 2633(73) 1.e6) m s^(-1) : 1.e8) m s-1";
  "force : eh / a0 : 8.2387225(14) 1.e-8) N : 1.e44) N";
  "current : (e eh) / hbar : 6.62361782(57) 1.e-3) A : 1.e26) A";
  "temperature : eh / kB : 3.1577464(55) 1.e5) K : 1.e32) K";
]
;;

let plank_units_text = [
  "Constant :	Symbol : Dimensi_systemon";
  "speed of light in vacuum : c  : L T-1";
  "Gravitational constant : bigg : M-1 L3 T-2";
  "Dirac's constant or reduced Planck's constant : hbar = h/(2 pi) : M L2 T-1";
  "Coulomb force constant : 1/(4 pi epsi_systemlon0) : Q-2 M L3 T-2";
  "Boltzmann constant : k : M L2 T ??? K-1";  (* K is Theta Temperature *)
];;
(* http://en.wikipedia.org/wiki/Planck_unit *)
