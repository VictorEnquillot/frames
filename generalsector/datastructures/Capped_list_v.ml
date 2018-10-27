(** {3 The functionalities for a Capped_list.} *)

(** {6 Making.} *)

let make cap e_l =
  Doublet_v.make cap e_l 
;;

let make_of_list e_l =
  make (List.hd e_l) (List.tl e_l)
;;

(** {6 Extracting.} *)

let cap_part_off_capped_list cal =
  Doublet_v.left_off_doublet cal 
;;
 
let list_part_off_capped_list cal =
  Doublet_v.right_off_doublet cal 
;;

let list_off_capped_list fc fe cal =
  let cap = cap_part_off_capped_list cal in
  let e_l = list_part_off_capped_list cal in
  let s_l = List.map fe e_l in
  let s_c = fc cap in
  s_c :: s_l
;;

(** {6 Iterating.} *)

let map_cap_part fc cal =
  let cap = cap_part_off_capped_list cal in
  let e_l = list_part_off_capped_list cal in
  make (fc cap) e_l 
;;

let map_list_part fl cal =
  let cap = cap_part_off_capped_list cal in
  let e_l = list_part_off_capped_list cal in
  make cap (List.map fl e_l)
;;

let map fc fe cal =
  let cap = cap_part_off_capped_list cal in
  let e_l = list_part_off_capped_list cal in
  make (fc cap) (List.map fe e_l)
;; 

let iter fc fe cal =
  let cap = cap_part_off_capped_list cal in
  let e_l = list_part_off_capped_list cal in
  fc cap; List.iter fe e_l
;; 

let map2 fc fe cal_1 cal_2 =
  let cap_1 = cap_part_off_capped_list cal_1 in
  let e_l1 = list_part_off_capped_list cal_1 in
  let cap_2 = cap_part_off_capped_list cal_2 in
  let e_l2 = list_part_off_capped_list cal_2 in
  make (fc cap_1 cap_2) (List.map2 fe e_l1 e_l2)
;;

let merge cal_1 cal_2 =
  let cap_1 = cap_part_off_capped_list cal_1 in
  let e_l1 = list_part_off_capped_list cal_1 in
  let cap_2 = cap_part_off_capped_list cal_2 in
  let e_l2 = list_part_off_capped_list cal_2 in
  if cap_1 = cap_2 
  then make cap_1 (e_l1 @ e_l2)
  else failwith "Not_same_cap:Capped_list_v.merge"
;;

let rightextend cal lst =
  let cap = cap_part_off_capped_list cal in
  let e_l = list_part_off_capped_list cal in
  make cap (e_l @ lst)
;;

(** {6 Naming} *)

let name nam_c nam_e cal =
  Doublet_v.name nam_c (List_v.name nam_e) cal
;;

