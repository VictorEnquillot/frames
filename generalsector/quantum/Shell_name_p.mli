(** {3 The Shell name.} *)

type shell_name = private (Shell_ordinal_p.shell_ordinal, Shell_symmetry_t.shell_symmetry) Doublet_t.doublet;;
(** Efp shell name doublets shell_ordinal and shell_symmetry
    to ensures correctness. *)

(** {6 Making.} *)
 
val shell_name : Quantum_numbers_p.quantum_numbers_nl ->
    shell_name 
;;

val shell_name_of_int_of_shell_symmetry : int ->
  Shell_symmetry_t.shell_symmetry -> 
    shell_name 
;;

val shell_name_of_ordinal_of_shell_symmetry : Ordinal_p.ordinal ->
  Shell_symmetry_t.shell_symmetry -> 
    shell_name 
;;

val shell_name_of_shell_ordinal_of_shell_symmetry : 
    Shell_ordinal_p.shell_ordinal ->
      Shell_symmetry_t.shell_symmetry -> 
	shell_name 
;;

val shell_name_of_int_of_int : int -> int -> 
    shell_name
;;
(** [s = shell_name_of_int_of_int n l]
    n and l are constrained with 0 <= l < n. *)

(** {6 Extracting.} *)
  
val ordinal_off_shell_name : shell_name ->
  Ordinal_p.ordinal
;;

val index_off_shell_name : shell_name ->
  Index_p.index
;;

val shell_ordinal_off_shell_name : shell_name ->
  Shell_ordinal_p.shell_ordinal
;;

val shell_symmetry_off_shell_name : shell_name ->
  Shell_symmetry_t.shell_symmetry
;;

val quantum_number_n_off_shell_name : shell_name ->
  Quantum_numbers_p.quantum_number_n
;;

val quantum_number_l_off_shell_name : shell_name ->
  Quantum_numbers_p.quantum_number_l
;;

val quantum_numbers_nl_off_shell_name : shell_name ->
  Quantum_numbers_p.quantum_numbers_nl
;;
(** (n, l) = quantum_numbers_nl_off_shell_name s*)

(** {6 Naming.} *)

val name : shell_name -> string;;
val string_off : shell_name -> string;;
val longname : shell_name -> string;;
val fullname : shell_name -> string;;
