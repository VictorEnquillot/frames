(** {3 A Float_triplet of float.} *)

let nam_mod = "Float_triplet_v";;

let zero = (0.0, 0.0, 0.0);;

let unity_x = (1.0, 0.0, 0.0);;

let unity_y = (0.0, 1.0, 0.0);;

let unity_z = (0.0, 0.0, 1.0);;

let sum_fun_on_i fn trp =
  let (x, y, z) = trp in   
    fn(x) +. fn(y) +. fn(z)
;;

let sigma trp =
  let (x, y, z) = trp in   
    x +. y +. z 
;;

let norm2 trp =
  let (x, y, z) = trp in
    x*.x +. y*.y +. z*.z
;;

let norm trp =
  sqrt (norm2 trp)
;;
let modulus = norm;; 

let addition trp_1 trp_2 =
 let (x1, y1, z1) = trp_1 
 and (x2, y2, z2) = trp_2 in
 (x1 +. x2, y1 +. y2, z1 +. z2)
;;

let difference trp_1 trp_2 =
 let (x1, y1, z1) = trp_1 
 and (x2, y2, z2) = trp_2 in
 (x1 -. x2, y1 -. y2, z1 -. z2)
;;

let minus trp =
 let (x, y, z) = trp in
  (-.x, -.y, -.z)
;;

let is_equal_at_epsilon_float vec_1 vec_2 =
 modulus (difference vec_1 vec_2) < epsilon_float
;;

let is_equal_at_epsilon eps vec_1 vec_2 =
 modulus (difference vec_1 vec_2) < eps
;;

let scaling trp scl =
 let (x, y, z) = trp in
  (x *. scl, y *. scl, z *. scl)
;;

let dividing trp scl =
 let (x, y, z) = trp in
  (x /. scl, y /. scl, z /. scl)
;;

let sigma_of_vector_list trp_list =
  List.fold_left
   (fun sum trp -> addition sum trp) 
   zero trp_list 
;;

let bifloat_float_triplet_of_bifloat_triplet (trp_1, trp_2) =
 let (x1, y1, z1) = trp_1
 and (x2, y2, z2) = trp_2 in
  ( (x1, x2), (y1, y2), (z1, z2) )
;;

let pair_product trp_1 trp_2 =
 let (x1, y1, z1) = trp_1 
 and (x2, y2, z2) = trp_2 in
  ( x1 *. x2, y1 *. y2, z1 *. z2)
;;

let dot_product trp_1 trp_2 =
  let (x1, y1, z1) = trp_1 
  and (x2, y2, z2) = trp_2 in
  x1 *. x2 +. y1 *. y2 +. z1 *. z2
;;

let tensor_product trp_1 trp_2 =
  let (x1, y1, z1) = trp_1 
  and (x2, y2, z2) = trp_2 in
  ( 
    (x1 *. x2, x1 *. y2, x1 *. z2),
    (y1 *. x2, y1 *. y2, y1 *. z2),
    (z1 *. x2, z1 *. y2, z1 *. z2)
   )
;;

let external_product trp_1 trp_2 =
  let (x1, y1, z1) = trp_1 
  and (x2, y2, z2) = trp_2 in
  ( y1 *. z2 -. z1 *. y2, 
    z1 *. x2 -. x1 *. z2, 
    x1 *. y2 -. y1 *. x2 ) 
;;

let rotation trp phi theta psi =
  Utilities_v.not_yet_implemented nam_mod "Euler matrix p. 147 Goldstein"
;;

let name trp =
  let (x, y, z) = trp in
  Format.sprintf "x = %f y = %f z = %f" x y z 
 ;;  

let print_float_triplet ppf trp =
  let (x, y, z) = trp in
  Format.fprintf ppf "x = %f y = %f z = %f" x y z 
 ;;  

let print ppf trp =
  Format.fprintf ppf "@[<h>%a@]" print_float_triplet trp
;;

let read trp =
  Utilities_v.not_yet_implemented nam_mod "Vector_3d_t.pread"
;;

let write oc (x, y, z) = 
  Format.fprintf (Format.formatter_of_out_channel oc) 
  "%f %f %f\n" x y z;
;;

