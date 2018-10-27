(* $Id: float_sextuor.mli,v 1.2 2007-08-22 16:55:10 colonna Exp $ *)

(** {3 A Vector in 3-dimension space} *)

val zero : Float_sextuor_t.float_sextuor
;;

val sum_fun_on_i : (float -> float) -> Float_sextuor_t.float_sextuor -> float
;;
(** [let s = sum_fun_on_i f v;;]
    [s] = f(x) +. f(y) +. f(z). *)

val sigma : Float_sextuor_t.float_sextuor -> float
;;
(** [let s = sigma v;;]
    [s] = x +. y +. z *)

val sigma_of_vector_list : Float_sextuor_t.float_sextuor list -> Float_sextuor_t.float_sextuor
;;
(** [let s = sigma_of_vector_list v_l;;]
    [Vector] [s] = Sum all vectors of [list] [v_l]. *)

val minus : Float_sextuor_t.float_sextuor -> Float_sextuor_t.float_sextuor 
;;

val difference : Float_sextuor_t.float_sextuor -> Float_sextuor_t.float_sextuor -> Float_sextuor_t.float_sextuor
;;

val addition : Float_sextuor_t.float_sextuor -> Float_sextuor_t.float_sextuor -> Float_sextuor_t.float_sextuor
;;

val scaling : Float_sextuor_t.float_sextuor -> float -> Float_sextuor_t.float_sextuor 
;;

val dividing : Float_sextuor_t.float_sextuor -> float -> Float_sextuor_t.float_sextuor 
;;

val float_sextuor_of_bifloat_triplet : Float_triplet_t.float_triplet * Float_triplet_t.float_triplet ->
  Float_sextuor_t.float_sextuor 
;;

val bifloat_triplet_of_float_sextuor : Float_sextuor_t.float_sextuor -> 
Float_triplet_t.float_triplet * Float_triplet_t.float_triplet
;;

val pair_product : Float_sextuor_t.float_sextuor -> Float_sextuor_t.float_sextuor -> 
  Float_sextuor_t.float_sextuor
;;

val dot_product : Float_sextuor_t.float_sextuor -> Float_sextuor_t.float_sextuor -> float
;;

val tensor_product : Float_sextuor_t.float_sextuor -> Float_sextuor_t.float_sextuor -> 
  Float_sextuor_t.float_sextuor * Float_sextuor_t.float_sextuor * Float_sextuor_t.float_sextuor *
    Float_sextuor_t.float_sextuor * Float_sextuor_t.float_sextuor * Float_sextuor_t.float_sextuor
;;

val print : Format.formatter -> Float_sextuor_t.float_sextuor -> unit
;;

val write : out_channel -> Float_sextuor_t.float_sextuor -> unit
