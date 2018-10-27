(** {3 A Symbol for a Atom_twotied_double_double.} *)

(** {6 Displaying.} *)

val name :
  Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting C_dd from Atom_twotied_double_double.} *)

(* No Extraction from doublet c_dd. *)

(** {6 Extracting S_dd from Atom_twotied_double_double.} *)

(* No Extraction from doublet s_dd. *)

(** {6 Querying.} *)

(** {6 Querying C_dd in Atom_twotied_double_double.} *)

(* No Query from c_dd 0. *)

(** {6 Querying S_dd in Atom_twotied_double_double.} *)

(* No Query from s_dd 0. *)

(** {6 Upgrading from C_dd to Atom_twotied_double_double.} *)

val c_dd : Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol;;

(** {6 Upgrading from S_dd to Atom_twotied_double_double.} *)

val s_dd : Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_twotied_double_double 12 January 2011. *)

