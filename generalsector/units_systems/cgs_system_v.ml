module Syu_t = System_units_t

let system = {
  Syu_t.title    = "CGS";
  Syu_t.a0       = 5.291772108e-11 *. 1.e2; (* Bohr radius *)
  Syu_t.c        = 299792458.0 *. 1.e2; (* light velocity *)
  Syu_t.e        = 1.60217653e-19; (* electron charge *)
  Syu_t.epsi_systemlon0 = 8.854187817e-12; (* permittivity of free space *)
  Syu_t.hbar     = 1.05457168e-34 *. 1.e5; (* hbar = h / (2 pi) *)
  Syu_t.kappa    = 8.9875516e9 *. 1.; (* kappa = 1 / (4 pi epsi_systemlon0) *)
  Syu_t.kb       = 1.3806505e-23; (* Boltzmann constant *)
  Syu_t.me       = 9.1093826e-31 *. 1.e3; (* electron mass *)
  Syu_t.na       = 6.0221415e23; (* Avogadro number *)
  Syu_t.r        = 8.314472; (* gas constant *)
  Syu_t.angle    = 1.0;
  Syu_t.charge   = 3.33564e-10;
             (* C franklin http://en.wikipedia.org/wiki/Statcoulomb *)
  Syu_t.energy   = 1.0;
  Syu_t.length   = 1.0;
  Syu_t.mass     = 1.0;
  Syu_t.temperature = 1.0;
  Syu_t.time     = 1.0;
  Syu_t.velocity = 1.0;
};;

let dimensi_systemon_unit_data = [
  "Dimensi_systemon :	Unit :		Definition :	SI";
  "length :	centimeter :	1 cm :		= 10’¡Ý2 m";
  "mass :		gram :		1 g :		= 10’¡Ý3 kg";
  "time :		second :	1 s";
  "force :	dyne :		1 dyn = 1 g·cm/s² :	= 10’¡Ý5 N";
  "energy :	erg :		1 erg = 1 g·cm²/s² :	= 10’¡Ý7 J";
  "power :	erg per second :	1 erg/s = 1 g·cm²/s³ :	= 10’¡Ý7 W";
  "pressure :\
   barye :		1 Ba = 1 dyn/cm² = 1 g/(cm·s²) :	= 10’¡Ý1 Pa";
  "viscosi_systemty :	poise :		1 P = 1 g/(cm·s) :	= 10’¡Ý1 Pa·s";
]
;;

let print ppf cgs_system = Format.fprintf ppf "@[<h>%f cgs_system@]" cgs_system
;;
