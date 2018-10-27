(** {3 The functionalities for a Quintuplet.} *)

let nam_mod = "Quintuplet_v";;

(** {6 Modules.} *)

(** {6 Making.} *)
  
let make lef mil mid mir rig = 
  (lef, mil, mid, mir, rig)
;;

let make_of_doublet_of_triplet dou_1 tri_2 =
  let (lef, mil) = dou_1 in
  let (mid, mir, rig) = tri_2 in
  make lef mil mid mir rig
;;

let make_of_left_of_quadruplet lef qua =
  let (mil, mid, mir, rig) = qua in
  make lef mil mid mir rig
;;

let make_of_quadruplet_of_right qua rig =
  let (lef, mil, mid, mir) = qua in
  make lef mil mid mir rig
;;

(** {6 Extracting.} *)

let left_off_quintuplet qui =
  let (lef, _, _, _, _) = qui in
  lef
;;
let first_off_quintuplet = left_off_quintuplet;;

let middle_left_off_quintuplet qui =
  let (_, mil, _, _, _) = qui in
  mil
;;
let second_off_quintuplet = middle_left_off_quintuplet;;

let middle_off_quintuplet qui =
  let (_, _, mim, _, _) = qui in
  mim
;;
let third_off_quintuplet = middle_left_off_quintuplet;;

let middle_right_off_quintuplet qui =
  let (_, _, _, mir, _) = qui in
  mir
;;
let fourth_off_quintuplet = middle_right_off_quintuplet;;

let right_off_quintuplet qui =
  let (_, _, _, _, rig) = qui in
  rig
;;
let last_off_quintuplet = right_off_quintuplet;;
let fith_off_quintuplet = right_off_quintuplet;;

let left_doublet_off_quintuplet qui =
  let lef = left_off_quintuplet qui in
  let mil = middle_left_off_quintuplet qui in
  Doublet_v.make lef mil 
;;

let right_doublet_off_quintuplet qui =
  let mir = middle_right_off_quintuplet qui in
  let rig = right_off_quintuplet qui in
  Doublet_v.make mir rig 
;;

let left_triplet_off_quintuplet qui =
  let lef = left_off_quintuplet qui in
  let mil = middle_left_off_quintuplet qui in
  let mim = middle_off_quintuplet qui in
  Triplet_v.make lef mil mim 
;;

let right_triplet_off_quintuplet qui =
  let mim = middle_off_quintuplet qui in
  let mir = middle_right_off_quintuplet qui in
  let rig = right_off_quintuplet qui in
  Triplet_v.make mim mir rig 
;;

let right_quadruplet_off_quintuplet qui =
  let (l, a, b, c, d) = qui in
  Quadruplet_v.make a b c d
;;

(** {6 Iterating.} *)

let map f_l fml fmm fmr f_t qui =
  let lef = left_off_quintuplet qui in
  let mil = middle_left_off_quintuplet qui in
  let mim = middle_off_quintuplet qui in
  let mir = middle_right_off_quintuplet qui in
  let rig = right_off_quintuplet qui in
  make (f_l lef) (fml mil) (fmm mim) (fmr mir) (f_t rig)
;;
 
let iter f_l fml fmm fmr f_r qui =
  let lef = left_off_quintuplet qui in
  let mil = middle_left_off_quintuplet qui in
  let mim = middle_off_quintuplet qui in
  let mir = middle_right_off_quintuplet qui in
  let rig = right_off_quintuplet qui in
  (f_l lef) ; (fml mil) ; (fmm mim); (fmr mir) ; (f_r rig)
;;
 
let compare cmp_l cmpml cmpmm cmpmr cmp_r qui_a qui_b =
  let lef_a = left_off_quintuplet qui_a in
  let lef_b = left_off_quintuplet qui_b in
  let mil_a = middle_left_off_quintuplet qui_a in
  let mil_b = middle_left_off_quintuplet qui_b in
  let mim_a = middle_off_quintuplet qui_a in
  let mim_b = middle_off_quintuplet qui_b in
  let mir_a = middle_right_off_quintuplet qui_a in
  let mir_b = middle_right_off_quintuplet qui_b in
  let rig_a = right_off_quintuplet qui_a in
  let rig_b = right_off_quintuplet qui_b in
  (cmp_l lef_a lef_b) + 
    (3 * (cmpml mil_a mil_b)) + 
    (17 * (cmpmm mim_a mim_b)) + 
    (37 * (cmpmr mir_a mir_b)) + 
    (47 * (cmp_r rig_a rig_b))
;;
 
(** {6 Naming.} *)

let name nam_l namml nammm nammr nam_r qui =
  let lef = left_off_quintuplet qui in
  let mil = middle_left_off_quintuplet qui in
  let mid = middle_off_quintuplet qui in
  let mir = middle_right_off_quintuplet qui in
  let rig = right_off_quintuplet qui in
  Format.sprintf "(%s,%s,%s,%s,%s)"
  (nam_l lef)
  (namml mil)
  (nammm mid)
  (nammr mir)
  (nam_r rig)
;;

let name_capitalized nam_l namml nammm nammr nam_r qui =
  let lef = left_off_quintuplet qui in
  let mil = middle_left_off_quintuplet qui in
  let mid = middle_off_quintuplet qui in
  let mir = middle_right_off_quintuplet qui in
  let rig = right_off_quintuplet qui in
  Format.sprintf "(%s, %s, %s, %s, %s)"
  (String.capitalize (nam_l lef))
  (String.capitalize (namml mil))
  (String.capitalize (nammm mid))
  (String.capitalize (nammr mir))
  (String.capitalize (nam_r rig))
;;

