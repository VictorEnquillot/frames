(* $Id: matrix_3_3.mli,v 1.2 2007-08-22 16:55:10 colonna Exp $ *)
(*
val unity : Matrix_3_3_t.matrix_3_3
;;
(** The 3x3 unity matrix. *)

val make : Vector_3d_t.vector_3d -> Vector_3d_t.vector_3d -> 
  Vector_3d_t.vector_3d -> Matrix_3_3_t.matrix_3_3
;;

val left_matrix_product : Matrix_3_3_t.matrix_3_3 -> Matrix_3_3_t.matrix_3_3 -> 
  Matrix_3_3_t.matrix_3_3 
;;

val right_array2_mult : Matrix_3_3_t.matrix_3_3 -> Matrix_3_3_t.matrix_3_3 ->
  Matrix_3_3_t.matrix_3_3 
;;

val diagonal : Matrix_3_3_t.matrix_3_3 -> Vector_3d_t.vector_3d
;;

val scaling : Matrix_3_3_t.matrix_3_3 -> float -> Matrix_3_3_t.matrix_3_3 
;;

val to_list : Matrix_3_3_t.matrix_3_3 -> float list
;;

val left_vector_product : Vector_3d_t.vector_3d -> Matrix_3_3_t.matrix_3_3 -> 
  Vector_3d_t.vector_3d
;;

val right_vector_product : Matrix_3_3_t.matrix_3_3 -> Vector_3d_t.vector_3d ->
  Vector_3d_t.vector_3d
;;

val determinant :  Matrix_3_3_t.matrix_3_3 -> float
;;

val inversion : Matrix_3_3_t.matrix_3_3 -> Matrix_3_3_t.matrix_3_3 
;;

val is_equal_at_epsilon_float : Matrix_3_3_t.matrix_3_3 -> Matrix_3_3_t.matrix_3_3 -> 
  bool
;;

val is_equal_at_epsilon : float -> Matrix_3_3_t.matrix_3_3 -> Matrix_3_3_t.matrix_3_3 
  -> bool
;;

val transposed : Matrix_3_3_t.matrix_3_3 -> Matrix_3_3_t.matrix_3_3 
;;

val print : Format.formatter -> Matrix_3_3_t.matrix_3_3 -> unit
;;
*)
val read : Scanf.Scanning.scanbuf -> Matrix_3_3_t.matrix_3_3
;;
