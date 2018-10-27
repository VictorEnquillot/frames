(** {3 The functionalities for a Booted_list.} *)


(** {6 Making.} *)

let make lis bot =
  Doublet_v.make lis bot 
;;

let make_of_list a_l =
  let r_l = List.rev a_l in
  let bot = List.hd r_l in
  let lis = List.rev (List.tl r_l) in
  make lis bot
;;

(** {6 Extracting.} *)

let list_part_off_booted_list bol =
  Doublet_v.left_off_doublet bol 
;;

let boot_part_off_booted_list bol =
  Doublet_v.right_off_doublet bol 
;;
 
let list_off_booted_list fe fb bol =
  let lis = list_part_off_booted_list bol in
  let bot = boot_part_off_booted_list bol in
  let s_l = List.map fe lis in
  let s_b = fb bot in
  List.append s_l [s_b]
;;

let left_extend_by_list x_l bol =
  let lis = list_part_off_booted_list bol in
  let bot = boot_part_off_booted_list bol in
  make (List.append x_l lis) bot 
;;

(** {6 Iterating.} *)

let map_list_part fl bol =
  let lis = list_part_off_booted_list bol in
  let bot = boot_part_off_booted_list bol in
  make (List.map fl lis) bot
;;

let map_boot_part fb bol =
  let lis = list_part_off_booted_list bol in
  let bot = boot_part_off_booted_list bol in
  make lis (fb bot)
;;

let map fe fb bol =
  let lis = list_part_off_booted_list bol in
  let bot = boot_part_off_booted_list bol in
  make (List.map fe lis) (fb bot)
;; 

let iter fe fb bol =
  let bot = boot_part_off_booted_list bol in
  let lis = list_part_off_booted_list bol in
   List.iter fe lis; fb bot;
;; 

let map2 fe fb bol_1 bol_2 =
  let boot_1 = boot_part_off_booted_list bol_1 in
  let lis1 = list_part_off_booted_list bol_1 in
  let boot_2 = boot_part_off_booted_list bol_2 in
  let lis2 = list_part_off_booted_list bol_2 in
  make (List.map2 fe lis1 lis2) (fb boot_1 boot_2) 
;;

(** {6 Naming} *)

let name nam_e nam_b bol =
  Doublet_v.name (List_v.name nam_e) nam_b bol
;;

