(** {3 An ordinal.} *)

type ordinal = private Ordinal of int
;;
(** An ordinal is a positive integer. *)

val ordinal : int -> ordinal
;;
val make : int -> ordinal
;;
(** [let i = int_of_ordinal o]
    integer value of i = integer value of o if i > o 
    otherwise fails with "Ordinal_is_positive". *)

val int_of_ordinal : ordinal -> int
;;
(** [let i = int_of_ordinal o]
    integer value of i = integer value of o *)

val char_of_ordinal : ordinal -> char
;; (** Fails with "Invalid_ordinal:Ord_p.char_of_ordinal" *)

val int_array_of_ordinal_array : ordinal array -> 
  int array
;;

val is_greater : ordinal ->  ordinal -> bool
;;

val index_of_ordinal : ordinal -> Index_p.index
;;
(** [let i = index_of_ordinal i]
    integer value of i = integer value of o if i > 0 *)

val ordinal_of_index : Index_p.index -> ordinal
;;

val index_array_of_ordinal_array : ordinal array -> 
  Index_p.index array
;;

val decrement : ordinal -> ordinal
;;
(** [let d = decrement o]
     integer value of d = integer value of o-1.
     if o = 1 fails with "Ordinal_is_positive". *)

val increment : ordinal -> ordinal
;;
(** [let d = decrement o]
     integer value of d = integer value of o+1. *)

val index_decrement_of_ordinal : ordinal -> Index_p.index
;;
(** [let i = index_of_ordinal o]
     integer value of i = integer value of o -1. *)

val int_decrement_of_ordinal : ordinal -> int
;;
(** [let i = int_decrement_of_ordinal o]
     integer value of i = integer value of o -1. *)

val ordinal_increment_of_index : Index_p.index -> ordinal
;;
(** [let o = ordinal_increment_of_index i ]
     integer value of o = integer value of i +1. *)

val ordinal_increment_of_int : int -> ordinal
;;
(** [let o = ordinal_increment_of_int i ]
     integer value of o = i+1. *)

val compare : ordinal -> ordinal ->
  int
;;

val print_as_int : Format.formatter -> ordinal -> unit
;;

val print : Format.formatter -> ordinal -> unit
;;

val name : ordinal ->
  string
;;

val print_error_integer : int -> string -> string -> unit
;;

val fail_integer : int -> string -> string -> 'a
;;

val add : ordinal ->  ordinal ->
  ordinal
;;

val multiply : ordinal ->  ordinal ->
  ordinal
;;

val one : ordinal;;
val two : ordinal;;
val three : ordinal;;
val four : ordinal;;
val five : ordinal;;
val six : ordinal;;
val seven : ordinal;;
val eight : ordinal;;
val nine : ordinal;;
val ten : ordinal;;
