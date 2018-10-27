(** {3 A Symbol for a Bond.} *)

(** {6 Displaying.} *)

val name :
  Bond_symbol_t.bond_symbol ->
    string
;;

val print : Format.formatter ->
  Bond_symbol_t.bond_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Bond_covalent from Bond.} *)

(* No Extraction from doublet bond_covalent. *)

(** {6 Extracting Bond_hydrogen from Bond.} *)

(* No Extraction from doublet bond_hydrogen. *)

(** {6 Extracting Bond_ionic from Bond.} *)

(* No Extraction from doublet bond_ionic. *)

(** {6 Querying.} *)

(** {6 Querying Bond_covalent in Bond.} *)

(* No Query from bond_covalent 0. *)

(** {6 Querying Bond_hydrogen in Bond.} *)

(* No Query from bond_hydrogen 0. *)

(** {6 Querying Bond_ionic in Bond.} *)

(* No Query from bond_ionic 0. *)

(** {6 Upgrading from Bond_covalent to Bond.} *)

val bond_covalent : Bond_symbol_t.bond_symbol;;

(** {6 Upgrading from Bond_hydrogen to Bond.} *)

val bond_hydrogen : Bond_symbol_t.bond_symbol;;

(** {6 Upgrading from Bond_ionic to Bond.} *)

val bond_ionic : Bond_symbol_t.bond_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh bond 12 January 2011. *)

