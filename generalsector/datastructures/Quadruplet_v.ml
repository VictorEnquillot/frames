(** {3 The functionalities for a Quadruplet.} *)

let nam_mod = "Quadruplet_v";;

(** {6 Modules.} *)

(** {6 Making.} *)
  
let make lef mil mir rig = 
  (lef, mil, mir, rig)
;;

let make_of_doublet_of_doublet dou_1 dou_2 =
  let (lef, mil) = dou_1 in
  let (mir, rig) = dou_2 in
  make lef mil mir rig
;;

let make_of_left_of_triplet lef tri =
  let (mil, mir, rig) = tri in
  make lef mil mir rig
;;

let make_of_triplet_of_right tri rig =
  let (lef, mil, mir) = tri in
  make lef mil mir rig
;;

(** {6 Extracting.} *)

let left_off_quadruplet tet =
  let (lef, _, _, _) = tet in
  lef
;;
let first_off_quadruplet = left_off_quadruplet;;

let middle_left_off_quadruplet tet =
  let (_, mil, _, _) = tet in
  mil
;;
let second_off_quadruplet = middle_left_off_quadruplet;;

let middle_right_off_quadruplet tet =
  let (_, _, mir, _) = tet in
  mir
;;
let third_off_quadruplet = middle_right_off_quadruplet;;

let right_off_quadruplet tet =
  let (_, _, _, rig) = tet in
  rig
;;
let last_off_quadruplet = right_off_quadruplet;;
let fourth_off_quadruplet = right_off_quadruplet;;

let left_doublet_off_quadruplet tet =
  let lef = left_off_quadruplet tet in
  let mil = middle_left_off_quadruplet tet in
  Doublet_v.make lef mil 
;;

let middle_doublet_off_quadruplet tet =
  let mil = middle_left_off_quadruplet tet in
  let mir = middle_right_off_quadruplet tet in
  Doublet_v.make mil mir
;;

let right_doublet_off_quadruplet tet =
  let mir = middle_right_off_quadruplet tet in
  let rig = right_off_quadruplet tet in
  Doublet_v.make mir rig 
;;

let left_triplet_off_quadruplet tet =
  let lef = left_off_quadruplet tet in
  let mil = middle_left_off_quadruplet tet in
  let mir = middle_right_off_quadruplet tet in
  Triplet_v.make lef mil mir 
;;

let right_triplet_off_quadruplet tet =
  let mil = middle_left_off_quadruplet tet in
  let mir = middle_right_off_quadruplet tet in
  let rig = right_off_quadruplet tet in
  Triplet_v.make mil mir rig 
;;

(** {6 Iterating.} *)

let map f_l fml fmr f_t tet =
  let lef = left_off_quadruplet tet in
  let mil = middle_left_off_quadruplet tet in
  let mir = middle_right_off_quadruplet tet in
  let rig = right_off_quadruplet tet in
  make (f_l lef) (fml mil) (fmr mir) (f_t rig)
;;
 
let iter f_l fml fmr f_r tet =
  let lef = left_off_quadruplet tet in
  let mil = middle_left_off_quadruplet tet in
  let mir = middle_right_off_quadruplet tet in
  let rig = right_off_quadruplet tet in
  (f_l lef) ; (fml mil) ; (fmr mir) ; (f_r rig)
;;
 
let compare cmp_l cmpml cmpmr cmp_r tet_a tet_b =
  let lef_a = left_off_quadruplet tet_a in
  let lef_b = left_off_quadruplet tet_b in
  let mil_a = middle_left_off_quadruplet tet_a in
  let mil_b = middle_left_off_quadruplet tet_b in
  let mir_a = middle_right_off_quadruplet tet_a in
  let mir_b = middle_right_off_quadruplet tet_b in
  let rig_a = right_off_quadruplet tet_a in
  let rig_b = right_off_quadruplet tet_b in
  (cmp_l lef_a lef_b) + 
    (3 * (cmpml mil_a mil_b)) + 
    (17 * (cmpmr mir_a mir_b)) + 
    (37 * (cmp_r rig_a rig_b))
;;
 
(** {6 Naming.} *)

let name nam_l namml nammr nam_r tet =
  let lef = left_off_quadruplet tet in
  let mil = middle_left_off_quadruplet tet in
  let mir = middle_right_off_quadruplet tet in
  let rig = right_off_quadruplet tet in
  Format.sprintf "(%s,%s,%s,%s)"
  (nam_l lef)
  (namml mil)
  (nammr mir)
  (nam_r rig)
;;

let name_capitalized nam_l namml nammr nam_r tet =
  let lef = left_off_quadruplet tet in
  let mil = middle_left_off_quadruplet tet in
  let mir = middle_right_off_quadruplet tet in
  let rig = right_off_quadruplet tet in
  Format.sprintf "(%s, %s, %s, %s)"
  (String.capitalize_ascii (nam_l lef))
  (String.capitalize_ascii (namml mil))
  (String.capitalize_ascii (nammr mir))
  (String.capitalize_ascii (nam_r rig))
;;

