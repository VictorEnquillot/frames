(** {3 A Symbol for a Molecule_linear_polyatomic.} *)

(** {6 Displaying.} *)

val name :
  Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Glycine from Molecule_linear_polyatomic.} *)

(* No Extraction from doublet glycine. *)

(** {6 Querying.} *)

(** {6 Querying Glycine in Molecule_linear_polyatomic.} *)

(* No Query from glycine 0. *)

(** {6 Upgrading from Glycine to Molecule_linear_polyatomic.} *)

val glycine : Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_linear_polyatomic 12 January 2011. *)

