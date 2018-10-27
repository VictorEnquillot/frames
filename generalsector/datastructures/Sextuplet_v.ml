(** {3 The functionalities for a Sextuplet.} *)

let nam_mod = "Sextuplet_v";;

(** {6 Modules.} *)


(** {6 Making.} *)
  
let make a b c d e f = 
  (a, b, c, d, e, f)
;;

let make_of_left_of_quintuplet lef qui = 
  let (a, b, c, d, e) = qui in
  make lef a b c d e 
;;

let make_of_quintuplet_of_right qui rig = 
  let (a, b, c, d, e) = qui in
  make a b c d e rig 
;;

let make_of_triplet_of_triplet lef rig = 
  let (a, b, c) = lef in
  let (d, e, f) = rig in
  make a b c d e f 
;;

let make_of_doublet_of_doublet_of_doublet lef mid rig =
  let (a, b) = lef in
  let (c, d) = mid in
  let (e, f) = rig in
  make a b c d e f 
;;

(** {6 Extracting.} *)

let left_off_sextuplet spt =
  let (a, b, c, d, e, f) = spt in
  a
;;
let first_off_sextuplet = left_off_sextuplet;;

let right_off_sextuplet spt =
  let (a, b, c, d, e, f) = spt in
  f
;;
let last_off_sextuplet = right_off_sextuplet;;

let left_quintuplet_off_sextuplet spt =
  let (a, b, c, d, e, f) = spt in
  (a, b, c, d, e)
;;

let right_quintuplet_off_sextuplet spt =
  let (a, b, c, d, e, f) = spt in
  (b, c, d, e, f)
;;

let left_doublet_off_sextuplet spt =
  let (a, b, c, d, e, f) = spt in
  (a, b)
;;

let middle_doublet_off_sextuplet spt =
  let (a, b, c, d, e, f) = spt in
  (c, d)
;;

let right_doublet_off_sextuplet spt =
  let (a, b, c, d, e, f) = spt in
  (e, f)
;;

let left_triplet_off_sextuplet spt =
  let (a, b, c, d, e, f) = spt in
  (a, b, c)
;;

let right_triplet_off_sextuplet spt =
  let (a, b, c, d, e, f) = spt in
  (d, e, f)
;;

let doublet_triplet_off_sextuplet spt =
  let lef = left_doublet_off_sextuplet spt in
  let mid = middle_doublet_off_sextuplet spt in
  let rig = right_doublet_off_sextuplet spt in
  Triplet_v.make lef mid rig
;;

let triplet_doublet_off_sextuplet spt =
  let lef = left_triplet_off_sextuplet spt in
  let rig = right_triplet_off_sextuplet spt in
  Doublet_v.make lef rig
;;

(** {6 Modifying.} *)

let map f_a f_b f_c f_d f_e f_f spt =
  let (a, b, c, d, e, f) = spt in
  make (f_a a) (f_b b) (f_c c) (f_d d) (f_e e) (f_f f)
;;
 
let iter f_a f_b f_c f_d f_e f_f spt =
  let (a, b, c, d, e, f) = spt in
  (f_a a); (f_b b); (f_c c); (f_d d); (f_e e); (f_f f)
;;
 
let compare cmp_a cmp_b cmp_c cmp_d cmp_e cmp_f spt_a spt_b =
  let dbt_a = triplet_doublet_off_sextuplet spt_a in
  let dbt_b = triplet_doublet_off_sextuplet spt_b in
  Doublet_v.compare 
    (Triplet_v.compare cmp_a cmp_b cmp_c) 
    (Triplet_v.compare cmp_d cmp_e cmp_f) 
    dbt_a dbt_b
;;
 
(** {6 Naming} *)

let name nam_a nam_b nam_c nam_d nam_e nam_f spt =
  let (a, b, c, d, e, f) = spt in
  Format.sprintf "(%s,%s,%s,%s,%s,%s)"
  (nam_a a) (nam_b b) (nam_c c) (nam_d d) (nam_e e) (nam_f f)
;;

let print prt_a prt_b prt_c prt_d prt_e prt_f ppf spt =
  let (a, b, c, d, e, f) = spt in
  Format.fprintf ppf "(%a,%a,%a,%a,%a,%a)"
  prt_a a prt_b b prt_c c prt_d d prt_e e prt_f f
;;


