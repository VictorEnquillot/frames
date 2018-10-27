(** {3 The functionalities for a Pair.} *)

let nam_mod = "Pair_v";;

(** {6 Modules.} *)


(** {6 Making.} *)
  
let make lft rgt = 
  (lft, rgt)
;;

let left_off_pair par =
  let (lft, rgt) = par in
  lft
;;

let right_off_pair par =
  let (lft, rgt) = par in
rgt
;;

(** {6 Iterating.} *)

let map f par =
  let lft = left_off_pair par in
  let rgt = right_off_pair par in
  make (f lft) (f rgt)
;;
 
let map2 f par_1 par_2 =
  let lft_1 = left_off_pair par_1 in
  let rgt_1 = right_off_pair par_1 in
  let lft_2 = left_off_pair par_2 in
  let rgt_2 = right_off_pair par_2 in
  make (f lft_1 lft_2) (f rgt_1 rgt_2)
;;
 
(** {6 Naming} *)

let list_of_pair par =
  let lft = left_off_pair par in
  let rgt = right_off_pair par in
  [lft; rgt]
;;

let print prt_e ppf par =
  let lft = left_off_pair par in
  let rgt = right_off_pair par in
  Format.fprintf ppf "(%a@ %a)"
  prt_e lft
  prt_e rgt
;;

let name nam_e par =
  let lft = left_off_pair par in
  let rgt = right_off_pair par in
  Format.sprintf "(%s,%s)"
  (nam_e lft)
  (nam_e rgt)
;;

