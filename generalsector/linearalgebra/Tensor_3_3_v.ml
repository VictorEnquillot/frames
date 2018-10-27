(* $Id: Exp $ *)

let nam_mod = "Tensor_3_3_v";;

let not_yet_implemented m f =
  failwith
    (Printf.sprintf "%s: %s is not yet implemented." m f) 
;;

let make tr1 tr2 tr3 =
 (tr1, tr2, tr3)
;;

let unity = (Float_triplet_v.unity_x, Float_triplet_v.unity_y, Float_triplet_v.unity_z) ;;

let list_of_tensor_3_3 tns =
 let ((m11, m12, m13), 
    (m21, m22, m23), 
    (m31, m32, m33)) = tns in
 [m11; m12; m13; m21; m22; m23; m31; m32; m33]
;;

let left_tensor_3_3_product tna tnb = 
 let ((a11, a12, a13), 
    (a21, a22, a23), 
    (a31, a32, a33)) = tna in
 
 let ((b11, b12, b13), 
    (b21, b22, b23), 
    (b31, b32, b33)) = tnb in
 
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

let right_tensor_3_3_product tna tnb = 
 left_tensor_3_3_product tnb tna
;;

let diagonal tns =
 let ((m11, m12, m13), 
   (m21, m22, m23), 
   (m31, m32, m33)) = tns in
  
  (m11, m22, m33)
;;

let addition tna tnb =
 let ((a11, a12, a13), 
   (a21, a22, a23), 
   (a31, a32, a33)) = tna

 and ((b11, b12, b13), 
   (b21, b22, b23), 
   (b31, b32, b33)) = tnb in
  (
   (a11 +. b11, a12 +. b12, a13 +. b13), 
   (a21 +. b21, a22 +. b22, a23 +. b23), 
   (a31 +. b31, a32 +. b32, a33 +. b33)
  ) 
;;

let difference tna tnb =
 let (
   (a11, a12, a13), 
   (a21, a22, a23), 
   (a31, a32, a33)) = tna

 and (
   (b11, b12, b13), 
   (b21, b22, b23), 
   (b31, b32, b33)) = tnb in
  (
   (a11 -. b11, a12 -. b12, a13 -. b13), 
   (a21 -. b21, a22 -. b22, a23 -. b23), 
   (a31 -. b31, a32 -. b32, a33 -. b33)
  ) 
;;

let modulus tns =
 let (tr1, tr2, tr3) = tns in
  Float_triplet_v.modulus tr1 +.
  Float_triplet_v.modulus tr2 +.
  Float_triplet_v.modulus tr3
;;

let is_equal_at_epsilon_float tns_1 tns_2 =
 modulus (difference tns_1 tns_2) < epsilon_float
;;

let is_equal_at_epsilon eps tns_1 tns_2 =
 modulus (difference tns_1 tns_2) < eps
;;

let transposed tns =
 let (
   (v11, v12, v13), 
   (v21, v22, v23), 
   (v31, v32, v33)) = tns in
 (
  (v11, v21, v31), 
  (v12, v22, v32), 
  (v13, v23, v33))
;;

let scaling tns scl = 
  let (
    (v11, v12, v13), 
    (v21, v22, v23), 
    (v31, v32, v33)) = tns in
  
  ((v11*.scl, v12*.scl, v13*.scl), 
   (v21*.scl, v22*.scl, v23*.scl), 
   (v31*.scl, v32*.scl, v33*.scl))
;;

let left_float_triplet_product trp tns = 
  let (t1, t2, t3) = trp in
  let (
    (v11, v12, v13), 
    (v21, v22, v23), 
    (v31, v32, v33)) = tns in
  
  (t1*.v11 +. t2*.v21 +. t3*.v31,
   t1*.v12 +. t2*.v22 +. t3*.v32,
   t1*.v13 +. t2*.v23 +. t3*.v33)
;;

let right_float_triplet_product tns trp = 
  let (t1, t2, t3) = trp in
  let (
    (v11, v12, v13), 
    (v21, v22, v23), 
    (v31, v32, v33)) = tns in
  
  (v11*.t1 +. v12*.t2 +. v13*.t3, 
   v21*.t1 +. v22*.t2 +. v23*.t3,
   v31*.t1 +. v32*.t2 +. v33*.t3)
;;

let determinant tns =
  not_yet_implemented nam_mod "determinant"
;;

let inversion tns =
  not_yet_implemented nam_mod "inversion"
;;

let print ppf tns = 
  let (tr1, tr2, tr3) = tns in
  Format.fprintf ppf "@[ (%a@., %a@., %a)@]@." 
    Float_triplet_v.print tr1
    Float_triplet_v.print tr2
    Float_triplet_v.print tr3
;;

let read ib =
  not_yet_implemented nam_mod "read"
;;
