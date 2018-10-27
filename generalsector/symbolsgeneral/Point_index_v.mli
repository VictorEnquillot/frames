(** {3 An Index functionalities for a Point.} *)

(** {6 Making.} *)

val make : Ordinal_p.ordinal ->
  Point_index_t.point_index
;;

val make_of_int : int -> 
  Point_index_t.point_index
;;

val make_of_index : Index_p.index ->
  Point_index_t.point_index
;;

(** {6 Converting.} *)

val print : Format.formatter -> 
  Point_index_t.point_index ->
    unit
;;

val name : 
    Point_index_t.point_index ->
      string
;;
