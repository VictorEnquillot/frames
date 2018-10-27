(** {3 A Symbol for a Atom_zerotied_cation_plus_three.} *)

(** {6 Displaying.} *)

val name :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Fe_3p from Atom_zerotied_cation_plus_three.} *)

(* No Extraction from doublet fe_3p. *)

(** {6 Extracting Ni_3p from Atom_zerotied_cation_plus_three.} *)

(* No Extraction from doublet ni_3p. *)

(** {6 Querying.} *)

(** {6 Querying Fe_3p in Atom_zerotied_cation_plus_three.} *)

(* No Query from fe_3p 0. *)

(** {6 Querying Ni_3p in Atom_zerotied_cation_plus_three.} *)

(* No Query from ni_3p 0. *)

(** {6 Upgrading from Fe_3p to Atom_zerotied_cation_plus_three.} *)

val fe_3p : Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol;;

(** {6 Upgrading from Ni_3p to Atom_zerotied_cation_plus_three.} *)

val ni_3p : Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_zerotied_cation_plus_three 12 January 2011. *)

