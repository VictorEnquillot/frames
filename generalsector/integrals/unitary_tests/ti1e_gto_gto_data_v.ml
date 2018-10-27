let mod_nam = "Ti1e_gto_gto_data_v";;

open Gentest_v;;

(** {3 Tests for I1e_gto_gto_data_v.} *)

testing "I1e_gto_gto_data_v";;

(* toplevel 
   #use "ti1e_gto_gto_data_v.ml";; 
 *)

module Iggd_v = I1e_gto_gto_data_v

let a_x = -. 0.5;;
let a_y = 1.;;
let a_z = 2.;;

let b_x = 0.5;;
let b_y = 1.;;
let b_z = 2.;;

let pnt_a = (a_x, a_y, a_z);;
let pnt_b = (b_x, b_y, b_z);;

let vct_ab = (b_x -. a_x, b_y -. a_y ,  b_z -. a_z);;

let pi = 4.0 *. atan (1.0);;

let alpha = 1.;;
let beta = 1.;;

let nu = 1. /. (alpha +. beta);;
let nu_over_two = nu /. 2.;;

let mu = (alpha *. beta) *. nu;;
 
let p_x = (alpha *. a_x +. beta *. b_x ) *. nu;;

(* 9.2.14 : ils notent X_{AB} = A_x - B_x  => Signe inverse
j'ai aussi corrige plus bas.
let pa_x = a_x -. p_x;; 
let pb_x = b_x -. p_x;; 
*)
let pa_x = p_x -. a_x;; 
let pb_x = p_x -. b_x;; 

let ab_x = b_x -. a_x;;

let sij_x = 
  Iggd_v.overlap_of_pa_x_of_pb_x_of_alpha_of_beta_of_ij 
    pa_x pb_x alpha beta ;;

let s_x_0_0 = sij_x (0, 0);;
let s_x_0_1 = sij_x (0, 1);;
let s_x_0_2 = sij_x (0, 2);;
let s_x_0_3 = sij_x (0, 3);;
let s_x_1_0 = sij_x (1, 0);;
let s_x_1_1 = sij_x (1, 1);;
let s_x_1_2 = sij_x (1, 2);;
let s_x_2_1 = sij_x (2, 1);;
let s_x_2_2 = sij_x (2, 2);;
let s_x_3_2 = sij_x (3, 2);;
let s_x_3_3 = sij_x (3, 3);;
let s_x_7_3 = sij_x (7, 3);;
let s_x_3_7 = sij_x (3, 7);;

testi 0 (
s_x_0_0 = 0.760173450533140338
(*        0.760173450533742 *)
);;

testi 1 (
s_x_0_1 = -0.380086725266570169
(*        -0.380086725268535 *)
);;

testi 2 (
s_x_1_0 =  0.380086725266570169
(*         0.380086725265667 *)
);;

testi 3 (
s_x_1_1 = 0.0
(*        5.528254938129688E-014 *)
);;

testi 4 (
s_x_1_2 = 0.0
(*        1.747947827885793E-013 *)
);;

testi 5 (
s_x_2_1 = 0.0
(*       -1.428138869041826E-013 *)
);;

testi 6 (
s_x_2_2 = 0.0950216813166425422
(*        0.09502168131625291   *)
);;

testi 7 (
s_x_3_7 =  0.807684291191461567
(*         0.807684289409683    *)

);;

testi 8 (
s_x_7_3 =  0.807684291191461567
(*         0.807684289409924    *)
);;

let a_x = 0.;;
let b_x = 1.;;

let pnt_a = (a_x, a_y, a_z);;
let pnt_b = (b_x, b_y, b_z);;

let vct_ab = (b_x -. a_x, b_y -. a_y ,  b_z -. a_z);;

let alpha = 1.;;
let beta = 2.;;

let nu = 1. /. (alpha +. beta);;
let nu_over_two = nu /. 2.;;

let mu = (alpha *. beta) *. nu;;
 
let p_x = (alpha *. a_x +. beta *. b_x ) *. nu;;

let pa_x = p_x -. a_x;; 
let pb_x = p_x -. b_x;; 

let ab_x = b_x -. a_x;;

let sij_x = 
  Iggd_v.overlap_of_pa_x_of_pb_x_of_alpha_of_beta_of_ij 
    pa_x pb_x alpha beta ;;

let s_x_0_0 = sij_x (0, 0);;
let s_x_0_1 = sij_x (0, 1);;
let s_x_0_2 = sij_x (0, 2);;
let s_x_0_3 = sij_x (0, 3);;
let s_x_1_0 = sij_x (1, 0);;
let s_x_1_1 = sij_x (1, 1);;
let s_x_1_2 = sij_x (1, 2);;
let s_x_2_1 = sij_x (2, 1);;
let s_x_2_2 = sij_x (2, 2);;
let s_x_3_2 = sij_x (3, 2);;
let s_x_3_3 = sij_x (3, 3);;
let s_x_7_3 = sij_x (7, 3);;
let s_x_3_7 = sij_x (3, 7);;

testi 9 (
s_x_0_0 = 0.525393450222992775
(*        0.525393450221719 *)
);;

testi 10 (
s_x_0_1 = -0.175131150074330944
(*        -0.175131150070310  *)
);;

testi 11 (
s_x_1_0 =   0.350262300148661831
(*          0.350262300151066    *)
);;

testi 12 (
s_x_1_1 = -0.0291885250123885
(*        -0.0291885250197983   *)
);;

testi 13 (
s_x_1_2 =  0.0389180333498513123
(*         0.03891803337532361  *)
);;

testi 14 (
s_x_2_1 =  0.00972950833746281246
(*         0.009729508355241761   *)
);;

testi 15 (
s_x_2_2 = 0.0405396180727617822
(*        0.04053961801607115 *)
);;

testi 16 (
s_x_3_7 = 0.0307314217249108103
(*        0.03073137746352163 *)
);;

testi 17 (
s_x_7_3 = 0.250379410015438175 
(*        0.250379399945667 *)
);;

