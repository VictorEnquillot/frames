(** {3 The functionalities for a Doublet.} *)

let nam_mod = "Doublet_v";;

(** {6 Making.} *)
  
let make lef rig = 
  (lef, rig)
;;

let left_off_doublet dou =
  let (lef, rig) = dou in
  lef
;;

let first_off_doublet = left_off_doublet;;

let right_off_doublet dou =
  let (lef, rig) = dou in
  rig
;;

let second_off_doublet = right_off_doublet;;

let list_off_leftextended_by f_l f_r dou =
  let lef = left_off_doublet dou in
  let rig = right_off_doublet dou in
  [f_l lef; f_r rig]
;;

let swap dou =
  let (lef, rig) = dou in
  (rig, lef)
;;

let doublet_of_list f g lis =
  if List.length lis <> 2
  then failwith "Not_a_two_element_list:List_v.ml.doublet_of_list"
  else
    begin
      let lef = List.nth lis 0 in 
      let rig = List.nth lis 1 in 
      make (f lef) (g rig)
    end
;;

(** {6 Iterating.} *)

let map f_l f_r dou =
  let lef = left_off_doublet dou in
  let rig = right_off_doublet dou in
  make (f_l lef) (f_r rig)
;;
 
let map_left f_l dou =
  let lef = left_off_doublet dou in
  let rig = right_off_doublet dou in
  make (f_l lef) rig
;;
 
let map_right f_r dou =
  let lef = left_off_doublet dou in
  let rig = right_off_doublet dou in
  make lef (f_r rig)
;;
 
let map2 f_l f_r dou_1 dou_2 =
  let lef_1 = left_off_doublet dou_1 in
  let rig_1 = right_off_doublet dou_1 in
  let lef_2 = left_off_doublet dou_2 in
  let rig_2 = right_off_doublet dou_2 in
  make (f_l lef_1 lef_2) (f_r rig_1 rig_2)
;;
 
let iter f_l f_r dou =
  let lef = left_off_doublet dou in
  let rig = right_off_doublet dou in
   (f_l lef) ; (f_r rig)
;;

let iter2 f_l f_r dou_1 dou_2 =
  let lef_1 = left_off_doublet dou_1 in
  let rig_1 = right_off_doublet dou_1 in
  let lef_2 = left_off_doublet dou_2 in
  let rig_2 = right_off_doublet dou_2 in
   (f_l lef_1 lef_2) ; (f_r rig_1 rig_2)
;;

(** {6 Comparing.} *)

let compare cmp_l cmp_r dou_1 dou_2 =
  let lef_1 = left_off_doublet dou_1 in
  let lef_2 = left_off_doublet dou_2 in
  let rig_1 = right_off_doublet dou_1 in
  let rig_2 = right_off_doublet dou_2 in
  (cmp_l lef_1 lef_2) + 7 * (cmp_r rig_1 rig_2)
;;
 
let compare_left cmp_l dou_1 dou_2 =
  let lef_1 = left_off_doublet dou_1 in
  let lef_2 = left_off_doublet dou_2 in
  (cmp_l lef_1 lef_2)
;;

let compare_right cmp_l dou_1 dou_2 =
  let rig_1 = right_off_doublet dou_1 in
  let rig_2 = right_off_doublet dou_2 in
  (cmp_l rig_1 rig_2)
;;
 
(** {6 Naming} *)

let name_bare_with_separator nam_l nam_r sep dou =
  let lef = left_off_doublet dou in
  let rig = right_off_doublet dou in
  Format.sprintf "%s%s%s"
  (nam_l lef) sep (nam_r rig)
;;

let name_with_separator nam_l nam_r sep dou =
  Format.sprintf "(%s)" 
    (name_bare_with_separator nam_l nam_r sep dou)
;;

let name_bare nam_l nam_r dou =
  name_bare_with_separator nam_l nam_r ", " dou
;; 

let name nam_l nam_r dou =
  name_with_separator nam_l nam_r ", " dou
;; 

let as_string nam_l nam_r dou =
  name nam_l nam_r dou
;; 

let name_capitalized nam_l nam_r dou =
  Format.sprintf "(%s)" 
    (String.capitalize_ascii (name_bare  nam_l nam_r dou))
;;

(* Formula *)
(***
let retrieve sym_son_dou soi_up =
  let ord_lef = Ordinal_p.ordinal 1 in
  let sym_lef = left_off_doublet sym_son_dou in
  let tag_lef = Tag_v.tag_of_sole_index_of_int_of_entity ord_lef soi_up sym_lef in
  
  let ord_rig = Ordinal_p.ordinal 2 in
  let sym_rig = right_off_doublet sym_son_dou in
  let tag_rig = Tag_v.tag_of_sole_index_of_int_of_entity ord_rig soi_up sym_rig in

  make tag_lef tag_rig
;;
***)
