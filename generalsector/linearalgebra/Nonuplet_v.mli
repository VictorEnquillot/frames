(* $Id: nonuplet.mli,v 1.2 2007-08-22 16:55:10 colonna Exp $ *)

(** {3 A Vector in 3-dimension space} *)

val zero : Nonuplet_t.nonuplet
;;

val sum_fun_on_i : (float -> float) -> Nonuplet_t.nonuplet -> float
;;
(** [let s = sum_fun_on_i f v;;]
    [s] = f(x) +. f(y) +. f(z). *)

val sigma : Nonuplet_t.nonuplet -> float
;;
(** [let s = sigma v;;]
    [s] = x +. y +. z *)

val sigma_of_nonuplet_list : Nonuplet_t.nonuplet list -> Nonuplet_t.nonuplet
;;

val minus : Nonuplet_t.nonuplet -> Nonuplet_t.nonuplet 
;;

val difference : Nonuplet_t.nonuplet -> Nonuplet_t.nonuplet -> Nonuplet_t.nonuplet
;;

val addition : Nonuplet_t.nonuplet -> Nonuplet_t.nonuplet -> Nonuplet_t.nonuplet
;;

val scaling : Nonuplet_t.nonuplet -> float -> Nonuplet_t.nonuplet 
;;

val dividing : Nonuplet_t.nonuplet -> float -> Nonuplet_t.nonuplet 
;;

val nonuplet_of_trifloat_triplet : 
    Float_triplet_t.float_triplet * Float_triplet_t.float_triplet * Float_triplet_t.float_triplet ->
      Nonuplet_t.nonuplet 
;;

val trifloat_triplet_of_nonuplet : Nonuplet_t.nonuplet -> 
Float_triplet_t.float_triplet * Float_triplet_t.float_triplet * Float_triplet_t.float_triplet
;;

val pair_product : Nonuplet_t.nonuplet -> Nonuplet_t.nonuplet -> 
  Nonuplet_t.nonuplet
;;

val dot_product : Nonuplet_t.nonuplet -> Nonuplet_t.nonuplet -> float
;;

val print : Format.formatter -> Nonuplet_t.nonuplet -> unit
;;

val write : out_channel -> Nonuplet_t.nonuplet -> unit
