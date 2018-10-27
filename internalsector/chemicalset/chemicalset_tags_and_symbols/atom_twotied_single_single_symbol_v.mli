(** {3 A Symbol for a Atom_twotied_single_single.} *)

(** {6 Displaying.} *)

val name :
  Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Cl_ss from Atom_twotied_single_single.} *)

(* No Extraction from doublet cl_ss. *)

(** {6 Extracting F_ss from Atom_twotied_single_single.} *)

(* No Extraction from doublet f_ss. *)

(** {6 Extracting H_ss from Atom_twotied_single_single.} *)

(* No Extraction from doublet h_ss. *)

(** {6 Querying.} *)

(** {6 Querying Cl_ss in Atom_twotied_single_single.} *)

(* No Query from cl_ss 0. *)

(** {6 Querying F_ss in Atom_twotied_single_single.} *)

(* No Query from f_ss 0. *)

(** {6 Querying H_ss in Atom_twotied_single_single.} *)

(* No Query from h_ss 0. *)

(** {6 Upgrading from Cl_ss to Atom_twotied_single_single.} *)

val cl_ss : Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol;;

(** {6 Upgrading from F_ss to Atom_twotied_single_single.} *)

val f_ss : Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol;;

(** {6 Upgrading from H_ss to Atom_twotied_single_single.} *)

val h_ss : Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_twotied_single_single 12 January 2011. *)

