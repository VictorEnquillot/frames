(** {3 The functionalities for a Tie.} *)

let nam_mod = "Tie_v";;

(** {6 Modules.} *)


(** {6 Making.} *)

let make lft rgt = {
  Tie_t.left = lft;
  Tie_t.right = rgt;
}

let left_off_tie tie =
  tie.Tie_t.left
;;

let right_off_tie tie =
  tie.Tie_t.right
;;

(** {6 Naming} *)

let print print_elt ppf tie =
  let lft = left_off_tie tie in
  let rgt = right_off_tie tie in
  Format.fprintf ppf "{left = %a;@ right = %a}"
  print_elt lft
  print_elt rgt
;;

