(* {3 A sequential index for Any Entity} *)


type sequential_index =
  | Solus (* single *)
  | Cauda (* tail *)
  | Ordinal of Ordinal_p.ordinal
;;
