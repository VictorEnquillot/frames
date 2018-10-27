(** {3 A Symbol functionalities for a Point.} *)

(** {6 Making.} *)

val make : string ->  
    Point_symbol_t.point_symbol
;;

(** {6 Converting.} *)

val print : Format.formatter -> 
  Point_symbol_t.point_symbol ->
    unit
;;

val name : 
    Point_symbol_t.point_symbol ->
      string
;;
