(** {3 The functionalities for a Cappedoption_booted_list.} *)

let nam_mod = "Cappedoption_booted_list_v.ml";;

(** {6 Making.} *)

let make cpo bol =
  Doublet_v.make cpo bol
;;

let make_of_capoption_of_list_of_boot cpo lst bot =
  Utilities_v.not_yet_implemented nam_mod "make_of_capoption_of_list_of_boot"
(*
  let bol = Booted_list_v.make lst bot in
  make cpo bol
*)
;;

let make_of_list_capped_booted cbl =
  let cap = Capped_booted_list_v.cap_part_off_list_capped_booted cbl in
  let bol = Capped_booted_list_v.booted_list_part_off_list_capped_booted cbl in
  make (Some cap) bol
;;

(** {6 Extracting.} *)

let capoption_off_cappedoption_booted_list obl =
  Doublet_v.left_off_doublet obl
;;
 
let booted_list_off_cappedoption_booted_list obl =
  Doublet_v.right_off_doublet obl
;;

let list_off_leftextended_by_of_capoption fc = function
  | None -> []
  | Some c -> [fc c]
;;

let list_off_leftextended_by fc fe fb obl =
  let cpo = capoption_off_cappedoption_booted_list obl in
  let cpo_l = list_off_leftextended_by_of_capoption fc cpo in
  let bol = booted_list_off_cappedoption_booted_list obl in
  let lb_l = Booted_list_v.list_off_booted_list fe fb bol in

  List.append cpo_l lb_l
;;

(** {6 Iterating.} *)

let map_capoption fc = function
  | None -> None
  | Some c -> Some (fc c)
;;

let map fc fe fb obl =
  let bol = booted_list_off_cappedoption_booted_list obl in
  let cpo = capoption_off_cappedoption_booted_list obl in
  make (map_capoption fc cpo) (Booted_list_v.map fe fb bol)
;; 

let iter_capoption fc = function
  | None -> ()
  | Some c -> fc c
;;

let iter fc fe fb obl =
  let bol = booted_list_off_cappedoption_booted_list obl in
  let cpo = capoption_off_cappedoption_booted_list obl in
  iter_capoption fc cpo; Booted_list_v.iter fe fb bol
;; 

let map2_capoption fc = function
  | Some c1, Some c2 -> Some (fc c1 c2)
  | _ -> None
;;

let map2 fc fe fb obl_1 obl_2 =
  let cpo_1 = capoption_off_cappedoption_booted_list obl_1 in
  let cpo_2 = capoption_off_cappedoption_booted_list obl_2 in
  let bol_1 = booted_list_off_cappedoption_booted_list obl_1 in
  let bol_2 = booted_list_off_cappedoption_booted_list obl_2 in
  make (map2_capoption fc (cpo_1, cpo_2)) (Booted_list_v.map2 fe fb bol_1 bol_2)
;;

(** {6 Naming} *)

let name_booted_list nam_e nam_b bol =
  Booted_list_v.name nam_e nam_b bol
;;

let name_capoption nam_c = function
  | None -> ""
  | Some cap -> Format.sprintf "%s" (nam_c cap) 
;;

let name nam_c nam_e nam_b obl =
  Doublet_v.name (name_capoption nam_c) (name_booted_list nam_e nam_b) obl
;;

