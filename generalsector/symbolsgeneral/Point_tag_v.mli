(** {3 A Tag functionalities for a Point.} *)

(** {6 Making.} *)

val make : 
    Point_symbol_t.point_symbol ->
      Point_state_t.point_state -> 
	Point_index_t.point_index -> 
	  Point_tag_t.point_tag 
;;

(** {6 Converting.} *)

val print : Format.formatter -> 
  Point_tag_t.point_tag -> 
    unit
;;

val name :
    Point_tag_t.point_tag -> 
      string
;;

