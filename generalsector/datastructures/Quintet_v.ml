(** {3 The functionalities for a Quintet.} *)

let nam_mod = "Quintet_v";;

(** {6 Making.} *)
  
let make lft mil mid mir rgt = 
  (lft, mil, mid, mir, rgt)
;;

let make_of_duo_of_triplet dou_1 tri_2 =
  let (lef, mil) = dou_1 in
  let (mid, mir, rig) = tri_2 in
  make lef mil mid mir rig
;;

let make_of_left_of_quatuor lef qua =
  let (mil, mid, mir, rig) = qua in
  make lef mil mid mir rig
;;

let make_of_quatuor_of_right qua rig =
  let (lef, mil, mid, mir) = qua in
  make lef mil mid mir rig
;;

(** {6 Extracting.} *)

let left_off_quintet qui =
  let (lef, _, _, _, _) = qui in
  lef
;;
let first_off_quintet = left_off_quintet;;

let middle_left_off_quintet qui =
  let (_, mil, _, _, _) = qui in
  mil
;;
let second_off_quintet = middle_left_off_quintet;;

let middle_off_quintet qui =
  let (_, _, mim, _, _) = qui in
  mim
;;
let third_off_quintet = middle_left_off_quintet;;

let middle_right_off_quintet qui =
  let (_, _, _, mir, _) = qui in
  mir
;;
let fourth_off_quintet = middle_right_off_quintet;;

let right_off_quintet qui =
  let (_, _, _, _, rig) = qui in
  rig
;;

let last_off_quintet = right_off_quintet;;

let fith_off_quintet = right_off_quintet;;

let left_duo_off_quintet qui =
  let lef = left_off_quintet qui in
  let mil = middle_left_off_quintet qui in
  Duo_v.make lef mil 
;;

let list_off_quintet qua =
  let lft = left_off_quintet qua in
  let mil = middle_left_off_quintet qua in
  let mid = middle_off_quintet qua in
  let mir = middle_right_off_quintet qua in
  let rgt = right_off_quintet qua in
  [lft; mil; mid; mir; rgt]
;;

let quintet_off_list lis =
  if List.length lis = 5 
  then
    begin
      let lft = List.nth lis 0 in
      let mil = List.nth lis 1 in
      let mid = List.nth lis 2 in
      let mir = List.nth lis 3 in
      let rgt = List.nth lis 4 in
      make lft mil mid mir rgt
    end
  else
    failwith "Not_a_five_elements_list:Quintet_v.quintet_off_list"
;;

(** {6 Iterating.} *)

let map f qui =
  let lef = left_off_quintet qui in
  let mil = middle_left_off_quintet qui in
  let mim = middle_off_quintet qui in
  let mir = middle_right_off_quintet qui in
  let rig = right_off_quintet qui in
  make (f lef) (f mil) (f mim) (f mir) (f rig)
;;
 
let iter f qui =
  let lef = left_off_quintet qui in
  let mil = middle_left_off_quintet qui in
  let mim = middle_off_quintet qui in
  let mir = middle_right_off_quintet qui in
  let rig = right_off_quintet qui in
  (f lef) ; (f mil) ; (f mim); (f mir) ; (f rig)
;;
 
(** {6 Comparing.} *)
 
let compare cmp qui_a qui_b =
  let lef_a = left_off_quintet qui_a in
  let lef_b = left_off_quintet qui_b in
  let mil_a = middle_left_off_quintet qui_a in
  let mil_b = middle_left_off_quintet qui_b in
  let mim_a = middle_off_quintet qui_a in
  let mim_b = middle_off_quintet qui_b in
  let mir_a = middle_right_off_quintet qui_a in
  let mir_b = middle_right_off_quintet qui_b in
  let rig_a = right_off_quintet qui_a in
  let rig_b = right_off_quintet qui_b in
  (cmp lef_a lef_b) + 
    (3 * (cmp mil_a mil_b)) + 
    (17 * (cmp mim_a mim_b)) + 
    (37 * (cmp mir_a mir_b)) + 
    (47 * (cmp rig_a rig_b))
;;

(** {6 Naming} *)

let name nam qui =
  let lef = left_off_quintet qui in
  let mil = middle_left_off_quintet qui in
  let mid = middle_off_quintet qui in
  let mir = middle_right_off_quintet qui in
  let rig = right_off_quintet qui in
  Format.sprintf "(%s,%s,%s,%s,%s)"
  (nam lef)
  (nam mil)
  (nam mid)
  (nam mir)
  (nam rig)
;;

let name_capitalized nam qui =
  let lef = left_off_quintet qui in
  let mil = middle_left_off_quintet qui in
  let mid = middle_off_quintet qui in
  let mir = middle_right_off_quintet qui in
  let rig = right_off_quintet qui in
  Format.sprintf "(%s, %s, %s, %s, %s)"
  (String.capitalize (nam lef))
  (String.capitalize (nam mil))
  (String.capitalize (nam mid))
  (String.capitalize (nam mir))
  (String.capitalize (nam rig))
;;
