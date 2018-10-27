(** {3 A Matrix on Rn.} *)

let nam_mod = "Matrix_v";;

(** {6 Modules.} *)


let column_of_matrix_of_int mat col = 
  List.nth mat col
;;

let row_of_matrix_of_int mat row =
  List.nth mat row
;;

let make_diagonal_of_vector vec =
  let len = List.length vec in
  let rec apply = function
    | 0 -> 
	let f = List.nth vec 0 in
	[Vector_v.nonzero_at_int_of_float_of_int 0 f len]
    | i ->
	let f = List.nth vec i in
	(Vector_v.nonzero_at_int_of_float_of_int i f len) 
	:: apply (i-1)
  in
  apply len
;;

let zero dim =
  make_diagonal_of_vector (Vector_v.zero_of_int dim)
;;

let unity dim =
  make_diagonal_of_vector (Vector_v.unity_of_int dim)
;;

let identity = unity
;;

let is_square mat =
  let len = List.length mat in
  let len_l = List.map List.length mat in
  List_v.only_element_of_repeated_list len_l = len
;;

let epsilon_up_triangular_of_float_of_matrix eps mat =
  let int_l = 
    List_v.int_list_of_length (List.length mat) 
  in  
  let dbl_l =
    List.map2 List_v.split_before_at_int_of_list int_l mat
  in
  List.map Doublet_v.right_off_doublet dbl_l
;;

let is_up_triangular_at_epsilon_of_matrix eps mat =
Utilities_v.not_yet_implemented nam_mod "is_up_triangular_at_epsilon_of_matrix"
;;
 
let check_is_up_triangular_at_epsilon eps mat = 
 if is_up_triangular_at_epsilon_of_matrix eps mat 
 then () 
 else 
   failwith 
     ("Not_up_triangular:check_is_up_triangular_at_epsilon")
;;

let scaling mat scl = 
  List.map (fun line -> Vector_v.scaling line scl) mat 
;;

let addition mat_1 mat_2 =
 List.map2 Vector_v.addition mat_2 mat_1 
;;

let difference mat_1 mat_2 =
 List.map2 Vector_v.difference mat_2 mat_1 
;;

let modulus mat =
  List_v.sigma_of_list_float (List.map Vector_v.modulus mat)
;;

let is_equal_at_epsilon_float mat_1 mat_2 =
 modulus (difference mat_1 mat_2) < epsilon_float
;;

let is_equal_at_epsilon eps mat_1 mat_2 =
 modulus (difference mat_1 mat_2) < eps
;;

let is_symmetric_at_epsilon eps mat = 
 if not (is_square mat) then false else
  is_equal_at_epsilon eps (List_v.transpose mat) mat 
;;

let check_is_symmetric_at_epsilon eps mat = 
 if is_symmetric_at_epsilon eps mat then () 
 else failwith ("Matrix_float.check_is_symmetric_at_epsilon false")
;;

let left_matrix_product mat_1 mat_2 = 
 Utilities_v.not_yet_implemented nam_mod "left_matrix_product"
;;

let left_vector_product vec mat = 
 Utilities_v.not_yet_implemented nam_mod "left_vector_product"
;;

let right_vector_product mat vec = 
 Utilities_v.not_yet_implemented nam_mod "right_vector_product"
;;

let determinant mat =
 Utilities_v.not_yet_implemented nam_mod "determinant"
;;

let rank mat =
 Utilities_v.not_yet_implemented nam_mod "determinant"
;;

let inversion mat =
 Utilities_v.not_yet_implemented nam_mod "inversion"
;;

let name mat =
  List_v.name_with_separator 
    (fun v -> Format.sprintf "@[ %s@]@." (Vector_v.name v)) "; " mat
;;

