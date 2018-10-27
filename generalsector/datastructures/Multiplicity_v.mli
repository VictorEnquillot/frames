(** {3 The functionalities for Multiplicity of some entity.} *)

val multiplicity_of_int : int ->
  Multiplicity_t.multiplicity
;;

val multiplicity_of_index : Index_p.index ->
  Multiplicity_t.multiplicity
;;

val multiplicity_of_ordinal : Ordinal_p.ordinal ->
  Multiplicity_t.multiplicity
;;

val int_of_multiplicity : Multiplicity_t.multiplicity ->
  int
;;

val index_of_multiplicity : Multiplicity_t.multiplicity ->
  Index_p.index
;;

val ordinal_of_multiplicity : Multiplicity_t.multiplicity ->
  Ordinal_p.ordinal
;;

val multiplicity_of_float : float ->
  Multiplicity_t.multiplicity
;;

val float_of_multiplicity : Multiplicity_t.multiplicity ->
  float
;;

val compare : Multiplicity_t.multiplicity ->
  Multiplicity_t.multiplicity -> int
;;

val print : Format.formatter -> Multiplicity_t.multiplicity ->
  unit
;;

val print_as_int : Format.formatter -> Multiplicity_t.multiplicity ->
  unit
;;

val print_as_float : Format.formatter -> Multiplicity_t.multiplicity ->
  unit
;;

val name : Multiplicity_t.multiplicity ->
 string
;;
