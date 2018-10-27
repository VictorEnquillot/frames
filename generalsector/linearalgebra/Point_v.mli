
val make : Vector_t.vector -> Point_t.point
;;

val difference : Point_t.point -> Point_t.point -> Vector_t.vector
;;
(** the difference of two [Point_t.point]s is the [Vector_t.vector]
    difference of their [Point_t.Point.position] . *)

val distance : Point_t.point -> Point_t.point -> float
;;
(** d = distance p1 p2;;. *)

val has_same_position : Point_t.point -> Point_t.point -> bool
;;

val has_same_position_at_epsilon : float -> Point_t.point -> Point_t.point -> 
  bool
;;
(** let b = has_same_position_at_epsilon e p1 p2;;
    [b] is true when [distance] of p1 to p2 is less than [float] [e]. *)

val addition_with_vector : Point_t.point -> Vector_t.vector -> 
  Point_t.point
;;

val scaling : Point_t.point -> float -> Point_t.point
;;

val translation : Point_t.point -> Vector_t.vector -> Point_t.point
;;
(** p2 = translation p1 t;;. *)

val homothecy : Point_t.point -> Point_t.point -> float -> 
  Point_t.point
;;
(** let h = homothecy p o f s;;
    the [point] [h] is the transformed of [point] [p] 
    by an homothecy of origin [o] 
    and dilation factor [f]. [h] is named as [s]. *)

val name : Point_t.point -> string
;; 

