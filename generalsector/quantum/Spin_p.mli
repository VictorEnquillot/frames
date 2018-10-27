(** {3 A Spin.} *)

type bosonic_spin = private int
;;

type fermionic_spin = private Half of int
;;

type electronic_spin = 
  | Alpha 
  | Beta
;;

type atomic_spin = int * electronic_spin
;;

type molecular_spin = int * electronic_spin
;;

type total_spin = int * electronic_spin
;;

type spin =
  | Bosonic of bosonic_spin
  | Fermionic of fermionic_spin
  | Electronic of electronic_spin
  | Atomic of atomic_spin
  | Molecular of molecular_spin
  | Total of total_spin
;;

val make_electronic_spin : int -> electronic_spin
;;
(** Example : spin alpha = make_electronic_spin 1
    spin beta = make_electronic_spin (-1). *)

val make_atomic_spin : int -> int -> atomic_spin
;;
(** [let s = make_atomic_spin n i ]
     spin s is made of n spin (i/2)
   
      Example : spin H  = make_atomic_spin 1 1
                spin He = make_atomic_spin 0 1
                spin Li = make_atomic_spin 1 1 *)

val make_molecular_spin : int -> int -> molecular_spin
;;
(** Same as atomic spin *)

val make_total_spin : int -> int -> total_spin
;;
(** Same as atomic spin *)


val int_of_electronic_spin : electronic_spin -> int
;;

val int_of_atomic_spin : atomic_spin -> int
;;

val int_of_molecular_spin : molecular_spin -> int  
;;

val int_of_total_spin : total_spin -> int
;;

val int_of_spin : spin -> int
;;

val print_electronic_spin : Format.formatter -> electronic_spin -> unit
;;

val print_atomic_spin : Format.formatter -> atomic_spin -> unit
;;

val print_molecular_spin : Format.formatter -> molecular_spin -> unit
;;

val print_total_spin : Format.formatter -> total_spin -> unit
;;

val print : Format.formatter -> spin -> unit
;;

val name : spin -> string
;;
