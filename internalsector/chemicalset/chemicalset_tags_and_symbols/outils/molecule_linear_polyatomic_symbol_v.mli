(** {3 A Symbol for a Molecule_linear_polyatomic.} *)


let name :
  Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol ->
    string
;;


val print : Format.Formatter ->
  Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val ethane : Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol;;

val propane : Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol;;

val butane : Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol;;



(** created by ./generator molecule_linear_polyatomic v symbol at 9:28 26 Apr 2011. *)



