
let nam_mod = "Point_v";;


(** {6 Making.} *)

let make vec = vec
;;

let difference poi_1 poi_2 = 
  Vector_v.difference poi_1 poi_2
;;

let distance poi_1 poi_2 = 
  let difvec = difference poi_1 poi_2 in
  Vector_v.modulus difvec
;;

let has_same_position poi_1 poi_2 =
 distance poi_1 poi_2 = 0.0 
;;

let has_same_position_at_epsilon eps poi_1 poi_2 =
 distance poi_1 poi_2 < eps
;;

let addition_with_vector poi_1 vec = 
 let pos = Vector_v.addition poi_1 vec in
 make pos 
;;

let rec translation poi vec = 
 let pos = Vector_v.addition poi vec in
 make pos
;;

let scaling poi scl = 
  let pos = Vector_v.scaling poi scl in
   make pos
;;

let homothecy poi ori scl =
 let vec = difference poi ori in 
 let pos = Vector_v.scaling vec scl in
 make pos
;;

let name poi =
 Format.sprintf "Point at %s" (Vector_v.name poi)
;;

