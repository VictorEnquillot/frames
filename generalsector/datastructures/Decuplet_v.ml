(** {3 The functionalities for a Decuplet.} *)

let nam_mod = "Octtuplet_v";;

(** {6 Modules.} *)


(** {6 Making.} *)
  
let make a b c d e f g h i j = 
  (a, b, c, d, e, f, g, h, i, j)
;;

let make_of_left_of_nonuplet lef non = 
  let (b, c, d, e, f, g, h, i, j) = non in
  make lef b c d e f g h i j
;;

let make_of_nonuplet_of_right non rig = 
  let (a, b, c, d, e, f, g, h, i) = non in
  make a b c d e f g h i rig
;;

(** {6 Extracting.} *)

let left_off_decuplet dec =
  let (a, b, c, d, e, f, g, h, i, j) = dec in
  a
;;
let first_off_decuplet = left_off_decuplet;;

let right_off_decuplet dec =
  let (a, b, c, d, e, f, g, h, i, j) = dec in
  j
;;
let last_off_decuplet = right_off_decuplet;;

let left_nonuplet_off_decuplet dec =
  let (a, b, c, d, e, f, g, h, i, j) = dec in
  (a, b, c, d, e, f, g, h, i)
;;

let right_nonuplet_off_decuplet dec =
  let (a, b, c, d, e, f, g, h, i, j) = dec in
  (b, c, d, e, f, g, h, i, j) 
;;

let right_triplet_off_decuplet dec =
  let (a, b, c, d, e, f, g, h, i, j) = dec in
  (h, i, j) 
;;

let right_third_off_decuplet dec =
  let (h, i, j) = right_triplet_off_decuplet dec in
  h
;;

(** {6 Modifying.} *)

let map f_a f_b f_c f_d f_e f_f f_g f_i f_j dec =
  let (a, b, c, d, e, f, g, h, i, j) = dec in
  make (f_a a) (f_b b) (f_c c) (f_d d) (f_e e) (f_f f) (f_g g) (f_i i) (f_j j)
;;
 
let iter f_a f_b f_c f_d f_e f_f f_g f_h f_i f_j dec =
  let (a, b, c, d, e, f, g, h, i, j) = dec in
  (f_a a); (f_b b); (f_c c); (f_d d); (f_e e); (f_f f); (f_g g); (f_h h); (f_i i); (f_j j)
;;
 
let compare cmp_a cmp_b cmp_c cmp_d cmp_e cmp_f cmp_g cmp_h cmp_i cmp_j non_a non_b =
  let (a_a, b_a, c_a, d_a, e_a, f_a, g_a, h_a, i_a, j_a) = non_a in
  let (a_b, b_b, c_b, d_b, e_b, f_b, g_b, h_b, i_b, j_b) = non_b in
    (cmp_a a_a a_b) 
    + 7 * (cmp_b b_a b_b) 
    + 17 * (cmp_c c_a c_b) 
    + 27 * (cmp_d d_a d_b) 
    + 37 * (cmp_e e_a e_b) 
    + 47 * (cmp_f f_a f_b) 
    + 57 * (cmp_g g_a g_b) 
    + 67 * (cmp_h h_a h_b) 
    + 77 * (cmp_i i_a i_b) 
    + 87 * (cmp_j j_a j_b) 
;;
 
(** {6 Naming} *)

let name nam_a nam_b nam_c nam_d nam_e nam_f nam_g nam_h nam_i nam_j dec =
  let (a, b, c, d, e, f, g, h, i, j) = dec in
  Format.sprintf "(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
  (nam_a a) (nam_b b) (nam_c c) (nam_d d) (nam_e e) (nam_f f) (nam_g g) (nam_h h) (nam_i i) (nam_j j)
;;

