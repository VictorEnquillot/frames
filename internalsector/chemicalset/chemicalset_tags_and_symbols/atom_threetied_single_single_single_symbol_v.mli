(** {3 A Symbol for a Atom_threetied_single_single_single.} *)

(** {6 Displaying.} *)

val name :
  Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting N_sss from Atom_threetied_single_single_single.} *)

(* No Extraction from doublet n_sss. *)

(** {6 Extracting Cl_sss from Atom_threetied_single_single_single.} *)

(* No Extraction from doublet cl_sss. *)

(** {6 Querying.} *)

(** {6 Querying N_sss in Atom_threetied_single_single_single.} *)

(* No Query from n_sss 0. *)

(** {6 Querying Cl_sss in Atom_threetied_single_single_single.} *)

(* No Query from cl_sss 0. *)

(** {6 Upgrading from N_sss to Atom_threetied_single_single_single.} *)

val n_sss : Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol;;

(** {6 Upgrading from Cl_sss to Atom_threetied_single_single_single.} *)

val cl_sss : Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_threetied_single_single_single 12 January 2011. *)

