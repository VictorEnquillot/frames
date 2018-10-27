(* $Id: vector_3d.ml,v 1.2 2007-08-22 16:55:10 colonna Exp $ *)

let nam_mod = "Vector_3d_v";;

let not_yet_implemented m f =
  failwith
    (Printf.sprintf "%s: %s is not yet implemented." m f) 
;;

(** {6 Error Printing.} *)

let print_error_dimension dim her =
  Format.fprintf  Format.err_formatter
    "@.@[%s.%s: --- Fatal Error@. \
    expecting dimension 3 found %i @]@."
    nam_mod her dim
;;

let array_of_float_triplet t =
  let (x, y, z) = t in
    [|x; y; z|]
;;

let vector_of_vector_3d vct =
  Array.copy vct
;;

let vector_3d_of_float_triplet trp =
  array_of_float_triplet trp
;;

let float_triplet_of_array  a =
  if Array.length a = 3 then (a.(0), a.(1), a.(2)) else
    raise (Failure "Vector_3d_v.float_triplet_of_array: array length not 3")
;;

let float_triplet2_of_array2 m =
  let (a1, a2, a3) = float_triplet_of_array m  in
( float_triplet_of_array a1, float_triplet_of_array a2, float_triplet_of_array a3)
;;

let array2_of_float_triplet2  tt  =
  let a = array_of_float_triplet tt in
  Array.map array_of_float_triplet a 
;;

let float_triplet_of_vector_3d vct = 
  float_triplet_of_array vct
;;

let float_sextuor_of_bivector_3d (vc1, vc2) = 
  let (a, b, c)  = float_triplet_of_vector_3d vc1 in
  let (d, e, f) = float_triplet_of_vector_3d vc2 in
  (a, b, c, d, e, f)
;;

let vector_3d_of_vector vct =
  let dim = Array.length vct in
  if dim = 3 then Array.copy vct
  else 
    begin
      print_error_dimension dim "vector_3d_of_vector";
      assert false;
    end
;;

let zero = vector_3d_of_float_triplet (Float_triplet_v.zero)

let unity_x = vector_3d_of_float_triplet (Float_triplet_v.unity_x)

let unity_y = vector_3d_of_float_triplet (Float_triplet_v.unity_y)

let unity_z = vector_3d_of_float_triplet (Float_triplet_v.unity_z)

let sum_fun_on_i fn vct =
  let trp = float_triplet_of_vector_3d vct in
  Float_triplet_v.sum_fun_on_i fn trp
;;

let sigma vct =
  let trp = float_triplet_of_vector_3d vct in
  Float_triplet_v.sigma trp
;;

let norm2 vct =
  let trp = float_triplet_of_vector_3d vct in
  Float_triplet_v.norm2 trp
;;

let norm vct =
 sqrt (norm2 vct)
;;
let modulus = norm;; 

let addition vct1 vct2 =
  let tr1 = float_triplet_of_vector_3d vct1 in
  let tr2 = float_triplet_of_vector_3d vct2 in
  vector_3d_of_float_triplet (Float_triplet_v.addition tr1 tr2)
;;

let difference vct1 vct2 =
  let tr1 = float_triplet_of_vector_3d vct1 in
  let tr2 = float_triplet_of_vector_3d vct2 in
  vector_3d_of_float_triplet (Float_triplet_v.difference tr1 tr2) 
;;

let minus vct =
  let trp = float_triplet_of_vector_3d vct in
  vector_3d_of_float_triplet (Float_triplet_v.minus trp)
;;

let is_equal_at_epsilon_float vec_1 vec_2 =
 modulus (difference vec_1 vec_2) < epsilon_float
;;

let is_equal_at_epsilon eps vec_1 vec_2 =
 modulus (difference vec_1 vec_2) < eps
;;

let scaling vct scl =
  let trp = float_triplet_of_vector_3d vct in
  vector_3d_of_float_triplet (Float_triplet_v.scaling trp scl)
;;

let dividing vct scl =
  let trp = float_triplet_of_vector_3d vct in
  vector_3d_of_float_triplet (Float_triplet_v.dividing trp scl)
;;

let bifloat_vector_3d_of_bivector_3d (vct1, vct2) =
  let tr1 = float_triplet_of_vector_3d vct1 in
  let tr2 = float_triplet_of_vector_3d vct2 in
  vector_3d_of_float_triplet 
    (Float_triplet_v.bifloat_float_triplet_of_bifloat_triplet (tr1, tr2))
;;

let pair_product vct1 vct2 =
  let tr1 = float_triplet_of_vector_3d vct1 in
  let tr2 = float_triplet_of_vector_3d vct2 in
  vector_3d_of_float_triplet 
    (Float_triplet_v.pair_product tr1 tr2)
;;

let dot_product vct1 vct2 =
  let tr1 = float_triplet_of_vector_3d vct1 in
  let tr2 = float_triplet_of_vector_3d vct2 in
  Float_triplet_v.dot_product tr1 tr2
;;

let tensor_product vct1 vct2 =
  let tr1 = float_triplet_of_vector_3d vct1 in
  let tr2 = float_triplet_of_vector_3d vct2 in
  Float_triplet_v.tensor_product tr1 tr2
;;

let external_product vct1 vct2 =
  let tr1 = float_triplet_of_vector_3d vct1 in
  let tr2 = float_triplet_of_vector_3d vct2 in
  vector_3d_of_float_triplet 
    (Float_triplet_v.external_product tr1 tr2)
;;

let rotation vct phi theta psi =
  not_yet_implemented nam_mod "Euler matrix p. 147 Goldstein"
;;

let trifloat_triplet_of_trivector_3d vc1 vc2 vc3=
  let (a, b, c) = float_triplet_of_vector_3d vc1 in 
  let (d, e, f) = float_triplet_of_vector_3d vc2 in 
  let (g, h, i) = float_triplet_of_vector_3d vc3 in 

  ((a, d, g), (b, e, h), (c,f, i))
;;

let print ppf vct =
  let trp = float_triplet_of_vector_3d vct in
  Float_triplet_v.print ppf trp 
 ;;  

let read vct =
 not_yet_implemented nam_mod "read"
;;
