(** {3 A Symbol for a Molecule_linear_pentatomic.} *)

(** {6 Displaying.} *)

val name :
  Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Methane from Molecule_linear_pentatomic.} *)

(* No Extraction from doublet Methane. *)

(** {6 Querying.} *)

(** {6 Querying Methane in Molecule_linear_pentatomic.} *)

(* No Query from Methane 0. *)

(** {6 Upgrading from Methane to Molecule_linear_pentatomic.} *)

val methane : Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_linear_pentatomic 12 January 2011. *)

