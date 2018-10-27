(*
#use "type_a_b_u_any.ml";; 


*)

type a =
  | A1 
  | A2
;;

type b =
  | B1 
  | B2
;;

type t =
  | Ta of a
  | Tb of b
;;

type u = (a * b);;

let a1 = A1;;
let a2 = A2;;

let b1 = B1;;
let b2 = B2;;

let t_a1 = Ta A1;;
let t_a2 = Ta A2;;

let t_b1 = Tb B1;;
let t_b2 = Tb B2;;

let u_ab = (a1, b1);;

