(** {3 The functionalities for a List_capped_booted.} *)

(** {6 Making.} *)

let make cap e_l bot =
  Triplet_v.make cap e_l bot
;;

let make_of_cap_of_booted_list cap bol =
  let b_l = Booted_list_v.list_part_off_booted_list bol in
  let bot = Booted_list_v.boot_part_off_booted_list bol in
  make cap b_l bot
;;

let merge_of_capped_list_of_booted_list cal bol =
  let cap = Capped_list_v.cap_part_off_capped_list cal in
  let c_l = Capped_list_v.list_part_off_capped_list cal in
  let b_l = Booted_list_v.list_part_off_booted_list bol in
  let bot = Booted_list_v.boot_part_off_booted_list bol in
  make cap (List.append c_l b_l) bot
;;

(** {6 Extracting.} *)

let cap_part_off_list_capped_booted cbl =
  Triplet_v.left_off_triplet cbl 
;;
 
let list_part_off_list_capped_booted cbl =
  Triplet_v.middle_off_triplet cbl 
;;

let boot_part_off_list_capped_booted cbl =
  Triplet_v.right_off_triplet cbl 
;;

let capped_list_part_off_list_capped_booted cbl =
  let cap = cap_part_off_list_capped_booted cbl in
  let e_l = list_part_off_list_capped_booted cbl in
  Capped_list_v.make cap e_l 
;;

let booted_list_part_off_list_capped_booted cbl =
  let e_l = list_part_off_list_capped_booted cbl in
  let bot = boot_part_off_list_capped_booted cbl in
  Booted_list_v.make e_l bot 
;;

let list_off_list_capped_booted fc fe fb cbl =
  let cap = cap_part_off_list_capped_booted cbl in
  let e_l = list_part_off_list_capped_booted cbl in
  let bot = boot_part_off_list_capped_booted cbl in
  let s_c = fc cap in
  let s_l = List.map fe e_l in
  let s_b = fb bot in
  s_c :: (List.append s_l [s_b])
;;

(** {6 Iterating.} *)

let map_cap_part fc cbl =
  let cap = cap_part_off_list_capped_booted cbl in
  let e_l = list_part_off_list_capped_booted cbl in
  let bot = boot_part_off_list_capped_booted cbl in
  make (fc cap) e_l bot
;;

let map_list_part fl cbl =
  let cap = cap_part_off_list_capped_booted cbl in
  let e_l = list_part_off_list_capped_booted cbl in
  let bot = boot_part_off_list_capped_booted cbl in
  make cap (List.map fl e_l) bot
;;

let map_boot_part fb cbl =
  let cap = cap_part_off_list_capped_booted cbl in
  let e_l = list_part_off_list_capped_booted cbl in
  let bot = boot_part_off_list_capped_booted cbl in
  make cap e_l (fb bot)
;;

let map fc fe fb cbl =
  let cap = cap_part_off_list_capped_booted cbl in
  let e_l = list_part_off_list_capped_booted cbl in
  let bot = boot_part_off_list_capped_booted cbl in
  make (fc cap) (List.map fe e_l) (fb bot)
;; 

let iter fc fe fb cbl =
  let cap = cap_part_off_list_capped_booted cbl in
  let e_l = list_part_off_list_capped_booted cbl in
  let bot = boot_part_off_list_capped_booted cbl in
  fc cap; List.iter fe e_l; fb bot
;; 

let map2 fc fe fb cbl_1 cbl_2 =
  let cap_1 = cap_part_off_list_capped_booted cbl_1 in
  let e_l1 = list_part_off_list_capped_booted cbl_1 in
  let bot_1 = boot_part_off_list_capped_booted cbl_1 in
  let cap_2 = cap_part_off_list_capped_booted cbl_2 in
  let e_l2 = list_part_off_list_capped_booted cbl_2 in
  let bot_2 = boot_part_off_list_capped_booted cbl_2 in
  make (fc cap_1 cap_2) (List.map2 fe e_l1 e_l2) (fb bot_1 bot_2)
;;

(** {6 Naming} *)

let name nam_c nam_e nam_b cbl =
  Triplet_v.name nam_c (List_v.name nam_e) nam_b cbl
;;

