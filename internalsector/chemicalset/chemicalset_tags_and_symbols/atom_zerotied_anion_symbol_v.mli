(** {3 A Symbol for a Atom_zerotied_anion.} *)

(** {6 Displaying.} *)

val name :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

val atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol
;;

(** {9 Extracting F_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

(* No Extraction from doublet f_1m. *)

(** {9 Extracting H_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

(* No Extraction from doublet h_1m. *)

(** {9 Extracting Cl_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

(* No Extraction from doublet cl_1m. *)

(** {9 Extracting Br_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

(* No Extraction from doublet br_1m. *)

(** {9 Extracting I_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion.} *)

(* No Extraction from doublet i_1m. *)

(** {6 Extracting Atom_zerotied_anion_minus_two from Atom_zerotied_anion.} *)

val atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol
;;

(** {9 Extracting O_2m from Atom_zerotied_anion_minus_two from Atom_zerotied_anion.} *)

(* No Extraction from doublet o_2m. *)

(** {9 Extracting S_2m from Atom_zerotied_anion_minus_two from Atom_zerotied_anion.} *)

(* No Extraction from doublet s_2m. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

val is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
  bool
;;

(** {9 Querying F_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

(* No Query from f_1m 0. *)

(** {9 Querying H_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

(* No Query from h_1m 0. *)

(** {9 Querying Cl_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

(* No Query from cl_1m 0. *)

(** {9 Querying Br_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

(* No Query from br_1m 0. *)

(** {9 Querying I_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion.} *)

(* No Query from i_1m 0. *)

(** {6 Querying Atom_zerotied_anion_minus_two in Atom_zerotied_anion.} *)

val is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
  bool
;;

(** {9 Querying O_2m in Atom_zerotied_anion_minus_two in Atom_zerotied_anion.} *)

(* No Query from o_2m 0. *)

(** {9 Querying S_2m in Atom_zerotied_anion_minus_two in Atom_zerotied_anion.} *)

(* No Query from s_2m 0. *)

(** {6 Upgrading from Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

val atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol
;;

(** {9 Upgrading from F_1m through Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

val f_1m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

(** {9 Upgrading from H_1m through Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

val h_1m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

(** {9 Upgrading from Cl_1m through Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

val cl_1m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

(** {9 Upgrading from Br_1m through Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

val br_1m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

(** {9 Upgrading from I_1m through Atom_zerotied_anion_minus_one to Atom_zerotied_anion.} *)

val i_1m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

(** {6 Upgrading from Atom_zerotied_anion_minus_two to Atom_zerotied_anion.} *)

val atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol
;;

(** {9 Upgrading from O_2m through Atom_zerotied_anion_minus_two to Atom_zerotied_anion.} *)

val o_2m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

(** {9 Upgrading from S_2m through Atom_zerotied_anion_minus_two to Atom_zerotied_anion.} *)

val s_2m : Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_zerotied_anion 12 January 2011. *)

