(** {3 The functionalities for a Sextuor.} *)

let nam_mod = "Sextuor_v";;

(** {6 Modules.} *)


(** {6 Making.} *)
  
let make a b c d e f = 
  Sextuplet_v.make a b c d e f
;;

let make_of_trio_of_trio lft rgt = 
  let (a, b, c) = lft in
  let (d, e, f) = rgt in
  make a b c d e f 
;;

let make_of_duo_of_duo_of_duo lft mid rgt =
  let (a, b) = lft in
  let (c, d) = mid in
  let (e, f) = rgt in
  make a b c d e f 
;;

(** {6 Extracting.} *)

let left_off_sextuor sxu =
  let (a, b, c, d, e, f) = sxu in
  a
;;
let first_off_sextuor = left_off_sextuor;;

let right_off_sextuor sxu =
  let (a, b, c, d, e, f) = sxu in
  f
;;
let last_off_sextuor = right_off_sextuor;;

let left_duo_off_sextuor sxu =
  let (a, b, c, d, e, f) = sxu in
  (a, b)
;;

let middle_duo_off_sextuor sxu =
  let (a, b, c, d, e, f) = sxu in
  (c, d)
;;

let right_duo_off_sextuor sxu =
  let (a, b, c, d, e, f) = sxu in
  (e, f)
;;

let left_trio_off_sextuor sxu =
  let (a, b, c, d, e, f) = sxu in
  (a, b, c)
;;

let right_trio_off_sextuor sxu =
  let (a, b, c, d, e, f) = sxu in
  (d, e, f)
;;

let duo_trio_off_sextuor sxu =
  let lft = left_duo_off_sextuor sxu in
  let mid = middle_duo_off_sextuor sxu in
  let rgt = right_duo_off_sextuor sxu in
  Trio_v.make lft mid rgt
;;

let trio_duo_off_sextuor sxu =
  let lft = left_trio_off_sextuor sxu in
  let rgt = right_trio_off_sextuor sxu in
  Duo_v.make lft rgt
;;

(** {6 Modifying.} *)

let map f_ sxu =
  let (a, b, c, d, e, f) = sxu in
  make (f_ a) (f_ b) (f_ c) (f_ d) (f_ e) (f_ f)
;;
 
let iter f_ sxu =
  let (a, b, c, d, e, f) = sxu in
  (f_ a); (f_ b); (f_ c); (f_ d); (f_ e); (f_ f)
;;
 
let compare cmp sxu_1 sxu_2 =
  let duo_1 = trio_duo_off_sextuor sxu_1 in
  let duo_2 = trio_duo_off_sextuor sxu_2 in
  Duo_v.compare 
    (Trio_v.compare cmp) 
    duo_1 duo_2
;;
 
(** {6 Naming} *)

let name nam sxu =
  let (a, b, c, d, e, f) = sxu in
  Format.sprintf "(%s,%s,%s,%s,%s,%s)"
  (nam a) (nam b) (nam c) (nam d) (nam e) (nam f) 
;;

let print prt ppf sxu =
  let (a, b, c, d, e, f) = sxu in
  Format.fprintf ppf "(%a,%a,%a,%a,%a,%a)"
  prt a prt b prt c prt d prt e prt f
;;


