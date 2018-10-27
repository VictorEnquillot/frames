(** {3 The functionalities for a Nonuplet.} *)

let nam_mod = "Nonuplet_v";;

(** {6 Modules.} *)


(** {6 Making.} *)
  
let make a b c d e f g h i = 
  (a, b, c, d, e, f, g, h, i)
;;

let make_of_left_of_octuplet lef oct = 
  let (b, c, d, e, f, g, h, i) = oct in
  make lef b c d e f g h i
;;

let make_of_octuplet_of_right oct rig = 
  let (a, b, c, d, e, f, g, h) = oct in
  make a b c d e f g h rig
;;

(** {6 Extracting.} *)

let left_off_nonuplet non =
  let (a, b, c, d, e, f, g, h, i) = non in
  a
;;
let first_off_nonuplet = left_off_nonuplet;;

let right_off_nonuplet non =
  let (a, b, c, d, e, f, g, h, i) = non in
  i
;;
let last_off_nonuplet = right_off_nonuplet;;

let left_octuplet_off_nonuplet non =
  let (a, b, c, d, e, f, g, h, i) = non in
  (a, b, c, d, e, f, g, h)
;;

let right_octuplet_off_nonuplet non =
  let (a, b, c, d, e, f, g, h, i) = non in
  (b, c, d, e, f, g, h, i) 
;;

let left_septuplet_off_nonuplet non =
  let (a, b, c, d, e, f, g, h, i) = non in
  (a, b, c, d, e, f, g)
;;

let right_triplet_off_nonuplet non =
  let (a, b, c, d, e, f, g, h, i) = non in
  (g, h, i)
;;

let right_third_off_nonuplet non =
  let (g, h, i) = right_triplet_off_nonuplet non in
  g
;;

(** {6 Modifying.} *)

let map f_a f_b f_c f_d f_e f_f f_g f_i non =
  let (a, b, c, d, e, f, g, h, i) = non in
  make (f_a a) (f_b b) (f_c c) (f_d d) (f_e e) (f_f f) (f_g g) (f_i i)
;;
 
let iter f_a f_b f_c f_d f_e f_f f_g f_h f_i non =
  let (a, b, c, d, e, f, g, h, i) = non in
  (f_a a); (f_b b); (f_c c); (f_d d); (f_e e); (f_f f); (f_g g); (f_h h); (f_i i)
;;
 
let compare cmp_a cmp_b cmp_c cmp_d cmp_e cmp_f cmp_g cmp_h cmp_i non_a non_b =
  let (a_a, b_a, c_a, d_a, e_a, f_a, g_a, h_a, i_a) = non_a in
  let (a_b, b_b, c_b, d_b, e_b, f_b, g_b, h_b, i_b) = non_b in
    (cmp_a a_a a_b) 
    + 7 * (cmp_b b_a b_b) 
    + 17 * (cmp_c c_a c_b) 
    + 27 * (cmp_d d_a d_b) 
    + 37 * (cmp_e e_a e_b) 
    + 47 * (cmp_f f_a f_b) 
    + 57 * (cmp_g g_a g_b) 
    + 67 * (cmp_h h_a h_b) 
    + 77 * (cmp_i i_a i_b) 
;;
 
(** {6 Naming} *)

let name nam_a nam_b nam_c nam_d nam_e nam_f nam_g nam_h nam_i non =
  let (a, b, c, d, e, f, g, h, i) = non in
  Format.sprintf "(%s,%s,%s,%s,%s,%s,%s,%s,%s)"
  (nam_a a) (nam_b b) (nam_c c) (nam_d d) (nam_e e) (nam_f f) (nam_g g) (nam_h h) (nam_i i)
;;

