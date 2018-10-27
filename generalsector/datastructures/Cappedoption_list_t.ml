(** {3 A Cappedoption_list Data_structure.} *)

(**
   c * -l-...-l-
   c is `c option
*)


type ('c, 'l) cappedoption_list = ('c option, 'l list) Doublet_t.doublet
;;
