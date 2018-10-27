(*
type t =
  | A of a
  | B of b
and a =
  | A1
  | A2
and b =
  | A1   <= fault
  | B2
;;
*)
(** Corrected in OCaml 3.12 *)

type t =
  | A of a
  | B of b
and a =
  | A1
  | A2
and b =
  | B1
  | B2
;;

let print_a ppf = function
  | A1 -> Format.fprintf ppf "A1"
  | A2 -> Format.fprintf ppf "A2"
;;

let print_b ppf = function
  | B1 -> Format.fprintf ppf "B1"
  | B2 -> Format.fprintf ppf "B2"
;;

let print ppf = function
  | A x -> print_a ppf x
  | B x -> print_b ppf x
;;

