(** {3 The functionalities for a Uno.} *)

let nam_mod = "Uno_v";;

(** {6 Making.} *)
  
let make ele = (ele);;

let element_off_uno ele = ele;;

let first_off_uno = element_off_uno;;

let singlet_of_uno ele = Singlet_v.make ele

let left_off_uno = element_off_uno;;

let list_of_uno uno = [uno];;

let uno_of_list lis = 
  if List.length lis <> 1
  then failwith "Not_a_uno:Uno_v.uno_of_list"
  else make (List.hd lis)
;;

let is_uno ele =
  element_off_uno ele = ele
;;

let map f uno =
  let ele = element_off_uno uno in
  make (f ele)
;;

let map2 f uno_1 uno_2 =
  let ele_1 = element_off_uno uno_1 in
  let ele_2 = element_off_uno uno_2 in
  make (f ele_1 ele_2)
;;

let iter f uno =
  let ele = element_off_uno uno in
  f ele
;;

let iter2 f uno_1 uno_2 =
  let ele_1 = element_off_uno uno_1 in
  let ele_2 = element_off_uno uno_2 in
  f ele_1 ele_2
;;

(** {6 Naming} *)

let print prt_t ppf uno =
  Format.fprintf ppf "(%a)" prt_t uno
;;

let name nam_t uno =
  Format.sprintf "(%s)" (nam_t uno)
;;

