(** A Determinant in Rn. *)

type determinant = private Matrix_t.matrix
;;

(** {6 Making.} *)

val make : 
    Matrix_t.matrix ->
      determinant
;;

(** {6 Extracting.} *)

val dimension_off_determinant : 
    determinant -> 
      int
;;

val matrix_off_determinant : 
    determinant ->
      Matrix_t.matrix
;;

(** {6 Naming.} *)

val name : 
    determinant -> 
      string
;;
