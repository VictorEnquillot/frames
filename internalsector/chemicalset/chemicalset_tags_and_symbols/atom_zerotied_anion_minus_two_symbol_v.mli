(** {3 A Symbol for a Atom_zerotied_anion_minus_two.} *)

(** {6 Displaying.} *)

val name :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting O_2m from Atom_zerotied_anion_minus_two.} *)

(* No Extraction from doublet o_2m. *)

(** {6 Extracting S_2m from Atom_zerotied_anion_minus_two.} *)

(* No Extraction from doublet s_2m. *)

(** {6 Querying.} *)

(** {6 Querying O_2m in Atom_zerotied_anion_minus_two.} *)

(* No Query from o_2m 0. *)

(** {6 Querying S_2m in Atom_zerotied_anion_minus_two.} *)

(* No Query from s_2m 0. *)

(** {6 Upgrading from O_2m to Atom_zerotied_anion_minus_two.} *)

val o_2m : Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol;;

(** {6 Upgrading from S_2m to Atom_zerotied_anion_minus_two.} *)

val s_2m : Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_zerotied_anion_minus_two 12 January 2011. *)

