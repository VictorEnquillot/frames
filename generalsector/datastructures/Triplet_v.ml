(** {3 The functionalities for a Triplet.} *)

let nam_mod = "Triplet_v";;

(** {6 Modules.} *)

(** {6 Making.} *)
  
let make lef mid rig = 
  (lef, mid, rig)
;;

let make_of_doublet_of_right dbl rig =
  let lef = Doublet_v.left_off_doublet dbl in
  let mid = Doublet_v.right_off_doublet dbl in
  make lef mid rig
;;

let make_of_left_of_doublet lef dbl =
  let mid = Doublet_v.left_off_doublet dbl in
  let rig = Doublet_v.right_off_doublet dbl in
  make lef mid rig
;;

(** {6 Extracting.} *)

let left_off_triplet tri =
  let (lef, _, _) = tri in
  lef
;;
let first_off_triplet = left_off_triplet;;

let middle_off_triplet tri =
  let (_, mid, _) = tri in
  mid
;;
let second_off_triplet = middle_off_triplet;;

let right_off_triplet tri =
  let (_, _, rig) = tri in
  rig
;;

let last_off_triplet = right_off_triplet;;

let third_off_triplet = right_off_triplet;;

let left_doublet_off_triplet tri =
  let lef = left_off_triplet tri in
  let mid = middle_off_triplet tri in
  Doublet_v.make lef mid 
;;

let right_doublet_off_triplet tri =
  let mid = middle_off_triplet tri in
  let rig = right_off_triplet tri in
  Doublet_v.make mid rig 
;;

(** {6 Reseting.} *)

let reset_of_left_off_triplet lef tri =
  let dou = right_doublet_off_triplet tri in
  make_of_left_of_doublet lef dou
;;
(** {6 Iterating.} *)

let map f_l f_m f_t tri =
  let lef = left_off_triplet tri in
  let mid = middle_off_triplet tri in
  let rig = right_off_triplet tri in
  make (f_l lef) (f_m mid) (f_t rig)
;;

let map2 f_l f_m f_t tri_1 tri_2 =
  let lef_1 = left_off_triplet tri_1 in
  let mid_1 = middle_off_triplet tri_1 in
  let rig_1 = right_off_triplet tri_1 in
  let lef_2 = left_off_triplet tri_2 in
  let mid_2 = middle_off_triplet tri_2 in
  let rig_2 = right_off_triplet tri_2 in
  make (f_l lef_1 lef_2) (f_m mid_1 mid_2) (f_t rig_1 rig_2)
;;
 
let iter f_l f_m f_t tri =
  let lef = left_off_triplet tri in
  let mid = middle_off_triplet tri in
  let rig = right_off_triplet tri in
   (f_l lef) ; (f_m mid) ; (f_t rig)
;;
 
let iter2 f_l f_m f_r tri_1 tri_2 =
  let lef_1 = left_off_triplet tri_1 in
  let mid_1 = middle_off_triplet tri_1 in
  let rig_1 = right_off_triplet tri_1 in
  let lef_2 = left_off_triplet tri_2 in
  let mid_2 = middle_off_triplet tri_2 in
  let rig_2 = right_off_triplet tri_2 in
  (f_l lef_1 lef_2) ;(f_m mid_1 mid_2) ;(f_r rig_1 rig_2)
;;
 
let triplet_off_list f_l f_m f_r lis =
  if List.length lis <> 3
  then failwith "Not_a_three_element_list:List_v.triplet_off_list"
  else
    begin
      let lef = List.nth lis 0 in
      let mid = List.nth lis 1 in
      let rig = List.nth lis 2 in
      make (f_l lef) (f_m mid) (f_r rig)
    end
;;

(** {6 Comparing.} *)

let compare cmp_l cmp_m cmp_r tri_a tri_l =
  let lef_a = left_off_triplet tri_a in
  let lef_b = left_off_triplet tri_l in
  let mid_a = middle_off_triplet tri_a in
  let mid_b = middle_off_triplet tri_l in
  let rig_a = right_off_triplet tri_a in
  let rig_b = right_off_triplet tri_l in
  (cmp_l lef_a lef_b) + 3 * (cmp_m mid_a mid_b) + 10 * (cmp_r rig_a rig_b)
;;
 
(** {6 Naming} *)

let name_bare_with_separator nam_l nam_m nam_r sep tri =
  let lef = left_off_triplet tri in
  let mid = middle_off_triplet tri in
  let rig = right_off_triplet tri in
  Format.sprintf "%s%s%s%s%s"
  (nam_l lef) sep (nam_m mid) sep (nam_r rig)
;;

let name_with_separator nam_l nam_m nam_r sep tri =
  Format.sprintf "(%s)" 
    (name_bare_with_separator nam_l nam_m nam_r sep tri)
;;

let name_bare nam_l nam_m nam_r tri =
  name_bare_with_separator nam_l nam_m nam_r ", " tri
;; 

let name nam_l nam_m nam_r tri =
  Format.sprintf "(%s)" 
    (name_bare nam_l nam_m nam_r tri)
;; 

let name_capitalized nam_l nam_m nam_r tri =
  Format.sprintf "(%s)" 
    (String.capitalize (name_bare nam_l nam_m nam_r tri))
;;

