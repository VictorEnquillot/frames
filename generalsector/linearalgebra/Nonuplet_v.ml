(* $Id: Exp $ *)

let nam_mod = "Nonuplet_v";;

let not_yet_implemented m f =
  failwith
    (Printf.sprintf "%s: %s is not yet implemented." m f) 
;;

let nonuplet_of_trifloat_triplet (tr1, tr2, tr3) =
  let (a, b, c) = tr1 in
  let (d, e, f) = tr2 in
  let (g, h, i) = tr3 in
  (a, b, c, d, e, f, g, h, i)
;;

let trifloat_triplet_of_nonuplet nnp =
  let (a, b, c, d, e, f, g, h, i) = nnp in
  let tr1 = (a, b, c) in
  let tr2 = (d, e, f) in
  let tr3 = (g, h, i) in  
  (tr1, tr2, tr3)
;;

let zero = nonuplet_of_trifloat_triplet (Float_triplet_v.zero, Float_triplet_v.zero, Float_triplet_v.zero) 
;;

let sum_fun_on_i fn nnp =
  let (tr1, tr2, tr3) = trifloat_triplet_of_nonuplet nnp in
  (Float_triplet_v.sum_fun_on_i fn tr1) +. 
    (Float_triplet_v.sum_fun_on_i fn tr2) +.
    (Float_triplet_v.sum_fun_on_i fn tr3) 
;;

let sigma nnp =
  let (tr1, tr2, tr3) = trifloat_triplet_of_nonuplet nnp in
  (Float_triplet_v.sigma tr1) +. (Float_triplet_v.sigma tr2) +. (Float_triplet_v.sigma tr3) 
;;

let addition nn1 nn2 =
  let (a1, b1, c1, d1, e1, f1, g1, h1, i1) = nn1 in
  let (a2, b2, c2, d2, e2, f2, g2, h2, i2) = nn2 in
  (a1 +. a2, b1 +. b2, c1 +. c2, 
   d1 +. d2, e1 +. e2, f1 +. f2, 
   g1 +. g2, h1 +. h2, i1 +. i2 )
;;

let difference nn1 nn2 =
  let (a1, b1, c1, d1, e1, f1, g1, h1, i1) = nn1 in
  let (a2, b2, c2, d2, e2, f2, g2, h2, i2) = nn2 in
  (a1 -. a2, b1 -. b2, c1 -. c2, 
   d1 -. d2, e1 -. e2, f1 -. f2, 
   g1 -. g2, h1 -. h2, i1 -. i2 )
;;

let minus nnp =
 let (a, b, c, d, e, f, g, h, i) = nnp in
  (-.a, -.b, -.c, -.d, -.e, -.f, -.g, -.h, -.i)
;;

let scaling nnp scl =
 let (a, b, c, d, e, f, g, h, i) = nnp in
  (a *. scl, b *. scl, c *. scl, 
   d *. scl, e *. scl, f *. scl,
   g *. scl, h *. scl, i *. scl)
;;

let dividing nnp scl =
 let (a, b, c, d, e, f, g, h, i) = nnp in
  (a /. scl, b /. scl, c /. scl, 
   d /. scl, e /. scl, f /. scl,
   g /. scl, h /. scl, i /. scl)
;;

let sigma_of_nonuplet_list nnlist =
  List.fold_left
   (fun sum nnp -> addition sum nnp) 
   zero nnlist 
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

let pair_product nn1 nn2 =
  let (a1, b1, c1, d1, e1, f1, g1, h1, i1) = nn1 in
  let (a2, b2, c2, d2, e2, f2, g2, h2, i2) = nn2 in

  ( a1 *. a2, b1 *. b2, c1 *. c2, 
    d1 *. d2, e1 *. e2, f1 *. f2,
    g1 *. g2, h1 *. h2, i1 *. i2)
;;

let dot_product nn1 nn2 =
  let (a1, b1, c1, d1, e1, f1, g1, h1, i1) = nn1 in
  let (a2, b2, c2, d2, e2, f2, g2, h2, i2) = nn2 in

  ( a1 *. a2 +. b1 *. b2 +. c1 *. c2 
      +. d1 *. d2 +. e1 *. e2 +. f1 *. f2
      +. g1 *. g2 +. h1 *. h2 +. i1 *. i2)
;;

let print ppf nnp =
  let (a, b, c, d, e, f, g, h, i) = nnp in
  Format.fprintf ppf 
    "a = %f b = %f c = %f d = %f e = %f f = %f g = %f h = %f i = %f" 
    a b c d e f g h i
 ;;  

let write oc (a, b, c, d, e, f, g, h, i) = 
  Format.fprintf (Format.formatter_of_out_channel oc) 
  "%f %f %f %f %f %f %f %f %f\n" a b c d e f g h i
;;

let read nnp =
  not_yet_implemented nam_mod "read"
;;

