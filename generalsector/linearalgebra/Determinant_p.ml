(** A Determinant in Rn. *)

let nam_mod = "Determinant_p";;


type determinant = Matrix_t.matrix
;;

(** {6 Making.} *)

let make mat =
  if Matrix_v.is_square mat 
  then 
    mat
  else 
    failwith "Not_square_array2:make"
;;

(** {6 Extracting.} *)

let dimension_off_determinant det =
  List.length det
;;

let matrix_off_determinant det =
  det
;;

(** {6 Maming.} *)

let name det =
  let mat = matrix_off_determinant det in
  Format.sprintf "%s" (Matrix_v.name mat)
;;
