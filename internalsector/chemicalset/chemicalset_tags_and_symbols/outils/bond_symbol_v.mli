(** {3 A Symbol for a Bond.} *)


let name :
  Bond_symbol_t.bond_symbol ->
    string
;;


val print : Format.Formatter ->
  Bond_symbol_t.bond_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val bond_covalent : Bond_symbol_t.bond_symbol;;

val bond_hydrogen : Bond_symbol_t.bond_symbol;;

val bond_ionic : Bond_symbol_t.bond_symbol;;



(** created by ./generator bond v symbol at 9:28 26 Apr 2011. *)



