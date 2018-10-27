(** {3 The functionalities for a Septuplet.} *)

let nam_mod = "Septuplet_v";;

(** {6 Modules.} *)


(** {6 Making.} *)
  
let make a b c d e f g = 
  (a, b, c, d, e, f, g)
;;

let make_of_left_of_sextuplet lef sex = 
  let (b, c, d, e, f, g) = sex in
  make lef b c d e f g
;;

let make_of_sextuplet_of_right sex rig = 
  let (a, b, c, d, e, f) = sex in
  make a b c d e f rig
;;

(** {6 Extracting.} *)

let left_off_septuplet sep =
  let (a, b, c, d, e, f, g) = sep in
  a
;;
let first_off_septuplet = left_off_septuplet;;

let right_off_septuplet sep =
  let (a, b, c, d, e, f, g) = sep in
  g
;;
let last_off_septuplet = right_off_septuplet;;

let left_doublet_off_septuplet sep =
  let (a, b, c, d, e, f, g) = sep in
  (a, b)
;;

let middle_tripletet_off_septuplet sep =
  let (a, b, c, d, e, f, g) = sep in
  (c, d, e)
;;

let right_doublet_off_septuplet sep =
  let (a, b, c, d, e, f, g) = sep in
  (f, g)
;;

let left_triplet_off_septuplet sep =
  let (a, b, c, d, e, f, g) = sep in
  (a, b, c)
;;

let right_triplet_off_septuplet sep =
  let (a, b, c, d, e, f, g) = sep in
  (e, f, g)
;;

let left_sextuplet_off_septuplet sep =
  let (a, b, c, d, e, f, g) = sep in
  (a, b, c, d, e, f)
;;

let right_sextuplet_off_septuplet sep =
  let (a, b, c, d, e, f, g) = sep in
  (b, c, d, e, f, g)
;;

(** {6 Modifying.} *)

let map f_a f_b f_c f_d f_e f_f f_g sep =
  let (a, b, c, d, e, f, g) = sep in
  make (f_a a) (f_b b) (f_c c) (f_d d) (f_e e) (f_f f) (f_g g)
;;
 
let iter f_a f_b f_c f_d f_e f_f f_g sep =
  let (a, b, c, d, e, f, g) = sep in
  (f_a a); (f_b b); (f_c c); (f_d d); (f_e e); (f_f f); (f_g g);;
 
let compare cmp_a cmp_b cmp_c cmp_d cmp_e cmp_f cmp_g sep_a sep_b =
  let (a_a, b_a, c_a, d_a, e_a, f_a, g_a) = sep_a in
  let (a_b, b_b, c_b, d_b, e_b, f_b, g_b) = sep_b in
    (cmp_a a_a a_b) 
    + 7 * (cmp_b b_a b_b) 
    + 17 * (cmp_c c_a c_b) 
    + 27 * (cmp_d d_a d_b) 
    + 37 * (cmp_e e_a e_b) 
    + 47 * (cmp_f f_a f_b) 
    + 57 * (cmp_g g_a g_b) 
;;
 
let map_left f_a sep =
  let a = left_off_septuplet sep in
  let sex = right_sextuplet_off_septuplet sep in
  make_of_left_of_sextuplet (f_a a) sex
;;

(** {6 Naming} *)

let name nam_a nam_b nam_c nam_d nam_e nam_f nam_g sep =
  let (a, b, c, d, e, f, g) = sep in
  Format.sprintf "(%s,%s,%s,%s,%s,%s,%s)"
  (nam_a a) (nam_b b) (nam_c c) (nam_d d) (nam_e e) (nam_f f) (nam_g g)
;;

