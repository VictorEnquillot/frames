(** {3 The functionalities for a (left-) extended_by type.} *)


(** {6 Making.} *)

let make_of_doublet dbl =
  dbl 
;;

let make x_l b =
  if List_v.is_repeated_list x_l 
  then
    let dbl = Doublet_list_v.make x_l b in
    make_of_doublet dbl
  else
    failwith "list_non_repeated:lxb_v.make"
;;
(** should be private type *)

let make_of_basic b =
  let dbl = Doublet_list_v.make [] b in
  make_of_doublet dbl
;;

let make_of_extension_of_int_of_basic x i b =
  let x_l = 
    List_v.repeated_list_of_element_of_int 
      x i in
  make x_l b 
;;

(** {6 Extracting.} *)

let repeated_list_part_off_leftextended_by lxb =
  Doublet_v.left_off_doublet lxb
;;

let basic_part_off_leftextended_by lxb =
  Doublet_v.right_off_doublet lxb
;;

let extension_off_leftextended_by lxb =
  let x_l = repeated_list_part_off_leftextended_by lxb in
  try List.hd x_l
  with Failure hd ->
    failwith "List_empty:lxb_v.extension_off_leftextended_by"
;;

let left_extend_repeated_list_by_one lxb = (* extension exists *)
  let x_l = repeated_list_part_off_leftextended_by lxb in
  let b = basic_part_off_leftextended_by lxb in
  let x = 
    try extension_off_leftextended_by lxb 
    with Failure "Repeated_list_empty:lxb_v.extension_off_leftextended_by" ->
      failwith "Repeated_list_empty:lxb_v.left_extend_repeated_list_by_one" 
  in
  make (x :: x_l) b
;;

let left_extend_basic_by_one ext lxb = (* basic case *)
    let b = basic_part_off_leftextended_by lxb in
    make_of_extension_of_int_of_basic ext 1 b 
;;

let count lxb =
  let x_l = repeated_list_part_off_leftextended_by lxb in
  List.length x_l
;;

(** {6 Iterating.} *)

let map fx fb lxb =
  let x_l = repeated_list_part_off_leftextended_by lxb in
  let b = basic_part_off_leftextended_by lxb in
  make (List.map fx x_l) (fb b) 
;;

let rec iter fx fb lxb =
  let x_l = repeated_list_part_off_leftextended_by lxb in
  let b = basic_part_off_leftextended_by lxb in
  List.iter fx x_l; fb b 
;;

(** {6 Querying.} *)

let is_basic lxb =
  let x_l = repeated_list_part_off_leftextended_by lxb in
  x_l = []
;;

(** {6 Naming} *)

let repeated_list_off_leftextended_by = Booted_list_v.list_off_booted_list;;

let flatten lxx =
  let xh_l = repeated_list_part_off_leftextended_by lxx in
  let lxb = basic_part_off_leftextended_by lxx in
  let xt_l = repeated_list_part_off_leftextended_by lxb in
  let b = basic_part_off_leftextended_by lxb in
  make (List.append xh_l xt_l) b
;;

let name nam_x nam_b lxb =
  let b = basic_part_off_leftextended_by lxb in
  let cnt = count lxb in
  if cnt = 0
  then
    Format.sprintf "x0%s" (nam_b b)  
  else
    let x = extension_off_leftextended_by lxb in
    Format.sprintf "%sr%i%s" (nam_x x) cnt (nam_b b)
;; 

let print prt_x prt_b ppf lxb =
  let b = basic_part_off_leftextended_by lxb in
  let cnt = count lxb in
  if cnt = 0
  then
    Format.fprintf ppf "Basic %a" prt_b b  
  else
    let x = extension_off_leftextended_by lxb in
    Format.fprintf ppf "%a Extended %i times by %a" 
      prt_b b cnt prt_x x
;; 


