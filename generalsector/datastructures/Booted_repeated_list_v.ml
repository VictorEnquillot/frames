(** {3 The functionalities for a Booted_repeated_list.} *)


(** {6 Making.} *)

let make_of_repeated_list_of_boot rep_l bot =
  Doublet_v.make rep_l bot 
;;

let make_of_repeated_list rep_l =
  let top_l = List_v.cut_off_last_element_off_list rep_l in
  let bot = List_v.last_element_off_list rep_l in
  make_of_repeated_list_of_boot top_l bot
;;

let make_of_boot bot =
  make_of_repeated_list_of_boot [] bot
;;

let make_of_extension_of_boot ext bot =
  let rpx_l = Repeated_list_v.make_of_element_of_count ext Index_p.one in
  make_of_repeated_list_of_boot rpx_l bot 
;;

let make_of_extension_of_count_of_boot ext cnt bot =
  let rpx_l = Repeated_list_v.make_of_element_of_count ext cnt in
  make_of_repeated_list_of_boot rpx_l bot 
;;

(** {6 Extracting.} *)

let repeated_list_part_off_booted_repeated_list brl =
  Doublet_v.left_off_doublet brl 
;;

let boot_part_off_booted_repeated_list brl =
  Doublet_v.right_off_doublet brl 
;;
 
let extension_off_booted_repeated_list brl =
  let rpl = repeated_list_part_off_booted_repeated_list brl in
  try List.hd rpl
  with Failure hd ->
    failwith "Extension_undefined_list_empty:Booted_repeated_list_v.extension_off_booted_repeated_list"
;;

let list_off_booted_repeated_list fe fb brl =
  let rep_l = repeated_list_part_off_booted_repeated_list brl in
  let bot = boot_part_off_booted_repeated_list brl in
  let s_l = List.map fe rep_l in
  let s_b = fb bot in
  List.append s_l [s_b]
;;

let count brl =
  let rpl = repeated_list_part_off_booted_repeated_list brl in
  let i = List.length rpl in
  Index_p.make i
;;

let is_embedded_extension_empty_or_equal_of_entension_of_booted_repeated_list ext brl =
let x = try extension_off_booted_repeated_list brl
with 
  Failure "Extension_undefined_list_empty:Booted_repeated_list_v.extension_off_booted_repeated_list" -> ext
in
x = ext 
;;

(** {6 Extending.} *)

let left_extends_by_one_of_extension_of_booted_repeated_list ext brl =
  let cnt = count brl in
  let bot = boot_part_off_booted_repeated_list brl in
  if (is_embedded_extension_empty_or_equal_of_entension_of_booted_repeated_list ext brl )
  then make_of_extension_of_count_of_boot ext (Index_p.increment cnt) bot
  else failwith "Non_equal_extensions:Booted_repeated_list_v.left_extends_by_one_of_extension_of_booted_repeated_list"
;;

let prepend_of_repeated_list_of_booted_repeated_list rpx_l brl =
  let rep_l = repeated_list_part_off_booted_repeated_list brl in
  let bot = boot_part_off_booted_repeated_list brl in
  
  make_of_repeated_list_of_boot (Repeated_list_v.append rpx_l rep_l) bot 
;;

(** {6 Iterating.} *)

let map_repeated_list_part fl brl =
  let rep_l = repeated_list_part_off_booted_repeated_list brl in
  let bot = boot_part_off_booted_repeated_list brl in
  make_of_repeated_list_of_boot (List.map fl rep_l) bot
;;

let map_boot_part fb brl =
  let rep_l = repeated_list_part_off_booted_repeated_list brl in
  let bot = boot_part_off_booted_repeated_list brl in
  make_of_repeated_list_of_boot rep_l (fb bot)
;;

let map fe fb brl =
  let rep_l = repeated_list_part_off_booted_repeated_list brl in
  let bot = boot_part_off_booted_repeated_list brl in
  make_of_repeated_list_of_boot (List.map fe rep_l) (fb bot)
;; 

let iter fe fb brl =
  let bot = boot_part_off_booted_repeated_list brl in
  let rep_l = repeated_list_part_off_booted_repeated_list brl in
   List.iter fe rep_l; fb bot;
;; 

let map2 fe fb brl_1 brl_2 =
  let boot_1 = boot_part_off_booted_repeated_list brl_1 in
  let rep_l1 = repeated_list_part_off_booted_repeated_list brl_1 in
  let boot_2 = boot_part_off_booted_repeated_list brl_2 in
  let rep_l2 = repeated_list_part_off_booted_repeated_list brl_2 in
  make_of_repeated_list_of_boot (List.map2 fe rep_l1 rep_l2) (fb boot_1 boot_2) 
;;

(** {6 Naming} *)

let name nam_x nam_b brl =
  let b = boot_part_off_booted_repeated_list brl in
  let cnt = count brl in
  if cnt = Index_p.zero
  then
    Format.sprintf "x0%s" (nam_b b)  
  else
    let x = extension_off_booted_repeated_list brl in
    Format.sprintf "%sr%s%s" (nam_x x) (Index_p.name cnt) (nam_b b)
;; 

let print prt_x prt_b ppf brl =
  let b = boot_part_off_booted_repeated_list brl in
  let cnt = count brl in
  if cnt = Index_p.zero
  then
    Format.fprintf ppf "Boot %a" prt_b b  
  else
    let x = extension_off_booted_repeated_list brl in
    Format.fprintf ppf "%a Extended %a times by %a" 
      prt_b b 
      Index_p.print cnt 
      prt_x x
;; 


