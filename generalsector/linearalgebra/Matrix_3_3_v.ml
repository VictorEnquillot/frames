(* $Id: Exp $ *)

let nam_mod = "Matrix_3_3_v";;

(* *** TODO 
let make tri_1  tri_2  tri_3 =
  (tri_1, tri_2, tri_3)
;;

let unity = (Vector_3d_v.unity_x, Vector_3d_v.unity_y, Vector_3d_v.unity_z) ;;

let to_matrix  ttr = array2_of_float_triplet2  ttr;;

let of_matrix  mtx = float_triplet2_of_array2  mtx;;

let to_list  mtx =
  let ((m11, m12, m13), 
       (m21, m22, m23), 
       (m31, m32, m33)) = mtx in
  [m11; m12; m13; m21; m22; m23; m31; m32; m33]
;;

let left_matrix_product  mata  matb = 
  let ((a11, a12, a13), 
       (a21, a22, a23), 
       (a31, a32, a33)) = mata in
  
  let ((b11, b12, b13), 
       (b21, b22, b23), 
       (b31, b32, b33)) = matb in
  
  let ab11 = a11*.b11 +. a12*.b21 +. a13*.b31 in
  let ab12 = a11*.b12 +. a12*.b22 +. a13*.b32 in
  let ab13 = a11*.b13 +. a12*.b23 +. a13*.b33 in

  let ab21 = a21*.b11 +. a22*.b21 +. a23*.b31 in
  let ab22 = a21*.b12 +. a22*.b22 +. a23*.b32 in
  let ab23 = a21*.b13 +. a22*.b23 +. a23*.b33 in

  let ab31 = a31*.b11 +. a32*.b21 +. a33*.b31 in
  let ab32 = a31*.b12 +. a32*.b22 +. a33*.b32 in
  let ab33 = a31*.b13 +. a32*.b23 +. a33*.b33 in

   ((ab11, ab12, ab13), 
    (ab21, ab22, ab23), 
    (ab31, ab32, ab33))
;;

let right_array2_mult  mata  matb = 
  left_matrix_product  matb  mata
;;

let diagonal  mtx =
  let ((m11, m12, m13), 
      (m21, m22, m23), 
      (m31, m32, m33)) = mtx in
   
    (m11, m22, m33)
;;

let addition mata matb =
  let ((a11, a12, a13), 
      (a21, a22, a23), 
      (a31, a32, a33)) = mata

  and ((b11, b12, b13), 
      (b21, b22, b23), 
      (b31, b32, b33)) = matb in
   (
     (a11 +. b11, a12 +. b12, a13 +. b13), 
     (a21 +. b21, a22 +. b22, a23 +. b23), 
     (a31 +. b31, a32 +. b32, a33 +. b33)
   ) 
;;

let difference mata matb =
  let ((a11, a12, a13), 
      (a21, a22, a23), 
      (a31, a32, a33)) = mata

  and ((b11, b12, b13), 
      (b21, b22, b23), 
      (b31, b32, b33)) = matb in
   (
     (a11 -. b11, a12 -. b12, a13 -. b13), 
     (a21 -. b21, a22 -. b22, a23 -. b23), 
     (a31 -. b31, a32 -. b32, a33 -. b33)
   ) 
;;

let modulus mtx =
  let (line_vct_1, line_vct_2, line_vct_3) = mtx in
    Vector_3d_v.modulus line_vct_1 +.
    Vector_3d_v.modulus line_vct_2 +.
    Vector_3d_v.modulus line_vct_3
;;

let is_equal_at_epsilon_float mtx_1 mtx_2 =
  modulus (difference mtx_1 mtx_2) < epsilon_float
;;

let is_equal_at_epsilon eps mtx_1 mtx_2 =
  modulus (difference mtx_1 mtx_2) < eps
;;

let transposed  mtx =
  let ((v11, v12, v13), 
      (v21, v22, v23), 
      (v31, v32, v33)) = mtx in
    
   ((v11, v21, v31), 
    (v12, v22, v32), 
    (v13, v23, v33))
;;

let scaling  mtx scl = 
  let ((v11, v12, v13), 
       (v21, v22, v23), 
       (v31, v32, v33)) = mtx in

   ((v11*.scl, v12*.scl, v13*.scl), 
    (v21*.scl, v22*.scl, v23*.scl), 
    (v31*.scl, v32*.scl, v33*.scl))
;;

let left_vector_product  vct  mtx = 
  Utilities_v.not_yet_implemented "Matrix_3_3.left_vector_product"
;;

let right_vector_product  mtx  vct = 
  Utilities_v.not_yet_implemented "Matrix_3_3.right_vector_product"
;;

let determinant  mtx =
  Utilities_v.not_yet_implemented "Matrix_3_3.determinant"
;;

let inversion  mtx =
  Utilities_v.not_yet_implemented "Matrix_3_3.inversion"
;;

let print  ppf  mtx = 
  let (v1, v2, v3) = mtx in
    Format.fprintf  ppf "@[ %a@. %a@. %a@]@." 
      Vector_3d_v.print  v1
      Vector_3d_v.print  v2
      Vector_3d_v.print  v3
;;

*)

let read ib =
  Utilities_v.not_yet_implemented nam_mod "read"
;;
