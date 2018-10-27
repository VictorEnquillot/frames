(** {3 A Symbol for a Molecule_linear_triatomic.} *)


let name :
  Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol ->
    string
;;


val print : Format.Formatter ->
  Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol ->
    unit
;;


(** {6 Extracting.} *)


(** {6 Querying.} *)


(** {6 Upgrading.} *)

val hydrogensulfide : Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol;;

val water : Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol;;



(** created by ./generator molecule_linear_triatomic v symbol at 9:28 26 Apr 2011. *)



