(** {3 The functionalities for a Cappedoption_list.} *)

(** {6 Making.} *)

let make cpo lst =
  Doublet_v.make cpo lst
;;

let make_of_capped_list cal =
  let cap = Capped_list_v.cap_part_off_capped_list cal in
  let lst = Capped_list_v.list_part_off_capped_list cal in
  make (Some cap) lst
;;

let make_of_list lst =
  make None lst
;;

(** {6 Extracting.} *)

let capoption_off_cappedoption_list col =
  Doublet_v.left_off_doublet col
;;
 
let list_part_off_cappedoption_list col =
  Doublet_v.right_off_doublet col
;;

let list_off_leftextended_by_of_capoption fc = function
  | None -> []
  | Some c -> [fc c]
;;

let list_off_leftextended_by fc fe col =
  let cpo = capoption_off_cappedoption_list col in
  let lst = list_part_off_cappedoption_list col in
  List.append (list_off_leftextended_by_of_capoption fc cpo) (List.map fe lst) 
;;

(** {6 Iterating.} *)

let map_capoption fc = function
  | None -> None
  | Some c -> Some (fc c)
;;

let map fc fe col =
  let cpo = capoption_off_cappedoption_list col in
  let lst = list_part_off_cappedoption_list col in
  make (map_capoption fc cpo) (List.map fe lst)
;; 

let map_list fe col =
  let cpo = capoption_off_cappedoption_list col in
  let lst = list_part_off_cappedoption_list col in
  make cpo (List.map fe lst)
;; 

let iter_capoption fc = function
  | None -> ()
  | Some c -> fc c
;;

let iter fc fe col =
  let cpo = capoption_off_cappedoption_list col in
  let lst = list_part_off_cappedoption_list col in
  iter_capoption fc cpo; List.iter fe lst
;; 

let map2_capoption fc = function
  | Some c1, Some c2 -> Some (fc c1 c2)
  | _ -> None
;;

let map2 fc fe col_1 col_2 =
  let cpo_1 = capoption_off_cappedoption_list col_1 in
  let cpo_2 = capoption_off_cappedoption_list col_2 in
  let lst_1 = list_part_off_cappedoption_list col_1 in
  let lst_2 = list_part_off_cappedoption_list col_2 in
  make (map2_capoption fc (cpo_1, cpo_2)) (List.map2 fe lst_1 lst_2)
;;

(** {6 Naming} *)

let list_off_cappedoption_list fc fe col =
  let c_l = map fc fe col in
  let cpo = capoption_off_cappedoption_list c_l in
  let lst = list_part_off_cappedoption_list c_l in
  match cpo with
  | None -> lst
  | Some cap -> cap :: lst
;;

let name_capoption nam_c = function
  | None -> ""
  | Some cap -> Format.sprintf "%s" (nam_c cap) 
;;

let name nam_c nam_e col =
  Doublet_v.name (name_capoption nam_c) (List_v.name nam_e) col
;;

