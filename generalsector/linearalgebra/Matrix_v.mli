(** Array2 operations. *)

val row_of_matrix_of_int : 
    Matrix_t.matrix -> 
      int -> 
	Vector_t.vector
;;

val column_of_matrix_of_int : 
    Matrix_t.matrix -> 
      int -> 
	Vector_t.vector
;;

val make_diagonal_of_vector : 
    Vector_t.vector ->
      Matrix_t.matrix
;;

val zero : int -> Matrix_t.matrix
;;

val identity : int -> Matrix_t.matrix
;;

val unity : int -> Matrix_t.matrix
;;

val epsilon_up_triangular_of_float_of_matrix :
    float ->
      Matrix_t.matrix ->       
	Matrix_t.matrix
;;

val check_is_up_triangular_at_epsilon : float -> Matrix_t.matrix -> unit
;;

val scaling : Matrix_t.matrix -> float -> Matrix_t.matrix
;;

val addition : Matrix_t.matrix -> Matrix_t.matrix -> Matrix_t.matrix
;;

val difference : Matrix_t.matrix -> Matrix_t.matrix -> Matrix_t.matrix
;;

val modulus : Matrix_t.matrix -> float 
;;

val left_matrix_product : Matrix_t.matrix -> Matrix_t.matrix -> Matrix_t.matrix
;;

val is_equal_at_epsilon : float -> Matrix_t.matrix -> Matrix_t.matrix -> bool
;;
(** b = is_equal_at_epsilon_float e v1 v2;;
    means v1 and v2 modulus differ by less than [e] *)

val is_equal_at_epsilon_float : Matrix_t.matrix -> Matrix_t.matrix -> bool
;;
(** b = is_equal_at_epsilon_float v1 v2;;
    means v1 and v2 modulus differ by less than [Pervasives.epsilon_float] *)

val is_symmetric_at_epsilon : float -> Matrix_t.matrix -> bool
;;

val is_square : Matrix_t.matrix -> bool
;;

val check_is_symmetric_at_epsilon : float -> Matrix_t.matrix -> unit
;;

val determinant : Matrix_t.matrix -> 'a 
;;

val rank : Matrix_t.matrix -> int
;;

val inversion : Matrix_t.matrix -> Matrix_t.matrix
;;

val name : 
    Matrix_t.matrix -> 
      string
;;



