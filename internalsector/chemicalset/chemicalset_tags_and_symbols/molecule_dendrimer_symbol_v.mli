(** {3 A Symbol for a Molecule_dendrimer.} *)

(** {6 Displaying.} *)

val name :
  Molecule_dendrimer_symbol_t.molecule_dendrimer_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_dendrimer_symbol_t.molecule_dendrimer_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Fake_d2 from Molecule_dendrimer.} *)

(* No Extraction from doublet Fake_d2. *)

(** {6 Querying.} *)

(** {6 Querying Fake_d2 in Molecule_dendrimer.} *)

(* No Query from Fake_d2 0. *)

(** {6 Upgrading from Fake_d2 to Molecule_dendrimer.} *)

val fake_d2 : Molecule_dendrimer_symbol_t.molecule_dendrimer_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_dendrimer 12 January 2011. *)

