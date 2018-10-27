(** {3 A Symbol for a Molecule_bridged.} *)

(** {6 Displaying.} *)

val name :
  Molecule_bridged_symbol_t.molecule_bridged_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_bridged_symbol_t.molecule_bridged_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Fake_b from Molecule_bridged.} *)

(* No Extraction from doublet Fake_b. *)

(** {6 Extracting Benzene from Molecule_bridged.} *)

(* No Extraction from doublet Benzene. *)

(** {6 Extracting Phenol from Molecule_bridged.} *)

(* No Extraction from doublet Phenol. *)

(** {6 Extracting Pyrrole from Molecule_bridged.} *)

(* No Extraction from doublet Pyrrole. *)

(** {6 Querying.} *)

(** {6 Querying Fake_b in Molecule_bridged.} *)

(* No Query from Fake_b 0. *)

(** {6 Querying Benzene in Molecule_bridged.} *)

(* No Query from Benzene 0. *)

(** {6 Querying Phenol in Molecule_bridged.} *)

(* No Query from Phenol 0. *)

(** {6 Querying Pyrrole in Molecule_bridged.} *)

(* No Query from Pyrrole 0. *)

(** {6 Upgrading from Fake_b to Molecule_bridged.} *)

val fake_b : Molecule_bridged_symbol_t.molecule_bridged_symbol;;

(** {6 Upgrading from Benzene to Molecule_bridged.} *)

val benzene : Molecule_bridged_symbol_t.molecule_bridged_symbol;;

(** {6 Upgrading from Phenol to Molecule_bridged.} *)

val phenol : Molecule_bridged_symbol_t.molecule_bridged_symbol;;

(** {6 Upgrading from Pyrrole to Molecule_bridged.} *)

val pyrrole : Molecule_bridged_symbol_t.molecule_bridged_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_bridged 12 January 2011. *)

