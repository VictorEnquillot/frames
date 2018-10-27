(** {3 The functionalities for a Trio.} *)

let nam_mod = "Trio_v";;

(** {6 Modules.} *)


(** {6 Making.} *)
  
let make lef mid rig = 
  Triplet_v.make lef mid rig
;;

let make_of_left_duo dbl rig =
  let lef = Duo_v.left_off_duo dbl in
  let mid = Duo_v.right_off_duo dbl in
  make lef mid rig
;;

let make_of_right_duo lef dbl =
  let mid = Duo_v.left_off_duo dbl in
  let rig = Duo_v.right_off_duo dbl in
  make lef mid rig
;;

let make_of_triplet f_l f_m f_t tri =
  Triplet_v.map f_l f_m f_t tri 
;;

(** {6 Extracting.} *)

let left_off_trio tri =
  let (lef, _, _) = tri in
  lef
;;
let first_off_trio = left_off_trio;;

let middle_off_trio tri =
  let (_, mid, _) = tri in
  mid
;;
let second_off_trio = middle_off_trio;;

let right_off_trio tri =
  let (_, _, rig) = tri in
  rig
;;

let last_off_trio = right_off_trio;;

let third_off_trio = right_off_trio;;

let left_duo_off_trio tri =
  let lef = left_off_trio tri in
  let mid = middle_off_trio tri in
  Duo_v.make lef mid 
;;

let right_duo_off_trio tri =
  let mid = middle_off_trio tri in
  let rig = right_off_trio tri in
  Duo_v.make mid rig 
;;

let first_n_third_duo_off_trio tri =
  let lef = left_off_trio tri in
  let rig = right_off_trio tri in
  Duo_v.make lef rig 
;;

let list_of_trio tri =
  let lef = left_off_trio tri in
  let mid = middle_off_trio tri in
  let rig = right_off_trio tri in
  [lef; mid; rig]
;;

let triplet_of_trio f g h trio =
  let lef = left_off_trio trio in 
  let mid = middle_off_trio trio in
  let rig = right_off_trio trio in 
  Triplet_v.make (f lef) (g mid) (h rig)
;;

let triplet_as_trio_of_trio trio =
  let lef = left_off_trio trio in 
  let mid = middle_off_trio trio in
  let rig = right_off_trio trio in 
  Triplet_v.make lef mid rig
;;

let trio_of_triplet f g h trip =
  let lef = Triplet_v.left_off_triplet trip in 
  let mid = Triplet_v.middle_off_triplet trip in
  let rig = Triplet_v.right_off_triplet trip in 
  make (f lef) (g mid) (h rig)
;;

let trio_of_list lis =
  if List.length lis <> 3
  then failwith "Not_a_trio:Trio_v.trio_of_list"
  else make (List.nth lis 0) (List.nth lis 1) (List.nth lis 2)
;;

(** {6 Modifying.} *)

let compare cmp tri_1 tri_2 =
  let lef_1 = left_off_trio tri_1 in
  let lef_2 = left_off_trio tri_2 in
  let mid_1 = middle_off_trio tri_1 in
  let mid_2 = middle_off_trio tri_2 in
  let rig_1 = right_off_trio tri_1 in
  let rig_2 = right_off_trio tri_2 in
  (cmp lef_1 lef_2) + 3 * (cmp mid_1 mid_2) + 10 * (cmp rig_1 rig_2)
;;
 
let map f_l tri =
  let lef = left_off_trio tri in
  let mid = middle_off_trio tri in
  let rig = right_off_trio tri in
  make (f_l lef) (f_l mid) (f_l rig)
;;
 
 let map2 f tri_1 tri_2 =
  let lef_1 = left_off_trio tri_1 in
  let lef_2 = left_off_trio tri_2 in
  let mid_1 = middle_off_trio tri_1 in
  let mid_2 = middle_off_trio tri_2 in
  let rig_1 = right_off_trio tri_1 in
  let rig_2 = right_off_trio tri_2 in

  make (f lef_1 lef_2) (f mid_1 mid_2) (f rig_1 rig_2)
;;
 
let iter f_l tri =
  let lef = left_off_trio tri in
  let mid = middle_off_trio tri in
  let rig = right_off_trio tri in
   (f_l lef) ; (f_l mid) ; (f_l rig)
;;
 
(** {6 Naming} *)

let name nam_l tri =
  let lef = left_off_trio tri in
  let mid = middle_off_trio tri in
  let rig = right_off_trio tri in
  Format.sprintf "(%s, %s, %s)"
  (nam_l lef)
  (nam_l mid)
  (nam_l rig)
;;

