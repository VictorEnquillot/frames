
val system : Au_system_t.au_system
;;
(* http://en.wikipedia.org/wiki/Hartree_energy
   eh = 4.359 744 17(75)e-18 J = 27.211 3845(23)
   eV = 2 Ry = 627.509 391 kcal/mol
*)
(* http://en.wikipedia.org/wiki/Atomic_units#Fundamental_units *)

(*
let print ppf fmt m = Format.fprintf ppf "@[<h>%(%f%) au_system@]" fmt m
;;
*)

val print : Format.formatter -> float ->
  unit
;;

val atomic_units_text : string list
;;

val physi_systemcal_quantities_au_system_text : string list
;;

val plank_units_text : string list
(* http://en.wikipedia.org/wiki/Planck_unit *)
