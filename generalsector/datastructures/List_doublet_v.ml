(** {3 The functionalities for a Doublet Doublet List} *) 

let nam_mod = "List_doublet_v";;

(** {6 Making.} *)

let make lef_l rig_l  =
  Doublet_v.make lef_l rig_l
;;


(** {6 Extracting.} *)

(** {6 Iterating.} *)

let map fun_l fun_r lst_d =
  let lef_l = Doublet_v.left_off_doublet lst_d in
  let rig_l = Doublet_v.right_off_doublet lst_d in
  make (List.map fun_l lef_l) (List.map fun_r rig_l) 
;;

let map_left fun_l lst_d =
  let lef_l = Doublet_v.left_off_doublet lst_d in
  let rig_l = Doublet_v.right_off_doublet lst_d in
  make (List.map fun_l lef_l) rig_l 
;;

let map_right fun_r lst_d =
  let lef_l = Doublet_v.left_off_doublet lst_d in
  let rig_l = Doublet_v.right_off_doublet lst_d in
  make lef_l (List.map fun_r rig_l) 
;;

let iter fun_l fun_r lst_d =
  let lef_l = Doublet_v.left_off_doublet lst_d in
  let rig_l = Doublet_v.right_off_doublet lst_d in
  List.iter fun_l lef_l; 
  List.iter fun_r rig_l; 
;;

let list_of_list_doublet fun_l fun_r lst_d =
  let lef_l = Doublet_v.left_off_doublet lst_d in
  let rig_l = Doublet_v.right_off_doublet lst_d in
  (List.map fun_l lef_l) @ (List.map fun_r rig_l) 
;;

(** {6 Naming} *)

let name_with_separator nam_l nam_r sep lst_d =
  Doublet_v.name 
    (List_v.name_with_separator nam_l sep)  
    (List_v.name_with_separator nam_r sep)
    lst_d 
;;
