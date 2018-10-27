(** {3 The Shell ordinal (shell_number n).} *)

(** {6 Types.} *)

type shell_ordinal = private Ordinal_p.ordinal
;;
(** Cefp shell ordinal = quantum number n] *)

(** {6 Making.} *)

val make : Ordinal_p.ordinal ->
  shell_ordinal
;;

val make_of_int : int -> 
  shell_ordinal
;;

val make_of_index : Index_p.index ->
  shell_ordinal
;;

val shell_ordinal_off_quantum_numbers_nl : Quantum_numbers_p.quantum_numbers_nl ->
  shell_ordinal
;;

(** {6 Extracting.} *)

val int_of_shell_ordinal : shell_ordinal -> 
  int
;;

val ordinal_of_shell_ordinal : shell_ordinal -> 
  Ordinal_p.ordinal
;;

val quantum_number_n_off_shell_ordinal : shell_ordinal ->
      Quantum_numbers_p.quantum_number_n
;;

val compare : shell_ordinal -> shell_ordinal -> 
  int
;;

(** {6 Converting.} *)

val print : Format.formatter -> shell_ordinal -> 
  unit
;;

val name : shell_ordinal -> 
  string
;;


