(** {3 A Symbol for a Molecule_bridged.} *)


let name :
  Molecule_bridged_symbol_t.molecule_bridged_symbol ->
    string
;;


val print : Format.Formatter ->
  Molecule_bridged_symbol_t.molecule_bridged_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val Fake_b : Molecule_bridged_symbol_t.molecule_bridged_symbol;;

val Benzene : Molecule_bridged_symbol_t.molecule_bridged_symbol;;

val Phenol : Molecule_bridged_symbol_t.molecule_bridged_symbol;;

val Pyrrole : Molecule_bridged_symbol_t.molecule_bridged_symbol;;



(** created by ./generator molecule_bridged v symbol at 9:28 26 Apr 2011. *)



