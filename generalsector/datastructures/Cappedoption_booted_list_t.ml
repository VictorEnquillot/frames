(** {3 A Cappedoption_booted_list.} *)

(**
   h * -l--...-l--b
   h is `h option
*)


type ('h, 'l, 'b) cappedoption_booted_list = ('h option, ('l, 'b) Booted_list_t.booted_list ) Doublet_t.doublet
;;
