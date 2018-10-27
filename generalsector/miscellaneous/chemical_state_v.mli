(** {3 The State functionalities for a Chemical_state entity.} *)

(** {6 Converting.} *)

val print : Format.formatter -> 
  Chemical_state_t.chemical_state -> 
    unit
;;

val name : Chemical_state_t.chemical_state -> 
    string
;;

(** {6 Abbreviations.} *)

val a : Chemical_state_t.chemical_state;;
val h : Chemical_state_t.chemical_state;;
val m : Chemical_state_t.chemical_state;;
val n : Chemical_state_t.chemical_state;;
val p : Chemical_state_t.chemical_state;;
val z : Chemical_state_t.chemical_state;;

val od : Chemical_state_t.chemical_state;;
val odh : Chemical_state_t.chemical_state;;
val oe : Chemical_state_t.chemical_state;;
val oeh : Chemical_state_t.chemical_state;;
val nde : Chemical_state_t.chemical_state;;
val ndeh : Chemical_state_t.chemical_state;;
val ndh : Chemical_state_t.chemical_state;;
val ne : Chemical_state_t.chemical_state;;
val neh : Chemical_state_t.chemical_state;;
val nz : Chemical_state_t.chemical_state;;
val nzh : Chemical_state_t.chemical_state;;

val v : Chemical_state_t.chemical_state;;
val mi : Chemical_state_t.chemical_state;;
val mb : Chemical_state_t.chemical_state;;
val v : Chemical_state_t.chemical_state;;
val w : Chemical_state_t.chemical_state;;

(** {6 Extracting.} *)

val protonation_state_off_chemical_state :  
    Chemical_state_t.chemical_state ->
      Protonation_state_t.protonation_state
;;

val environment_state_off_chemical_state :  
    Chemical_state_t.chemical_state ->
      Environment_state_t.environment_state
;;

