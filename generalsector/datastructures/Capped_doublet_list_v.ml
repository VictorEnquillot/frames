(** {3 The functionalities for a Capped_doublet_list.} *)


(** {6 Making.} *)

let make cap dbl =
  Doublet_v.make cap dbl 
;;

(** {6 Extracting.} *)

let cap_part_off_capped_doublet_list cdl =
  Doublet_v.left_off_doublet cdl 
;;
 
let doublet_listpart_off_capped_doublet_list cdl =
  Doublet_v.right_off_doublet cdl 
;;

let left_list_off_capped_doublet_list cdl =
  let dbl = doublet_listpart_off_capped_doublet_list cdl in
  Doublet_list_v.left_list_off_doublet_list dbl
;;

let right_list_off_capped_doublet_list cdl =
  let dbl = doublet_listpart_off_capped_doublet_list cdl in
  Doublet_list_v.right_list_off_doublet_list dbl
;;

(** {6 Iterating.} *)

let map_cap_part fc cdl =
  let cap = cap_part_off_capped_doublet_list cdl in
  let dbl = doublet_listpart_off_capped_doublet_list cdl in
  make (fc cap) dbl 
;;

let map_doublet_listpart fa fb cdl =
  let cap = cap_part_off_capped_doublet_list cdl in
  let dbl = doublet_listpart_off_capped_doublet_list cdl in
  make cap (Doublet_list_v.map fa fb dbl)
;;

let map fc fa fb cdl =
  let cap = cap_part_off_capped_doublet_list cdl in
  let dbl = doublet_listpart_off_capped_doublet_list cdl in
  make (fc cap) (Doublet_list_v.map fa fb dbl)
;; 

let iter fc fa fb cdl =
  let cap = cap_part_off_capped_doublet_list cdl in
  let dbl = doublet_listpart_off_capped_doublet_list cdl in
  fc cap; Doublet_list_v.iter fa fb dbl
;; 

(** {6 Naming} *)

let doublet_list_off_capped_doublet_list fc cap_idx fe fi cdl =
  let cap = cap_part_off_capped_doublet_list cdl in
  let dbl = doublet_listpart_off_capped_doublet_list cdl in
  let dbl_ = Doublet_list_v.map fe fi dbl in
  (fc cap, cap_idx) :: dbl_
;;

let name nam_c nam_a nam_b cdl =
  Doublet_v.name nam_c (Doublet_list_v.name nam_a nam_b) cdl
;;

