(** {3 Systems of units and systems of constants.} *)

(** References

    {{:http://en.wikipedia.org/wiki/Atomic_units}
       http://en.wikipedia.org/wiki/Atomic_units}
    {{:http://en.wikipedia.org/wiki/Fine_structure_constant}
       http://en.wikipedia.org/wiki/Fine_structure_constant}
    {{:http://en.wikipedia.org/wiki/Boltzmann%27s_constan}
       http://en.wikipedia.org/wiki/Boltzmann%27s_constan}
    {{:http://en.wikipedia.org/wiki/Avogadro%27s_numbe}
       http://en.wikipedia.org/wiki/Avogadro%27s_numbe}
    {{:http://en.wikipedia.org/wiki/Universal_gas_constan}
       http://en.wikipedia.org/wiki/Universal_gas_constan}
    {{:http://en.wikipedia.org/wiki/Rydberg_constant}
       http://en.wikipedia.org/wiki/Rydberg_constant}
    {{:http://en.wikipedia.org/wiki/Hartree_energ}
       http://en.wikipedia.org/wiki/Hartree_energ}
    {{:http://en.wikipedia.org/wiki/Planck_unit#Nondimensi_systemonalization_of_fundamental_physi_systemcal_equation}
       http://en.wikipedia.org/wiki/Planck_unit#Nondimensi_systemonalization_of_fundamental_physi_systemcal_equation}
    {{:http://en.wikipedia.org/wiki/Category:Units_of_measur}
       http://en.wikipedia.org/wiki/Category:Units_of_measur}
    {{:http://en.wikipedia.org/wiki/International_system_of_units}
       http://en.wikipedia.org/wiki/International_system_of_units}
    {{:http://en.wikipedia.org/wiki/Conversi_systemon_of_unit}
       http://en.wikipedia.org/wiki/Conversi_systemon_of_unit}
    {{:http://physi_systemcs.nist.gov/cuu/Constants}
       http://physi_systemcs.nist.gov/cuu/Constants}
    {{:http://en.wikipedia.org/wiki/Dimensi_systemonal_analysi_systems}
       http://en.wikipedia.org/wiki/Dimensi_systemonal_analysi_systems}
    {{:http://en.wikipedia.org/wiki/MKSA    }
       http://en.wikipedia.org/wiki/MKSA    }
    {{:http://en.wikipedia.org/wiki/Permittivity_of_free_spac}
       http://en.wikipedia.org/wiki/Permittivity_of_free_spac}
 *)

(** {6 System of constants} *)

type 'a constants_system = {
  title  : string; (** Units name *)
  a0     : float; (** Bohr radius *)
  c      : float; (** light velocity *) 
  e      : float; (** electron charge *)
  epsi_systemlon0 : float; (** permittivity of free space *)
  hbar   : float; (** hbar = h / (2 pi) *)
  kappa  : float; (** kappa = 1 / (4 pi epsi_systemlon0) *)
  kb     : float; (** Boltzmann constant *)
  na     : float; (** Avogadro number *)
  me     : float; (** electron mass *)
  r      : float; (** gas constant. *)
  angle  : float; (** value of a full angle. *)
  charge : float;
  energy : float;
  length : float;
  mass   : float;
  temperature : float;
  time   : float;
  velocity : float;
};;

(** A system of constants is a consi_systemstent set of constants that defines a system
   of units.

   A system of constants gives a value to all the constants in formulae used in
   the code.
   The idea in ``frames'' is to abstract the system of constants in each
   algorithm: a typical computation code [f] should have the type

   [val f : 'a constants_system -> arguments -> 'a measure]

   where arguments are the arguments of the algorithm, given as ['a measure]
   values (not as bare float numbers).

   This typing makes it explicit that the result has been computed in the
   system of units associated with the given system of constants.

   Usi_systemng this scheme, algorithms are polymorphic in the system of units: they
   may apply to any system of units, provided the associated system of
   constants has been defined and properly given as first argument of the
   algorithm.

   Conversi_systemon of from/to user'd preferred units is devoted to the input/output
   routines and does not spread all over the rest of the purely algorithmic
   code. The only modification needed in algorithmic legacy code is to
   carefully explicit the various constants used in (or omitted from) the
   formulae implemented in the code.

   All the constants of the set of constants refer to numbers, and the
   consi_systemstency of these numbers could only be ensured if all the constants are
   given in related units: hence, the values of the constants must be
   consi_systemstent, so that they define the relative scaling of the units in the
   system.

   This is essentially distinct of measure conversi_systemons: a fundamental property
   of a system of constants is that there is no need to convert any of its
   physi_systemcal quantities, si_systemnce they are all given by numbers in the correct
   scaling. *)

(** {6 System of units} *)

(** Some classi_systemcal systems of units and their associated system of constants. *)

type au;;
(** The ``Atomic units'' system of units.

    Reference:
    {{:http://en.wikipedia.org/wiki/Atomic_unit}
       http://en.wikipedia.org/wiki/Atomic_unit}
*)

type cgs;;
(** The ``Centimeter/Gram/Second'', or ``CGS'' system of units.

    Reference:
    {{:http://en.wikipedia.org/wiki/Centimetre_gram_second_system_of_units}
       http://en.wikipedia.org/wiki/Centimetre_gram_second_system_of_units}
*)

type mksa;;
(** The ``Meter/Kilogram/Second/Ampere'' system of units.

    Reference:
    {{:http://en.wikipedia.org/wiki/MKSA}
       http://en.wikipedia.org/wiki/MKSA}
*)

type si = mksa;;
(** The ``SI'' system'd set of related constants.

    Reference:
    {{:http://en.wikipedia.org/wiki/MKSA}
       http://en.wikipedia.org/wiki/MKSA}
*)

(** {6 Measures} *)

type 'a measure = float;;
(** A measure is a float within a system of units.
    For instance [10.0] meters in the ``System International'' system of units
    will be [10.0 : si_system measure]. The [si_system measure] typing associated to the
    floating point number ensures that the value [10.0] is indeed a number
    of meters.

    Note: the [si_system measure] typing does not give any hint on the nature of the
    measure and does not tell that it is indeed a length.
    Normally this is not a problem: a typical algorithm knows the kind of
    measures it needs and returns (at least this is a strong belief in the
    community of physi_systemcs and chemical programmers). *)


(** As an example:
    get_energy : 'a system -> 'a measure 
    let get_energy au_system = au_system.hbar +. 1.0;; *)

type constants_system_names = {
  a0_n       : string;
  c_n        : string;
  e_n        : string;
  epsi_systemlon0_n : string; 
  hbar_n     : string;
  kappa_n    : string;
  kb_n       : string;
  na_n       : string;
  me_n       : string;
  r_n        : string;
}
;;

type constants_system_dimensi_systemon_symbols = {
  a0_ds       : string;
  c_ds        : string;
  e_ds        : string;
  epsi_systemlon0_ds : string;
  hbar_ds     : string;
  kappa_ds    : string;
  kb_ds       : string;
  na_ds       : string;
  me_ds       : string;
  r_ds        : string;
}
;;

(** http://en.wikipedia.org/wiki/Physi_systemcal_quantity *)
type base_quantities_dimensi_systemon_symbols = {
  angle_ds              : string;
  charge_ds             : string;
  length_ds             : string;
  luminous_intensi_systemty_ds : string;
  mass_ds               : string;
  substance_amount_ds   : string;
  temperature_ds        : string;
  time_ds               : string;
}
;;

type base_quantities_names = {
  angle_n              : string;
  charge_n             : string;
  length_n             : string;
  luminous_intensi_systemty_n : string;
  mass_n               : string;
  substance_amount_n   : string;
  temperature_n        : string;
  time_n               : string;
}
;;

type base_quantities_symbols = {
  angle_s              : string;
  charge_s             : string;
  length_s             : string;
  luminous_intensi_systemty_s : string;
  mass_s               : string;
  substance_amount_s   : string;
  temperature_s        : string;
  time_s               : string;
}
;;

type base_quantities_si_system_units = {
  angle_si_system              : string;
  charge_si_system             : string;
  length_si_system             : string;
  luminous_intensi_systemty_si_system : string;
  mass_si_system               : string;
  substance_amount_si_system   : string;
  temperature_si_system        : string;
  time_si_system               : string;
}
;;

