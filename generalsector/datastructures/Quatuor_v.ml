(** {3 The functionalities for a Quatuor.} *)

let nam_mod = "Quatuor_v";;

(** {6 Making.} *)
  
let make lft mil mir rgt = 
  (lft, mil, mir, rgt)
;;

let make_of_pair_of_pair pal par =
  let lft = Pair_v.left_off_pair pal in
  let mil = Pair_v.right_off_pair pal in
  let mir = Pair_v.left_off_pair pal in
  let rgt = Pair_v.right_off_pair pal in
  make lft mil mir rgt
;;

let make_of_trio_of_element tri rgt =
  let lft = Trio_v.left_off_trio tri in
  let mil = Trio_v.middle_off_trio tri in
  let mir = Trio_v.right_off_trio tri in
  make lft mil mir rgt
;;

let make_of_element_of_trio lft tri =
  let mil = Trio_v.left_off_trio tri in
  let mir = Trio_v.middle_off_trio tri in
  let rgt = Trio_v.right_off_trio tri in
  make lft mil mir rgt
;;

(** {6 Extracting.} *)

let left_off_quatuor qua =
  let (lft, _, _, _) = qua in
  lft
;;
let first_off_quatuor = left_off_quatuor;;

let middleleft_off_quatuor qua =
  let (_, mil, _, _) = qua in
  mil
;;
let second_off_quatuor = middleleft_off_quatuor;;

let middleright_off_quatuor qua =
  let (_, _, mir, _) = qua in
  mir
;;
let third_off_quatuor = middleright_off_quatuor;;

let right_off_quatuor qua =
  let (_, _, _, rgt) = qua in
  rgt
;;

let fourth_off_quatuor = right_off_quatuor;;
let last_off_quatuor = right_off_quatuor;;

let left_pair_off_quatuor qua =
  let lft = left_off_quatuor qua in
  let mil = middleleft_off_quatuor qua in
  Pair_v.make lft mil
;;

let right_pair_off_quatuor qua =
  let mir = middleright_off_quatuor qua in
  let rgt = right_off_quatuor qua in
  Pair_v.make mir rgt 
;;

let quadruplet_of_quatuor f g h i qua =
  let lef = left_off_quatuor qua in 
  let mil = middleleft_off_quatuor qua in
  let mir = middleright_off_quatuor qua in
  let rig = right_off_quatuor qua in 
  Quadruplet_v.make (f lef) (g mil) (h mir) (i rig)
;;

let list_of_quatuor qua =
  let lft = left_off_quatuor qua in
  let mil = middleleft_off_quatuor qua in
  let mir = middleright_off_quatuor qua in
  let rgt = right_off_quatuor qua in
  [lft; mil; mir; rgt]
;;

let quatuor_of_list lis =
  if List.length lis <> 4
  then failwith "Not_a_quatuor:Quatuor_v.quatuor_of_list"
  else make (List.nth lis 0) (List.nth lis 1) (List.nth lis 2) (List.nth lis 3)
;;

(** {6 Modifying.} *)

let compare cmp tpl_1 tpl_2 =
  Utilities_v.not_yet_implemented "datastructures" "compare" 
(*
  let lft_1 = left_off_quatuor tpl_1 in
  let lft_2 = left_off_quatuor tpl_2 in
  let mil_1 = middleleft_off_quatuor tpl_1 in
  let mil_2 = middleleft_off_quatuor tpl_2 in
  let mir_1 = middleright_off_quatuor tpl_1 in
  let mir_2 = middleright_off_quatuor tpl_2 in
  let rgt_1 = right_off_quatuor tpl_1 in
  let rgt_2 = right_off_quatuor tpl_2 in
  (cmp lft_1 lft_2) + 3 * (cmp mil_1 mil_2) + 3 * (cmp mir_1 mir_2) + 5 * (cmp rgt_1 rgt_2)
*)
;;
 
let map f qua =
  let lft = left_off_quatuor qua in
  let mil = middleleft_off_quatuor qua in
  let mir = middleright_off_quatuor qua in
  let rgt = right_off_quatuor qua in
  make (f lft) (f mil) (f mir) (f rgt)
;;

let map2 f qua_1 qua_2  =
  let lft_1 = left_off_quatuor qua_1 in
  let mil_1 = middleleft_off_quatuor qua_1 in
  let mir_1 = middleright_off_quatuor qua_1 in
  let rgt_1 = right_off_quatuor qua_1 in

  let lft_2 = left_off_quatuor qua_2 in
  let mil_2 = middleleft_off_quatuor qua_2 in
  let mir_2 = middleright_off_quatuor qua_2 in
  let rgt_2 = right_off_quatuor qua_2 in

  make (f lft_1 lft_2) (f mil_1 mil_2) (f mir_1 mir_2) (f rgt_1 rgt_2)
;;

let iter f_l qua =
  let lft = left_off_quatuor qua in
  let mil = middleleft_off_quatuor qua in
  let mir = middleright_off_quatuor qua in
  let rgt = right_off_quatuor qua in
   (f_l lft) ; (f_l mil) ; (f_l mir) ; (f_l rgt)
;;
 
(** {6 Naming} *)

let name nam_l qua =
  let lft = left_off_quatuor qua in
  let mil = middleleft_off_quatuor qua in
  let mir = middleright_off_quatuor qua in
  let rgt = right_off_quatuor qua in
  Format.sprintf "(%s,%s,%s,%s)"
  (nam_l lft)
  (nam_l mil)
  (nam_l mir)
  (nam_l rgt)
;;

let print prt_l ppf qua =
  let lft = left_off_quatuor qua in
  let mil = middleleft_off_quatuor qua in
  let mir = middleright_off_quatuor qua in
  let rgt = right_off_quatuor qua in
  Format.fprintf ppf "(%a, %a, %a, %a)"
  prt_l lft
  prt_l mil
  prt_l mir
  prt_l rgt
;;


