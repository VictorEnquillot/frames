(** {3 The functionalities for a Octtuplet.} *)

let nam_mod = "Octtuplet_v";;

(** {6 Modules.} *)


(** {6 Making.} *)
  
let make a b c d e f g h = 
  (a, b, c, d, e, f, g, h)
;;

let make_of_left_of_septuplet lef oct = 
  let (b, c, d, e, f, g, h) = oct in
  make lef b c d e f g h
;;

let make_of_septuplet_of_right oct rig = 
  let (a, b, c, d, e, f, g) = oct in
  make a b c d e f g rig
;;

(** {6 Extracting.} *)

let left_off_octuplet oct =
  let (a, b, c, d, e, f, g, h) = oct in
  a
;;
let first_off_octuplet = left_off_octuplet;;

let right_off_octuplet oct =
  let (a, b, c, d, e, f, g, h) = oct in
  h
;;
let last_off_octuplet = right_off_octuplet;;

let left_doublet_off_octuplet oct =
  let (a, b, c, d, e, f, g, h) = oct in
  (a, b)
;;

let middle_doublet_off_octuplet oct =
  let (a, b, c, d, e, f, g, h) = oct in
  (d, e)
;;

let right_doublet_off_octuplet oct =
  let (a, b, c, d, e, f, g, h) = oct in
  (g, h)
;;

let left_triplet_off_octuplet oct =
  let (a, b, c, d, e, f, g, h) = oct in
  (a, b, c)
;;

let left_septuplet_off_octuplet oct =
  let (a, b, c, d, e, f, g, h) = oct in
  (a, b, c, d, e, f, g)
;;

let right_triplet_off_octuplet oct =
  let (a, b, c, d, e, f, g, h) = oct in
  (f, g, h)
;;

let right_third_off_octuplet oct =
  let (f, g, h) = right_triplet_off_octuplet oct in
  f
;;

let right_septuplet_off_octuplet oct =
  let (a, b, c, d, e, f, g, h) = oct in
  (b, c, d, e, f, g, h) 
;;

(** {6 Modifying.} *)

let map f_a f_b f_c f_d f_e f_f f_g oct =
  let (a, b, c, d, e, f, g, h) = oct in
  make (f_a a) (f_b b) (f_c c) (f_d d) (f_e e) (f_f f) (f_g g)
;;
 
let iter f_a f_b f_c f_d f_e f_f f_g f_h oct =
  let (a, b, c, d, e, f, g, h) = oct in
  (f_a a); (f_b b); (f_c c); (f_d d); (f_e e); (f_f f); (f_g g) (f_h h)
;;
 
let compare cmp_a cmp_b cmp_c cmp_d cmp_e cmp_f cmp_g cmp_h oct_a oct_b =
  let (a_a, b_a, c_a, d_a, e_a, f_a, g_a, h_a) = oct_a in
  let (a_b, b_b, c_b, d_b, e_b, f_b, g_b, h_b) = oct_b in
    (cmp_a a_a a_b) 
    + 7 * (cmp_b b_a b_b) 
    + 17 * (cmp_c c_a c_b) 
    + 27 * (cmp_d d_a d_b) 
    + 37 * (cmp_e e_a e_b) 
    + 47 * (cmp_f f_a f_b) 
    + 57 * (cmp_g g_a g_b) 
    + 67 * (cmp_h h_a h_b) 
;;
 
(** {6 Naming} *)

let name nam_a nam_b nam_c nam_d nam_e nam_f nam_g nam_h oct =
  let (a, b, c, d, e, f, g, h) = oct in
  Format.sprintf "(%s,%s,%s,%s,%s,%s,%s,%s)"
  (nam_a a) (nam_b b) (nam_c c) (nam_d d) (nam_e e) (nam_f f) (nam_g g) (nam_h h)
;;

