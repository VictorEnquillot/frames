(* $Id: Exp $ *)

val unity : Tensor_3_3_t.tensor_3_3
;;
(** The 3x3 unity tensor. *)

val make : Float_triplet_t.float_triplet -> Float_triplet_t.float_triplet -> 
  Float_triplet_t.float_triplet -> Tensor_3_3_t.tensor_3_3
;;

val left_float_triplet_product : Float_triplet_t.float_triplet -> Tensor_3_3_t.tensor_3_3 -> 
  Float_triplet_t.float_triplet
;;

val right_float_triplet_product : Tensor_3_3_t.tensor_3_3 -> Float_triplet_t.float_triplet ->
  Float_triplet_t.float_triplet
;;

val left_tensor_3_3_product : Tensor_3_3_t.tensor_3_3 -> 
  Tensor_3_3_t.tensor_3_3 -> 
    Tensor_3_3_t.tensor_3_3 
;;

val right_tensor_3_3_product : Tensor_3_3_t.tensor_3_3 ->
  Tensor_3_3_t.tensor_3_3 ->
    Tensor_3_3_t.tensor_3_3 
;;

val diagonal : Tensor_3_3_t.tensor_3_3 -> Float_triplet_t.float_triplet
;;

val scaling : Tensor_3_3_t.tensor_3_3 -> float -> Tensor_3_3_t.tensor_3_3 
;;

val list_of_tensor_3_3 : Tensor_3_3_t.tensor_3_3 -> float list
;;

val determinant :  Tensor_3_3_t.tensor_3_3 -> float
;;

val inversion : Tensor_3_3_t.tensor_3_3 -> Tensor_3_3_t.tensor_3_3 
;;

val is_equal_at_epsilon_float : Tensor_3_3_t.tensor_3_3 -> Tensor_3_3_t.tensor_3_3 -> 
  bool
;;

val is_equal_at_epsilon : float -> Tensor_3_3_t.tensor_3_3 -> Tensor_3_3_t.tensor_3_3 
  -> bool
;;

val transposed : Tensor_3_3_t.tensor_3_3 -> Tensor_3_3_t.tensor_3_3 
;;

val print : Format.formatter -> Tensor_3_3_t.tensor_3_3 -> unit
;;

val read : Scanf.Scanning.scanbuf -> Tensor_3_3_t.tensor_3_3
;;
