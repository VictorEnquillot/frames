(** {3 The Quadruplet List functionalities.} *)

let nam_mod = "Quadruplet_list_v";;

(** {6 Making.} *)

let prepend lft mil mir rgt upp =
  (Quadruplet_v.make lft mil mir rgt) :: upp
;;

let make l_l mll mrl r_l =
  let dll = List.combine l_l mll in
  let drl = List.combine mrl r_l in
  List.map2 Quadruplet_v.make_of_doublet_of_doublet dll drl
;;

(** {6 Extracting.} *)

let top tet_l =
  List_v.last_element_off_list tet_l
;;

(** {6 First Quadruplet_list components.} *)

let quadruplet_off_quadruplet_list tet_l =
  List.hd tet_l
;;

let upquadruplet_list_off_quadruplet_list tet_l =
  List.tl tet_l
;;  
 
let left_off_quadruplet_list tet_l =
  let lvl = quadruplet_off_quadruplet_list tet_l in
  Quadruplet_v.left_off_quadruplet lvl
;;

let right_off_quadruplet_list tet_l = 
  let lvl = quadruplet_off_quadruplet_list tet_l in 
  Quadruplet_v.right_off_quadruplet lvl
;;

(** {6 Extracting.} *)

let right_list_off_quadruplet_list tet_l =
  List.map Quadruplet_v.right_off_quadruplet tet_l
;;

let middle_left_list_off_quadruplet_list tet_l =
  List.map Quadruplet_v.middle_left_off_quadruplet tet_l
;;

let left_list_off_quadruplet_list tet_l =
  List.map Quadruplet_v.left_off_quadruplet tet_l
;;

let quadruplet_count_of_quadruplet_list tet_l = 
 List.length tet_l
;;

let nth_quadruplet_of_int_off_quadruplet_list n tet_l =
  try List.nth tet_l n
  with Failure nth -> 
    failwith ("No_nth:Quadruplet_list_v.nth_quadruplet_of_int_of_quadruplet_list")
;;

let nth_left_of_int_off_quadruplet_list n tet_l =
  let (lft, _) = nth_quadruplet_of_int_off_quadruplet_list n tet_l in
  lft
;;

let nth_right_of_int_off_quadruplet_list n tet_l =
  let (_, rgt) = nth_quadruplet_of_int_off_quadruplet_list n tet_l in
  rgt
;;

let filter_if_left prl tet_l =
  let pre t = prl (Quadruplet_v.left_off_quadruplet t) in
  try List.filter pre tet_l 
  with Not_found ->
    failwith ("Not_found:Quadruplet_list_v.filter_if_left")
;;

let filter_if_middle_left prl tet_l =
  let pre t = prl (Quadruplet_v.middle_left_off_quadruplet t) in
  try List.filter pre tet_l 
  with Not_found ->
    failwith ("Not_found:Quadruplet_list_v.filter_if_middle_left")
;;

let filter_if_right prl tet_l =
  let pre t = prl (Quadruplet_v.right_off_quadruplet t) in
  try List.filter pre tet_l 
  with Not_found ->
    failwith ("Not_found:Quadruplet_list_v.filter_if_right")
;;

let find_if_left prl tet_l =
  let pre d = prl (Quadruplet_v.left_off_quadruplet d) in
  try List.find pre tet_l 
  with Not_found ->
    failwith ("Not_found:Quadruplet_list_v.find_if_left")
;;

let find_if_right prr tet_l =
  let pre d = prr (Quadruplet_v.right_off_quadruplet d) in
  try List.find pre tet_l 
  with Not_found ->
    failwith ("Not_found:Quadruplet_list_v.find_if_right")
;;

let quadruplet_of_left_off_quadruplet_list lft tet_l = 
  find_if_left (fun l -> l = lft) tet_l 
;;

let quadruplet_of_right_off_quadruplet_list rgt tet_l = 
  find_if_right (fun r -> r = rgt) tet_l 
;;

let right_of_left_off_quadruplet_list lft tet_l = 
  let d = quadruplet_of_left_off_quadruplet_list lft tet_l in
  Quadruplet_v.right_off_quadruplet d
;;

let left_of_right_off_quadruplet_list rgt tet_l = 
  let d = quadruplet_of_right_off_quadruplet_list rgt tet_l in
  Quadruplet_v.left_off_quadruplet d
;;

let quadruplet_right_list_include_of_left_off_quadruplet_list lft tet_l =
  List_v.right_list_included_of_predicate_of_list 
    (fun l -> lft = Quadruplet_v.left_off_quadruplet l) tet_l
;;

let upquadruplet_list_of_left_off_quadruplet_list lft tet_l =
  List_v.right_list_excluded_of_predicate_of_list 
    (fun l -> lft = Quadruplet_v.left_off_quadruplet l) tet_l
;;

(** {6 Querying.} *)

let has_left lft tet_l =
  let l_l = left_list_off_quadruplet_list tet_l in
  List.mem lft l_l
;;

let has_right rgt tet_l =
  let r_l = right_list_off_quadruplet_list tet_l in
  List.mem rgt r_l
;;

(** {6 Iterating.} *)

let map f_l fml fmr f_r tet_l =
  List.map (Quadruplet_v.map f_l fml fmr f_r) tet_l
;;

let iter f_l fml fmr f_r tet_l =
  List.iter (Quadruplet_v.iter f_l fml fmr f_r) tet_l
;;

let list_off_quadruplet_list f tet_l =
  List.map (fun (a, b, c, d) -> f a b c d) tet_l
;;

(** {6 Naming.} *)

let name nam_l namml nammr nam_r tet_l =
  List_v.name (Quadruplet_v.name nam_l namml nammr nam_r) tet_l
;;

let name_with_separator nam_l namml nammr nam_r sep tet_l =
  List_v.name_with_separator (Quadruplet_v.name nam_l namml nammr nam_r) sep tet_l
;;

