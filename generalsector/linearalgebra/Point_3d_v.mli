(** {3 A Point on R3 functionalities.} *)

val make : string -> float -> float -> float -> 
  Point_3d_t.point_3d
;;

val point_3d_of_string_of_float_triplet : string -> Float_triplet_t.float_triplet -> 
  Point_3d_t.point_3d
;;

val vector_3d_off_point_3d : Point_3d_t.point_3d ->
  Vector_3d_t.vector_3d
;;

val position_off_point_3d : Point_3d_t.point_3d ->
  Vector_3d_t.vector_3d
;;

val float_triplet_off_point_3d : Point_3d_t.point_3d ->
  Float_triplet_t.float_triplet
;;

val minus : Point_3d_t.point_3d -> 
  Point_3d_t.point_3d
;;

val modulus : Point_3d_t.point_3d -> 
  float
;;

val difference : Point_3d_t.point_3d -> Point_3d_t.point_3d -> 
  Vector_3d_t.vector_3d
;;

val addition_with_vector : Point_3d_t.point_3d -> Vector_3d_t.vector_3d -> 
  Point_3d_t.point_3d
;;

val scaling : Point_3d_t.point_3d -> float -> 
  Point_3d_t.point_3d
;;

val distance : Point_3d_t.point_3d -> Point_3d_t.point_3d -> 
  float
;;
(** d = distance p1 p2;;. *)

val has_same_position : Point_3d_t.point_3d -> Point_3d_t.point_3d -> 
  bool
;;

val has_same_position_at_epsilon : float -> Point_3d_t.point_3d -> 
  Point_3d_t.point_3d -> bool
;;
(** let b = has_same_position_at_epsilon e p1 p2;;
    [b] is true when [distance] of p1 to p2 is less than [float] [e]. *)

val translation : Point_3d_t.point_3d -> Vector_3d_t.vector_3d ->
  Point_3d_t.point_3d
;;
(** p2 = translation p1 t;;. *)

val homothecy : Point_3d_t.point_3d -> Point_3d_t.point_3d -> float -> 
  Point_3d_t.point_3d
;;
(** let h = homothecy p o f;;
    the [point_3d] [h] is the transformed of [point_3d] [p] by an homothecy of origin [o] 
    and dilation factor [f]. *)

val rename : Point_3d_t.point_3d -> string ->
  Point_3d_t.point_3d 
;;

val print : Format.formatter -> Point_3d_t.point_3d -> 
  unit
;; 

val read : Scanf.Scanning.scanbuf -> 
  Point_3d_t.point_3d
;;

val name : Point_3d_t.point_3d -> 
  string
;;
