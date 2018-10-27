(** {3 The 3 Quantum Numbers.} *)

(** {6 Types.} *)

type quantum_number = private
  | N of quantum_number_n
  | L of quantum_number_l
  | M of quantum_number_m
and quantum_number_n = Ordinal_p.ordinal (* from 1 to infinity *)
and quantum_number_l = Index_p.index     (* from 0 to n-1 *)
and quantum_number_m = int               (* from -l to l *)
;;
 
type quantum_numbers = private 
      {
       quantum_number_n : quantum_number_n;
       quantum_number_l : quantum_number_l;
       quantum_number_m : quantum_number_m;
     }
;;

type quantum_numbers_nl = quantum_number_n * quantum_number_l
;;

type quantum_numbers_ln = quantum_number_l * quantum_number_m
;;

(** {6 Making.} *)

val quantum_numbers : quantum_number_n -> quantum_number_l -> quantum_number_m -> 
  quantum_numbers
;;

val quantum_numbers_of_int_triplet : int * int * int -> 
  quantum_numbers
;;

val quantum_numbers_n : Ordinal_p.ordinal -> 
  quantum_number_n
;;

val make_l : Index_p.index -> 
  quantum_number_l
;;

val quantum_numbers_m : int -> 
  quantum_number_m
;;

val quantum_number_n_of_int : int -> quantum_number_n
;;

val make_l_of_int : int -> quantum_number_l
;;

val quantum_numbers_m_of_int : int -> quantum_number_m
;;

val quantum_numbers_nl : quantum_number_n -> quantum_number_l -> 
  quantum_numbers_nl
;;

val quantum_numbers_nl_of_int_of_int : int -> int -> 
  quantum_numbers_nl
;;

val quantum_numbers_ln : quantum_number_l ->  quantum_number_m -> 
  quantum_numbers_ln
;;

val make_lm_of_int_of_int : int -> int -> 
  quantum_numbers_ln
;;

val quantum_number_n_of_int : int -> 
  quantum_number_n
;;

val quantum_number_l_of_int : int -> 
  quantum_number_l
;;

val quantum_number_m_of_int : int -> 
  quantum_number_m
;;

val quantum_number_l_of_shell_symmetry : 
    Shell_symmetry_t.shell_symmetry -> 
      quantum_number_l
;;

val quantum_number_m_array_of_shell_symmetry :
    Shell_symmetry_t.shell_symmetry -> 
      quantum_number_m array
;;

val shell_symmetry_off_quantum_numbers_nl :
    quantum_numbers_nl ->
    Shell_symmetry_t.shell_symmetry
;;

val shell_symmetry_of_quantum_number_l : 
    quantum_number_l ->
      Shell_symmetry_t.shell_symmetry 
;;

val int_of_quantum_number_n : 
    quantum_number_n -> int
;;

val int_of_quantum_number_l : 
    quantum_number_l -> int
;;

val int_of_quantum_number_m : 
    quantum_number_m -> int
;;

val int_triplet_of_quantum_numbers : quantum_numbers ->
  int * int * int
;;

val ordinal_of_quantum_number_n : 
    quantum_number_n -> Ordinal_p.ordinal
;;

val index_of_quantum_number_l : 
    quantum_number_l -> Index_p.index
;;

val index_of_quantum_number_m_by_quantum_number_l :
    quantum_number_m -> quantum_number_l ->
Index_p.index
;;

(** {3 Quantum Number Functionnalities.} *)

val print : Format.formatter -> 
  quantum_numbers -> unit
;;

val print_lm : Format.formatter -> 
  quantum_numbers_ln -> unit
;;

val print_n : Format.formatter -> 
  quantum_number_n -> unit
;;

val print_l : Format.formatter -> 
  quantum_number_l -> unit
;;

val print_m : Format.formatter -> 
  quantum_number_m -> unit
;;

val name : 
  quantum_numbers -> string
;;

val name_lm : 
  quantum_numbers_ln -> string
;;

val name_n : 
  quantum_number_n -> string
;;

val name_l :
  quantum_number_l -> string
;;

val name_m :
  quantum_number_m -> string
;;

val quantum_number_n_off_quantum_numbers : 
    quantum_numbers -> 
      quantum_number_n
;;

val quantum_number_l_off_quantum_numbers : 
    quantum_numbers -> 
      quantum_number_l
;;

val quantum_number_m_off_quantum_numbers : 
    quantum_numbers -> 
      quantum_number_m
;;

val quantum_numbers_nl_off_quantum_numbers :
    quantum_numbers -> 
      quantum_numbers_nl
;;

val make_lm_off_quantum_numbers : 
    quantum_numbers ->
      quantum_numbers_ln
;;

val quantum_number_n_off_quantum_numbers_nl :
     quantum_numbers_nl ->
       quantum_number_n
;;

val quantum_number_l_off_quantum_numbers_nl :
    quantum_numbers_nl ->
      quantum_number_l
;;

val quantum_number_l_off_make_lm :
    quantum_numbers_ln ->
      quantum_number_l
;;

val quantum_number_m_off_make_lm :
    quantum_numbers_ln ->
      quantum_number_m
;;

val quantum_number_l_array_of_quantum_number_n : 
    quantum_number_n -> 
      quantum_number_l array
;;

val quantum_number_m_array_of_quantum_number_l : 
    quantum_number_l -> 
      quantum_number_m array
;;

val make_lm_array_of_quantum_number_l :
    quantum_number_l -> 
      quantum_numbers_ln array
;;

val quantum_numbers_array_of_quantum_numbers_nl :
    quantum_numbers_nl ->
      quantum_numbers array
;;

