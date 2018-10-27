(** {3 Mendeleev_symbol symbols functions.} *)

val make_nucleon_cast : int -> int ->
  Mendeleev_symbol_t.nucleon_cast
;;
(** To create Isotopes *)

val default_valence_of_mendeleev_symbol : 
    Mendeleev_symbol_t.mendeleev_symbol ->
      Mendeleev_symbol_t.valence
;;

val allowed_valence_of_mendeleev_symbol : 
    Mendeleev_symbol_t.mendeleev_symbol ->
      Mendeleev_symbol_t.valence -> 
	Mendeleev_symbol_t.valence
;;

val au_mass : 
    Mendeleev_symbol_t.mendeleev_symbol -> 
      System_units_t.au System_units_t.measure
;; (** Atomic mass of a symbol in AU. *)

val atomic_mass : 
    'a System_units_t.constants_system -> 
      Mendeleev_symbol_t.mendeleev_symbol -> 
	'a System_units_t.measure
;; (** The atomic mass of a symbol in the given system of constants. *)

val amu_of_symbol :
    Mendeleev_symbol_t.mendeleev_symbol ->
      float
;;
 
val nucleon_cast_of_mendeleev_symbol : 
     Mendeleev_symbol_t.mendeleev_symbol -> 
       Mendeleev_symbol_t.nucleon_cast
;;

val nucleon_count_of_mendeleev_symbol : 
    Mendeleev_symbol_t.mendeleev_symbol -> 
      Mendeleev_symbol_t.nucleon_count
;;

val nucleon_count_of_nucleon_cast :
    Mendeleev_symbol_t.nucleon_cast ->
      Mendeleev_symbol_t.nucleon_count
;;

val proton_count_of_mendeleev_symbol :
    Mendeleev_symbol_t.mendeleev_symbol -> 
    Mendeleev_symbol_t.proton_count
;;

val chemical_name : Mendeleev_symbol_t.mendeleev_symbol -> 
  string
;;
(** The full name of a symbol (e.g. [name H] is ["Hydrogen"].) *)

val name : Mendeleev_symbol_t.mendeleev_symbol -> 
  string
;;
(** The [string] representation of a symbol (e.g. [to_string H] is ["H"].) *)

val mendeleev_symbol_of_string : string -> 
  Mendeleev_symbol_t.mendeleev_symbol
;;

val print : Format.formatter -> Mendeleev_symbol_t.mendeleev_symbol -> 
  unit
;;
(** Prints a symbol to the given formatter. *)

val print_name : Format.formatter -> string -> unit
;;
(** Prints the name of a symbol to the given formatter. *)

val print_valence : Format.formatter -> 
  Mendeleev_symbol_t.valence ->
    unit
;;

val print_tie : Format.formatter -> 
  Mendeleev_symbol_t.tie ->
    unit
;;

val print_neutron_count : Format.formatter -> 
  Mendeleev_symbol_t.neutron_count ->
    unit
;;

val print_proton_count : Format.formatter -> 
  Mendeleev_symbol_t.proton_count ->
    unit
;;

val print_nucleon_count : Format.formatter -> 
  Mendeleev_symbol_t.nucleon_count ->
    unit
;;

val list : Mendeleev_symbol_t.mendeleev_symbol list
;;
(** The complete list of symbols for atoms. *)

val read : Scanf.Scanning.scanbuf -> 
  Mendeleev_symbol_t.mendeleev_symbol
;;

val compare :
    Mendeleev_symbol_t.mendeleev_symbol ->
      Mendeleev_symbol_t.mendeleev_symbol ->
	int
;;
