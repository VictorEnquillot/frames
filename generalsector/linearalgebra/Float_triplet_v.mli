(* $Id: float_triplet.mli,v 1.2 2007-08-22 16:55:10 colonna Exp $ *)

(** {3 A Vector in 3-dimension space} *)

val zero : Float_triplet_t.float_triplet
;;

val unity_x : Float_triplet_t.float_triplet
;;

val unity_y : Float_triplet_t.float_triplet
;;

val unity_z : Float_triplet_t.float_triplet
;;

val sum_fun_on_i : (float -> float) -> Float_triplet_t.float_triplet -> float
;;
(** [let s = sum_fun_on_i f v;;]
    [s] = f(x) +. f(y) +. f(z). *)

val sigma : Float_triplet_t.float_triplet -> float
;;
(** [let s = sigma v;;]
    [s] = x +. y +. z *)

val sigma_of_vector_list : Float_triplet_t.float_triplet list -> Float_triplet_t.float_triplet
;;
(** [let s = sigma_of_vector_list v_l;;]
    [Vector] [s] = Sum all vectors of [list] [v_l]. *)

val norm2 : Float_triplet_t.float_triplet -> float
;;
(** [let n = norm2 v;;]
    [n] = x*.x +. y*.y +. z*.z. *)

val modulus : Float_triplet_t.float_triplet -> float
(** n = modulus v;;
    [n] is the square root of [norm2] [v]. *)
;;

val norm : Float_triplet_t.float_triplet -> float
;;
(** alias of modulus. *)

val minus : Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet 
;;

val difference : Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet
;;

val addition : Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet
;;

val is_equal_at_epsilon : float -> Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet -> bool
;;
(** b = is_equal_at_epsilon_float e v1 v2;;
    means v1 and v2 modules differ by less than [e] *)

val is_equal_at_epsilon_float : Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet -> bool
;;
(** b = is_equal_at_epsilon_float v1 v2;;
    means v1 and v2 modules differ by less than [Pervasives.epsilon_float] *)

val scaling : Float_triplet_t.float_triplet -> float -> Float_triplet_t.float_triplet 
;;

val dividing : Float_triplet_t.float_triplet -> float -> Float_triplet_t.float_triplet 
;;

val bifloat_float_triplet_of_bifloat_triplet : Float_triplet_t.float_triplet * Float_triplet_t.float_triplet -> 
  (float * float) * (float * float) * (float * float) 
;;
(** [let t =  float_triplet_of_pair_vector v1 v2;;]
    From a pair of [Float_triplet_t.float_triplet]s [v1] and [v2] 
    float_triplet [t] has each couple of elements as element.
    i.e. : a = ((x1, x2), (y1, y2), (z1, z2)). *) 

val pair_product : Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet
;;

val dot_product : Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet -> float
;;

val tensor_product : Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet -> 
  Float_triplet_t.float_triplet * Float_triplet_t.float_triplet * Float_triplet_t.float_triplet
;;

val external_product : Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet
;;

val rotation : Float_triplet_t.float_triplet -> float -> float -> float -> Float_triplet_t.float_triplet
;;

(** {6 Converting.} *)

val print : Format.formatter -> Float_triplet_t.float_triplet -> unit
;;

val write : out_channel -> Float_triplet_t.float_triplet -> unit

val name : 
    Float_triplet_t.float_triplet ->
      string
;;
