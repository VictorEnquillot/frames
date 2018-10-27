(* $Id: vector_3d.mli,v 1.2 2007-08-22 16:55:10 colonna Exp $ *)

(** {3 A Vector in 3-dimension space} *)

val zero : Vector_3d_t.vector_3d
;;

val unity_x : Vector_3d_t.vector_3d
;;

val unity_y : Vector_3d_t.vector_3d
;;

val unity_z : Vector_3d_t.vector_3d
;;

val sum_fun_on_i : (float -> float) -> Vector_3d_t.vector_3d -> float
;;
(** [let s = sum_fun_on_i f v;;]
    [s] = f(x) +. f(y) +. f(z). *)

val sigma : Vector_3d_t.vector_3d -> float
;;
(** [let s = sigma v;;]
    [s] = x +. y +. z *)

val norm2 : Vector_3d_t.vector_3d -> float
;;
(** [let n = norm2 v;;]
    [n] = x*.x +. y*.y +. z*.z. *)

val modulus : Vector_3d_t.vector_3d -> float
(** n = modulus v;;
    [n] is the square root of [norm2] [v]. *)
;;

val norm : Vector_3d_t.vector_3d -> float
;;
(** alias of modulus. *)

val minus : Vector_3d_t.vector_3d -> Vector_3d_t.vector_3d 
;;

val difference : Vector_3d_t.vector_3d -> Vector_3d_t.vector_3d -> 
  Vector_3d_t.vector_3d
;;

val addition : Vector_3d_t.vector_3d -> Vector_3d_t.vector_3d -> 
  Vector_3d_t.vector_3d
;;

val is_equal_at_epsilon : float -> Vector_3d_t.vector_3d -> 
  Vector_3d_t.vector_3d -> bool
;;
(** b = is_equal_at_epsilon_float e v1 v2;;
    means v1 and v2 modules differ by less than [e] *)

val is_equal_at_epsilon_float : Vector_3d_t.vector_3d -> 
  Vector_3d_t.vector_3d -> bool
;;
(** b = is_equal_at_epsilon_float v1 v2;;
    means v1 and v2 modules differ by less than [Pervasives.epsilon_float] *)

val scaling : Vector_3d_t.vector_3d -> float -> Vector_3d_t.vector_3d 
;;

val dividing : Vector_3d_t.vector_3d -> float -> Vector_3d_t.vector_3d 
;;

val float_sextuor_of_bivector_3d : Vector_3d_t.vector_3d * Vector_3d_t.vector_3d -> 
  Float_sextuor_t.float_sextuor
;;

val bifloat_vector_3d_of_bivector_3d : 
    Vector_3d_t.vector_3d * Vector_3d_t.vector_3d -> 
      (float * float) array
;;
(** [let t =  float_triplet_of_pair_vector v1 v2;;]
    From a pair of [Vector_3d_t.vector_3d]s [v1] and [v2] 
    float_triplet [t] has each couple of elements as element.
    i.e. : a = ((x1, x2), (y1, y2), (z1, z2)). *) 

val pair_product : Vector_3d_t.vector_3d -> Vector_3d_t.vector_3d ->
  Vector_3d_t.vector_3d
;;

val dot_product : Vector_3d_t.vector_3d -> Vector_3d_t.vector_3d -> float
;;

val tensor_product : Vector_3d_t.vector_3d -> Vector_3d_t.vector_3d -> 
  Float_triplet_t.float_triplet * Float_triplet_t.float_triplet * Float_triplet_t.float_triplet
;;

val external_product : Vector_3d_t.vector_3d -> Vector_3d_t.vector_3d -> 
  Vector_3d_t.vector_3d
;;

val rotation : Vector_3d_t.vector_3d -> float -> float -> float -> 
  Vector_3d_t.vector_3d
;;

val vector_3d_of_vector : float array -> Vector_3d_t.vector_3d
;;

val float_triplet_of_vector_3d : Vector_3d_t.vector_3d -> Float_triplet_t.float_triplet
;;

val vector_3d_of_float_triplet : Float_triplet_t.float_triplet -> Vector_3d_t.vector_3d
;;

val vector_of_vector_3d : Vector_3d_t.vector_3d -> float array 
;;

val trifloat_triplet_of_trivector_3d : Vector_3d_t.vector_3d ->
  Vector_3d_t.vector_3d -> Vector_3d_t.vector_3d ->
    Float_triplet_t.float_triplet * Float_triplet_t.float_triplet * Float_triplet_t.float_triplet
;;

val print : Format.formatter -> Vector_3d_t.vector_3d -> unit
;;
