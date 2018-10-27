(** {3 The Trio List functionalities.} *)

let nam_mod = "Trio_list_v";;

(** {6 Making.} *)

let prepend lft mid rgt upp =
  (Trio_v.make lft mid rgt) :: upp
;;

let make_of_list_of_duo_list l_l mr_l =
 List_v.map2 Trio_v.make_of_right_duo l_l mr_l 
;;

let make_of_duo_list_of_list lm_l r_l =
  List_v.map2 Trio_v.make_of_left_duo lm_l r_l 
;;

let make l_l m_l r_l =
  let lm_l = Duo_list_v.make l_l m_l in
  make_of_duo_list_of_list lm_l r_l
;;

let trio_list_of_list lis =
  
  let rec apply acc = function
    | [] -> acc
    | l -> 
	let (tri, rem_l) = List_v.first_trio_n_remainder_list_off_list l in
	apply (tri :: acc ) rem_l
  in

  if (3*((List.length lis)/3) <> (List.length lis))
  then failwith ("List_length_not_modulo_3:"^nam_mod^".make_of_list")
  else apply [] (List.rev lis)
;;

(** {6 Reading.} *)

let read ib =
  Utilities_v.not_yet_implemented nam_mod "read"
;;

(** {6 Trio.} *)

let top tri_l =
  List_v.last_element_off_list tri_l
;;

(** {6 First Trio_list components.} *)

let trio_off_trio_list tri_l =
  List.hd tri_l
;;

let uptrio_list_off_trio_list tri_l =
  List.tl tri_l
;;  
 
(** {6 Extracting.} *)

let right_list_off_trio_list tri_l =
  List.map Trio_v.right_off_trio tri_l
;;

let middle_list_off_trio_list tri_l =
  List.map Trio_v.middle_off_trio tri_l
;;

let left_list_off_trio_list tri_l =
  List.map Trio_v.left_off_trio tri_l
;;

let left_duo_list_off_trio_list tri_l =
  List.map Trio_v.left_duo_off_trio tri_l
;;

let right_duo_list_off_trio_list tri_l = 
  List.map Trio_v.right_duo_off_trio tri_l
;;

let trio_count_of_trio_list tri_l = 
 List.length tri_l
;;

let nth_trio_of_int_off_trio_list n tri_l =
  try List.nth tri_l n
  with Failure nth -> 
    failwith ("No_nth:Trio_list_v.nth_trio_of_int_of_trio_list")
;;

let nth_left_of_int_off_trio_list n tri_l =
  let (lft, _) = nth_trio_of_int_off_trio_list n tri_l in
  lft
;;

let nth_right_of_int_off_trio_list n tri_l =
  let (_, rgt) = nth_trio_of_int_off_trio_list n tri_l in
  rgt
;;

let filter_if_left prl tri_l =
  let pre t = prl (Trio_v.left_off_trio t) in
  try List.filter pre tri_l 
  with Not_found ->
    failwith ("Not_found:Trio_list_v.filter_if_left")
;;

let filter_if_middle prl tri_l =
  let pre t = prl (Trio_v.middle_off_trio t) in
  try List.filter pre tri_l 
  with Not_found ->
    failwith ("Not_found:Trio_list_v.filter_if_middle")
;;

let filter_if_right prl tri_l =
  let pre t = prl (Trio_v.right_off_trio t) in
  try List.filter pre tri_l 
  with Not_found ->
    failwith ("Not_found:Trio_list_v.filter_if_right")
;;

let find_if_left prl tri_l =
  let pre d = prl (Trio_v.left_off_trio d) in
  try List.find pre tri_l 
  with Not_found ->
    failwith ("Not_found:Trio_list_v.find_if_left")
;;

let find_if_right prr tri_l =
  let pre d = prr (Trio_v.right_off_trio d) in
  try List.find pre tri_l 
  with Not_found ->
    failwith ("Not_found:Trio_list_v.find_if_right")
;;

let trio_of_left_off_trio_list lft tri_l = 
  find_if_left (fun l -> l = lft) tri_l 
;;

let trio_of_right_off_trio_list rgt tri_l = 
  find_if_right (fun r -> r = rgt) tri_l 
;;

let right_of_left_off_trio_list lft tri_l = 
  let d = trio_of_left_off_trio_list lft tri_l in
  Trio_v.right_off_trio d
;;

let left_of_right_off_trio_list rgt tri_l = 
  let d = trio_of_right_off_trio_list rgt tri_l in
  Trio_v.left_off_trio d
;;

let trio_right_list_include_of_left_off_trio_list lft tri_l =
  List_v.right_list_included_of_predicate_of_list 
    (fun l -> lft = Trio_v.left_off_trio l) tri_l
;;

let uptrio_list_of_left_off_trio_list lft tri_l =
  List_v.right_list_excluded_of_predicate_of_list 
    (fun l -> lft = Trio_v.left_off_trio l) tri_l
;;

(** {6 Querying.} *)

let has_left lft tri_l =
  let l_l = left_list_off_trio_list tri_l in
  List.mem lft l_l
;;

let has_right rgt tri_l =
  let r_l = right_list_off_trio_list tri_l in
  List.mem rgt r_l
;;

(** {6 Iterating.} *)

let map f tri_l =
  List.map (Trio_v.map f) tri_l
;;

let iter f tri_l =
  List.iter (Trio_v.iter f) tri_l
;;

let list_of_trio_list tri_l =
  List.flatten (List.map Trio_v.list_of_trio tri_l)
;;

(** {6 Naming} *)

let name nam tri_l =
  List_v.name (Trio_v.name nam) tri_l
;;

let name_with_separator nam sep tri_l =
  List_v.name_with_separator (Trio_v.name nam) sep tri_l
;;

let name_in_column nam tri_l =
  List_v.name_in_column (Trio_v.name nam) tri_l
;;

let list_trio_of_list lis =
  let len_lis = List.length lis in
  let len_thi = len_lis / 3 in
  if (3*len_thi) <> (len_lis)
  then failwith ("List_length_not_modulo_3:"^nam_mod^".list_trio_of_list")
  else 
    begin
      let (fir_l, rem_l) = List_v.first_elements_n_remainder_of_count_off_list len_thi lis in
      let (sec_l, thi_l) = List_v.first_elements_n_remainder_of_count_off_list len_thi rem_l in
      (fir_l, sec_l, thi_l)
    end
;;
