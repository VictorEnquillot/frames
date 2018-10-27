(** {3 A Symbol for a Molecule_linear_tetratomic.} *)

(** {6 Displaying.} *)

val name :
  Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Ammonia from Molecule_linear_tetratomic.} *)

(* No Extraction from doublet Ammonia. *)

(** {6 Querying.} *)

(** {6 Querying Ammonia in Molecule_linear_tetratomic.} *)

(* No Query from Ammonia 0. *)

(** {6 Upgrading from Ammonia to Molecule_linear_tetratomic.} *)

val ammonia : Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_linear_tetratomic 12 January 2011. *)

