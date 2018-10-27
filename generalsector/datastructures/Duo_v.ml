(** {3 The functionalities for a Duo.} *)

let nam_mod = "Duo_v";;

(** {6 Modules.} *)


(** {6 Making.} *)
  
let make lef rig = 
  (lef, rig)
;;

let left_off_duo duo =
  let (lef, rig) = duo in
  lef
;;

let first_off_duo duo =
  left_off_duo duo
;;

let right_off_duo duo =
  let (lef, rig) = duo in
  rig
;;

let second_off_duo duo =
  right_off_duo duo
;;

let duo_of_list lis =
  if List.length lis <> 2
  then failwith "Not_a_duo:Duo_v.duo_of_list"
  else make (List.nth lis 0) (List.nth lis 1) 
;;

let list_of_duo duo =
  let lef = left_off_duo duo in
  let rig = right_off_duo duo in
  [lef; rig]
;;

let doublet_of_duo f g duo =
  let lef = left_off_duo duo in 
  let rig = right_off_duo duo in 
  Doublet_v.make (f lef) (g rig)
;;

let duo_of_doublet f g dou =
  let lef = Doublet_v.left_off_doublet dou in 
  let rig = Doublet_v.right_off_doublet dou in 
  make (f lef) (g rig)
;;

let swap duo =
  let (lef, rig) = duo in
  (rig, lef)
;;
(** {6 Iterating} *)

let map f duo =
  let lef = left_off_duo duo in
  let rig = right_off_duo duo in
  make (f lef) (f rig)
;;

let map_left f_l duo =
  let lef = left_off_duo duo in
  let rig = right_off_duo duo in
  make (f_l lef) rig
;;

let map_right f_r duo =
  let lef = left_off_duo duo in
  let rig = right_off_duo duo in
  make lef (f_r rig)
;;

let iter f duo =
  let lef = left_off_duo duo in
  let rig = right_off_duo duo in
  (f lef) ; (f rig)
;;

let map2 f duo_1 duo_2 =
  let lef_1 = left_off_duo duo_1 in
  let lef_2 = left_off_duo duo_2 in
  let rig_1 = right_off_duo duo_1 in
  let rig_2 = right_off_duo duo_2 in
  make (f lef_1 lef_2) (f rig_1 rig_2)
;;

let iter2 f duo_1 duo_2 =
  let lef_1 = left_off_duo duo_1 in
  let lef_2 = left_off_duo duo_2 in
  let rig_1 = right_off_duo duo_1 in
  let rig_2 = right_off_duo duo_2 in
  (f lef_1 lef_2) ; (f rig_1 rig_2)
;;


(** {6 Comparing} *)

let compare cmp duo_1 duo_2 =
  let lef_1 = left_off_duo duo_1 in
  let lef_2 = left_off_duo duo_2 in
  let rig_1 = right_off_duo duo_1 in
  let rig_2 = right_off_duo duo_2 in
  (cmp lef_1 lef_2) + 10 * (cmp rig_1 rig_2)
;;

(** {6 Naming} *)

let print prt_e ppf duo =
  let lef = left_off_duo duo in
  let rig = right_off_duo duo in
  Format.fprintf ppf "(%a@ %a)"
  prt_e lef
  prt_e rig
;;

let name nam_e duo =
  let lef = left_off_duo duo in
  let rig = right_off_duo duo in
  Format.sprintf "(%s,%s)"
  (nam_e lef)
  (nam_e rig)
;;

let name_with_separator nam_e sep duo =
  let lef = left_off_duo duo in
  let rig = right_off_duo duo in
  Format.sprintf "(%s%s%s)"
    (nam_e lef) 
    sep
    (nam_e rig)
;;



