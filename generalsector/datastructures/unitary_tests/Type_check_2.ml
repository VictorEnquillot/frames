type t =
  | A of a
  | B of a
and a =
  | A1
  | A2
;;

(*
let print_a ppf = function
  | A1 -> Format.fprintf ppf "A1"
  | A2 -> Format.fprintf ppf "A2"
;;

let print_b ppf = function
  | A1 -> Format.fprintf ppf "A1"
  | B2 -> Format.fprintf ppf "B2"
;;

let print ppf = function
  | A x -> print_a ppf x
  | B x -> print_b ppf x
;;
*)
