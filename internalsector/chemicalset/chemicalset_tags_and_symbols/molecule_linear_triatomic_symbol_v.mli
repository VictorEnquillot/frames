(** {3 A Symbol for a Molecule_linear_triatomic.} *)

(** {6 Displaying.} *)

val name :
  Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Hydrogensulfide from Molecule_linear_triatomic.} *)

(* No Extraction from doublet Hydrogensulfide. *)

(** {6 Extracting Water from Molecule_linear_triatomic.} *)

(* No Extraction from doublet Water. *)

(** {6 Querying.} *)

(** {6 Querying Hydrogensulfide in Molecule_linear_triatomic.} *)

(* No Query from Hydrogensulfide 0. *)

(** {6 Querying Water in Molecule_linear_triatomic.} *)

(* No Query from Water 0. *)

(** {6 Upgrading from Hydrogensulfide to Molecule_linear_triatomic.} *)

val hydrogensulfide : Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol;;

(** {6 Upgrading from Water to Molecule_linear_triatomic.} *)

val water : Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_linear_triatomic 12 January 2011. *)

