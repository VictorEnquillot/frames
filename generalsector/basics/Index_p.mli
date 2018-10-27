(** {3 An index is non-negative.} *)

type index = private Index of int
;;
(** An index is a non-negative integer. *)

val index : int -> index
;;
val make : int -> index
;;
(** a simple conversion when possible. 
    [let j = make i]
     j = i. fails when i < 0. *)

val int_of_index : index -> int
;;
(** [let i = int_of_index j]
     i = j. *)

val decrement : index -> index
;;

val increment : index -> index
;;

val int_decrement_of_index : index -> int
;;

val int_increment_of_index : index -> int
;;

val float_of_index : index ->
  float
;;

val is_positive : index -> bool
;;

val is_greater : index -> index -> bool
;;
(** is_greater i j true if i > j. *)

val is_greater_equal : index -> index -> bool
;;
(** is_greater_equal i j true if i >= j. *)

val is_lower : index -> index -> bool
;;
(** is_lower i j true if i < j. *)

val is_zero : index -> bool
;;

val is_even : index -> 
  bool
;;

val half : index ->
  index
;;

val add : index -> index ->
  index
;;

val multiply : index -> index ->
  index
;;

val compare : index -> index -> 
  int
;;

val print : Format.formatter -> index -> 
  unit
;;

val print_as_int : Format.formatter -> index -> 
  unit
;;

val name : index ->
  string
;;

val print_error_integer : int -> string -> string -> 
  unit
;;

val fail_integer : int -> string -> string -> 'a
;;

val zero : index;;
val one : index;;
val two : index;;
val three : index;;
val four : index;;
val five : index;;
val six : index;;
val seven : index;;
val eight : index;;
val nine : index;;
val ten : index;;
