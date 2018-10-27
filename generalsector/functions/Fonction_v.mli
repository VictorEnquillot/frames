(* {3 A Function (Fonction) functionalities.} *)

(** {6 Making.} *)

(** {6 Evaluating.} *)

val value_on_r : Fonction_t.fonction -> float -> float
;;

val value_on_r3 : Fonction_t.fonction -> (float * float * float) -> float
;;

val derivative : Fonction_t.fonction -> Fonction_t.fonction
;;

(** {6 Queries.} *)

val is_elementary_of_fonction : Fonction_t.fonction -> bool
;;

(** {6 Extracting.} *)

(** {6 Conversion.} *)

val print : Format.formatter -> Fonction_t.fonction -> unit
;;

val print_lcof : Format.formatter -> 
  'f Fonction_t.linear_combination_of_fonction -> unit
;;

val name : Fonction_t.fonction ->
  string
;;
(*
val scaling : float -> funct -> funct
;;

val derivative : funct -> funct
;;
*)

