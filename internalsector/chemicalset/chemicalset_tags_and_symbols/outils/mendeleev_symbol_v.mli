(** {3 A Symbol for a Mendeleev.} *)


let name :
  Mendeleev_symbol_t.mendeleev_symbol ->
    string
;;


val print : Format.Formatter ->
  Mendeleev_symbol_t.mendeleev_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val hand : Mendeleev_symbol_t.mendeleev_symbol;;



(** created by ./generator mendeleev v symbol at 9:28 26 Apr 2011. *)



