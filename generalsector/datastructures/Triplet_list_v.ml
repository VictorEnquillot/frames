(** {3 The Triplet List functionalities.} *)

let nam_mod = "Triplet_list_v";;

(** {6 Making.} *)

let prepend lft mid rgt upp =
  (Triplet_v.make lft mid rgt) :: upp
;;

let make l_l m_l r_l =
  let d_l = List.combine l_l m_l in
  let dd_l = List.combine d_l r_l in
  List.map (fun ((a, b), c) -> (a, b, c) ) dd_l
;;

(** {6 Reading.} *)

let read ib =
  Utilities_v.not_yet_implemented nam_mod "read"
;;

(** {6 Triplet.} *)

let top trl =
  List_v.last_element_off_list trl
;;

(** {6 First Triplet_list components.} *)

let triplet_off_triplet_list trl =
  List.hd trl
;;

let uptriplet_list_off_triplet_list trl =
  List.tl trl
;;  
 
(** {6 Extracting.} *)

let right_list_off_triplet_list trl =
  List.map Triplet_v.right_off_triplet trl
;;

let middle_list_off_triplet_list trl =
  List.map Triplet_v.middle_off_triplet trl
;;

let left_list_off_triplet_list trl =
  List.map Triplet_v.left_off_triplet trl
;;

let left_doublet_list_off_triplet_list trl =
  List.map Triplet_v.left_doublet_off_triplet trl
;;

let right_doublet_list_off_triplet_list trl = 
  List.map Triplet_v.right_doublet_off_triplet trl
;;

let triplet_count_of_triplet_list trl = 
 List.length trl
;;

let nth_triplet_of_int_off_triplet_list n trl =
  try List.nth trl n
  with Failure nth -> 
    failwith ("No_nth:Triplet_list_v.nth_triplet_of_int_of_triplet_list")
;;

let nth_left_of_int_off_triplet_list n trl =
  let (lft, _) = nth_triplet_of_int_off_triplet_list n trl in
  lft
;;

let nth_right_of_int_off_triplet_list n trl =
  let (_, rgt) = nth_triplet_of_int_off_triplet_list n trl in
  rgt
;;

let filter_if_left prl trl =
  let pre t = prl (Triplet_v.left_off_triplet t) in
  try List.filter pre trl 
  with Not_found ->
    failwith ("Not_found:Triplet_list_v.filter_if_left")
;;

let filter_if_middle prl trl =
  let pre t = prl (Triplet_v.middle_off_triplet t) in
  try List.filter pre trl 
  with Not_found ->
    failwith ("Not_found:Triplet_list_v.filter_if_middle")
;;

let filter_if_right prl trl =
  let pre t = prl (Triplet_v.right_off_triplet t) in
  try List.filter pre trl 
  with Not_found ->
    failwith ("Not_found:Triplet_list_v.filter_if_right")
;;

let find_if_left prl trl =
  let pre d = prl (Triplet_v.left_off_triplet d) in
  try List.find pre trl 
  with Not_found ->
    failwith ("Not_found:Triplet_list_v.find_if_left")
;;

let find_if_right prr trl =
  let pre d = prr (Triplet_v.right_off_triplet d) in
  try List.find pre trl 
  with Not_found ->
    failwith ("Not_found:Triplet_list_v.find_if_right")
;;

let triplet_of_left_off_triplet_list lft trl = 
  find_if_left (fun l -> l = lft) trl 
;;

let triplet_of_right_off_triplet_list rgt trl = 
  find_if_right (fun r -> r = rgt) trl 
;;

let right_of_left_off_triplet_list lft trl = 
  let d = triplet_of_left_off_triplet_list lft trl in
  Triplet_v.right_off_triplet d
;;

let left_of_right_off_triplet_list rgt trl = 
  let d = triplet_of_right_off_triplet_list rgt trl in
  Triplet_v.left_off_triplet d
;;

let triplet_right_list_include_of_left_off_triplet_list lft trl =
  List_v.right_list_included_of_predicate_of_list 
    (fun l -> lft = Triplet_v.left_off_triplet l) trl
;;

let uptriplet_list_of_left_off_triplet_list lft trl =
  List_v.right_list_excluded_of_predicate_of_list 
    (fun l -> lft = Triplet_v.left_off_triplet l) trl
;;

(** {6 Querying.} *)

let has_left lft trl =
  let l_l = left_list_off_triplet_list trl in
  List.mem lft l_l
;;

let has_right rgt trl =
  let r_l = right_list_off_triplet_list trl in
  List.mem rgt r_l
;;

(** {6 Iterating.} *)

let map fe fm fi trl =
  List.map (Triplet_v.map fe fm fi) trl
;;

let iter fe fm fi trl =
  List.iter (Triplet_v.iter fe fm fi) trl
;;

let list_of_triplet_list f trl =
  List.map (fun (a, b, c) -> f a b c) trl
;;

(** {6 Naming} *)

let name nam_l nam_m nam_r trl =
  List_v.name (Triplet_v.name nam_l nam_m nam_r) trl
;;

let name_with_separator nam_l nam_m nam_r sep trl =
  List_v.name_with_separator (Triplet_v.name nam_l nam_m nam_r) sep trl
;;

