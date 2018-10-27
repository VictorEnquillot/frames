(** {3 A Symbol for a Nucleoside.} *)


let name :
  Nucleoside_symbol_t.nucleoside_symbol ->
    string
;;


val print : Format.Formatter ->
  Nucleoside_symbol_t.nucleoside_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val ribonucleoside : Nucleoside_symbol_t.nucleoside_symbol;;

val deoxyribonucleoside : Nucleoside_symbol_t.nucleoside_symbol;;



(** created by ./generator nucleoside v symbol at 9:28 26 Apr 2011. *)



