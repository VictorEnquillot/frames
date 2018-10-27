(** {3 A State functionalities for a Point.} *)

(** {6 Making.} *)

val make : int ->  
    Point_state_t.point_state
;;

(** {6 Converting.} *)

val print : Format.formatter -> 
  Point_state_t.point_state ->
    unit
;;

val name : 
    Point_state_t.point_state ->
      string
;;
