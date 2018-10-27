(** {3 The functionalities for a Doubletcapped_doublet_list.} *)


(** {6 Making.} *)

let make cpd dol =
  Doublet_v.make cpd dol 
;;

(** {6 Extracting.} *)

let doublet_cappart_off_doubletcapped_doublet_list cdl =
  Doublet_v.left_off_doublet cdl 
;;
 
let doublet_listpart_off_doubletcapped_doublet_list cdl =
  Doublet_v.right_off_doublet cdl 
;;

let left_doublet_cappart_off_doubletcapped_doublet_list cdl =
  let cpd = doublet_cappart_off_doubletcapped_doublet_list cdl in
  Doublet_v.left_off_doublet cpd 
;;

let right_doublet_cappart_off_doubletcapped_doublet_list cdl =
  let cpd = doublet_cappart_off_doubletcapped_doublet_list cdl in
  Doublet_v.right_off_doublet cpd 
;;
 
let left_list_off_doubletcapped_doublet_list cdl =
  let dol = doublet_listpart_off_doubletcapped_doublet_list cdl in
  Doublet_list_v.left_list_off_doublet_list dol
;;

let right_list_off_doubletcapped_doublet_list cdl =
  let dol = doublet_listpart_off_doubletcapped_doublet_list cdl in
  Doublet_list_v.right_list_off_doublet_list dol
;;

(** {6 Iterating.} *)

let map_doublet_cappart fc cdl =
  let cpd = doublet_cappart_off_doubletcapped_doublet_list cdl in
  let dol = doublet_listpart_off_doubletcapped_doublet_list cdl in
  make (Doublet_v.map fc (fun i -> i) cpd) dol 
;;

let map_doublet_listpart fe cdl =
  let cpd = doublet_cappart_off_doubletcapped_doublet_list cdl in
  let dol = doublet_listpart_off_doubletcapped_doublet_list cdl in
  make cpd (Doublet_list_v.map fe (fun i -> i) dol)
;;

let map fc fe fi cdl =
  let cpd = doublet_cappart_off_doubletcapped_doublet_list cdl in
  let dol = doublet_listpart_off_doubletcapped_doublet_list cdl in
  make (Doublet_v.map fc fi cpd) (Doublet_list_v.map fe fi dol)
;; 

let iter fc fe fi cdl =
  let cpd = doublet_cappart_off_doubletcapped_doublet_list cdl in
  let dol = doublet_listpart_off_doubletcapped_doublet_list cdl in
  Doublet_v.iter fc fi cpd; Doublet_list_v.iter fe fi dol
;; 

(** {6 Naming} *)

let doublet_list_off_doubletcapped_doublet_list fc fe fi cdl =
  let cpd = doublet_cappart_off_doubletcapped_doublet_list cdl in
  let dol = doublet_listpart_off_doubletcapped_doublet_list cdl in
  let cpd_ = Doublet_v.map fc fi cpd in
  let dol_ = Doublet_list_v.map fe fi dol in
  cpd_ :: dol_
;;

let name nam_c nam_e nam_i cdl =
  Doublet_v.name (Doublet_v.name nam_c nam_i) (Doublet_list_v.name nam_e nam_i) cdl
;;

