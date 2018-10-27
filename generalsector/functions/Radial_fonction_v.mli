(** {3 Radial Function.} *)

(** {6 Making.} *)

(** {6 Evaluating.} *)

val float_off_radial_fonction : Radial_fonction_t.radial_fonction ->
  float
;;

val fonction_of_radial_fonction : Radial_fonction_t.radial_fonction ->
  Fonction_t.fonction
;;

val value_on_r : Radial_fonction_t.radial_fonction -> float -> float
;;

val derivative_on_r : Radial_fonction_t.radial_fonction -> Fonction_t.fonction
;;
(*
val derivative_on_x : Radial_fonction_t.radial_fonction -> Fonction_t.fonction
;;

val derivative_on_y : Radial_fonction_t.radial_fonction -> Fonction_t.fonction
;;

val derivative_on_z : Radial_fonction_t.radial_fonction -> Fonction_t.fonction
;;
*)
(** {6 Extracting.} *)

(** {6 Conversion.} *)

val print : Format.formatter -> Radial_fonction_t.radial_fonction ->
  unit
;;

val name : Radial_fonction_t.radial_fonction ->
  string
;;
