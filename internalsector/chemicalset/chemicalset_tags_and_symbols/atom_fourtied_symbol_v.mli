(** {3 A Symbol for a Atom_fourtied.} *)

(** {6 Displaying.} *)

val name :
  Atom_fourtied_symbol_t.atom_fourtied_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_fourtied_symbol_t.atom_fourtied_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting C_4s from Atom_fourtied.} *)

(* No Extraction from doublet c_4s. *)

(** {6 Extracting N_4s from Atom_fourtied.} *)

(* No Extraction from doublet n_4s. *)

(** {6 Extracting S_4s from Atom_fourtied.} *)

(* No Extraction from doublet s_4s. *)

(** {6 Extracting Xe_4s from Atom_fourtied.} *)

(* No Extraction from doublet xe_4s. *)

(** {6 Querying.} *)

(** {6 Querying C_4s in Atom_fourtied.} *)

(* No Query from c_4s 0. *)

(** {6 Querying N_4s in Atom_fourtied.} *)

(* No Query from n_4s 0. *)

(** {6 Querying S_4s in Atom_fourtied.} *)

(* No Query from s_4s 0. *)

(** {6 Querying Xe_4s in Atom_fourtied.} *)

(* No Query from xe_4s 0. *)

(** {6 Upgrading from C_4s to Atom_fourtied.} *)

val c_4s : Atom_fourtied_symbol_t.atom_fourtied_symbol;;

(** {6 Upgrading from N_4s to Atom_fourtied.} *)

val n_4s : Atom_fourtied_symbol_t.atom_fourtied_symbol;;

(** {6 Upgrading from S_4s to Atom_fourtied.} *)

val s_4s : Atom_fourtied_symbol_t.atom_fourtied_symbol;;

(** {6 Upgrading from Xe_4s to Atom_fourtied.} *)

val xe_4s : Atom_fourtied_symbol_t.atom_fourtied_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_fourtied 12 January 2011. *)

