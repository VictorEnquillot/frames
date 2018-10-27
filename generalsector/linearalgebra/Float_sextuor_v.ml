(* $Id: Exp $ *)

let nam_mod = "Float_sextuor_v";;

let not_yet_implemented m f =
  failwith
    (Printf.sprintf "%s: %s is not yet implemented." m f) 
;;

let float_sextuor_of_bifloat_triplet (tr1, tr2) =
  let (x, y, z) = tr1 in
  let (u, v, w) = tr2 in
  (x, y, z, u, v, w)
;;

let bifloat_triplet_of_float_sextuor sxp =
  let (x, y, z, u, v, w) = sxp in
  let tr1 = (x, y, z) in
  let tr2 = (u, v, w) in
  (tr1, tr2)
;;

let zero = float_sextuor_of_bifloat_triplet (Float_triplet_v.zero, Float_triplet_v.zero) 
;;

let sum_fun_on_i fn sxp =
  let (tr1, tr2) = bifloat_triplet_of_float_sextuor sxp in
  (Float_triplet_v.sum_fun_on_i fn tr1) +. (Float_triplet_v.sum_fun_on_i fn tr2) 
;;

let sigma sxp =
  let (tr1, tr2) = bifloat_triplet_of_float_sextuor sxp in
  (Float_triplet_v.sigma tr1) +. (Float_triplet_v.sigma tr2) 
;;

let addition sxp_1 sxp_2 =
  let (x1, y1, z1, u1, v1, w1) = sxp_1 
  and (x2, y2, z2, u2, v2, w2) = sxp_2 in
  (x1 +. x2, y1 +. y2, z1 +. z2, u1 +. u2, v1 +. v2, w1 +. w2 )
;;

let difference sxp_1 sxp_2 =
  let (x1, y1, z1, u1, v1, w1) = sxp_1 
  and (x2, y2, z2, u2, v2, w2) = sxp_2 in
  (x1 -. x2, y1 -. y2, z1 -. z2, u1 -. u2, v1 -. v2, w1 -. w2 )
;;

let minus sxp =
 let (x, y, z, u, v, w) = sxp in
  (-.x, -.y, -.z, -.u, -.v, -.w)
;;

let scaling sxp scl =
 let (x, y, z, u, v, w) = sxp in
  (x *. scl, y *. scl, z *. scl, u *. scl , v *. scl, w *. scl)
;;

let dividing sxp scl =
 let (x, y, z, u, v, w) = sxp in
  (x /. scl, y /. scl, z /. scl, u /. scl , v /. scl, w /. scl)
;;

let sigma_of_vector_list sxp_list =
  List.fold_left
   (fun sum sxp -> addition sum sxp) 
   zero sxp_list 
;;

let coeffs_of_float_vector_list fv_l =
 List.map (fun (f, v) -> f) fv_l 
;;

let vectors_of_float_vector_list fv_l =
 List.map (fun (f, v) -> v) fv_l 
;;

let scaled_vectors_of_float_vector_list fv_l = 
 List.map (fun (f, v) -> scaling v f) fv_l
;;

let float_triplet_of_pair_vector sxp_1 sxp_2 =
 let (x1, y1, z1) = sxp_1
 and (x2, y2, z2) = sxp_2 in
  ( (x1, x2), (y1, y2), (z1, z2) )
;;

let pair_product sxp_1 sxp_2 =
  let (x1, y1, z1, u1, v1, w1) = sxp_1 
  and (x2, y2, z2, u2, v2, w2) = sxp_2 in
  ( x1 *. x2, y1 *. y2, z1 *. z2, u1 *. u2, v1 *. v2, w1 *. w2)
;;

let dot_product sxp_1 sxp_2 =
  let (x1, y1, z1, u1, v1, w1) = sxp_1 
  and (x2, y2, z2, u2, v2, w2) = sxp_2 in
  ( x1 *. x2+. y1 *. y2+. z1 *. z2+. u1 *. u2+. v1 *. v2+. w1 *. w2)
;;

let tensor_product sxp_1 sxp_2 =
  let (x1, y1, z1, u1, v1, w1) = sxp_1 
  and (x2, y2, z2, u2, v2, w2) = sxp_2 in
  ( 
    (x1 *. x2, x1 *. y2, x1 *. z2, x1 *. u2, x1 *. v2, x1 *. w2),
    (y1 *. x2, y1 *. y2, y1 *. z2, y1 *. u2, y1 *. v2, y1 *. w2),
    (z1 *. x2, z1 *. y2, z1 *. z2, z1 *. u2, z1 *. v2, z1 *. w2),
    (u1 *. x2, u1 *. y2, u1 *. z2, u1 *. u2, u1 *. v2, u1 *. w2),
    (v1 *. x2, v1 *. y2, v1 *. z2, v1 *. u2, v1 *. v2, v1 *. w2),
    (w1 *. x2, w1 *. y2, w1 *. z2, w1 *. u2, w1 *. v2, w1 *. w2)
   )
;;

let print ppf sxp =
  let (x, y, z, u, v, w) = sxp in
  Format.fprintf ppf 
    "x = %f y = %f z = %f u = %f v = %f w = %f" 
    x y z u v w
 ;;  

let write oc (x, y, z, vx, vy, vz) = 
  Format.fprintf (Format.formatter_of_out_channel oc) 
  "%f %f %f %f %f %f\n" x y z vx vy vz
;;

let read sxp =
  not_yet_implemented nam_mod "read"
;;

