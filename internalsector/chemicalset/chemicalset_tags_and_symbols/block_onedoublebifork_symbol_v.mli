(** {3 A Symbol for a Block_onedoublebifork.} *)

(** {6 Displaying.} *)

val name :
  Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting C_ds2 from Block_onedoublebifork.} *)

(* No Extraction from doublet c_ds2. *)

(** {6 Extracting N_ds2_1p from Block_onedoublebifork.} *)

(* No Extraction from doublet n_ds2_1p. *)

(** {6 Querying.} *)

(** {6 Querying C_ds2 in Block_onedoublebifork.} *)

(* No Query from c_ds2 0. *)

(** {6 Querying N_ds2_1p in Block_onedoublebifork.} *)

(* No Query from n_ds2_1p 0. *)

(** {6 Upgrading from C_ds2 to Block_onedoublebifork.} *)

val c_ds2 : Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol;;

(** {6 Upgrading from N_ds2_1p to Block_onedoublebifork.} *)

val n_ds2_1p : Block_onedoublebifork_symbol_t.block_onedoublebifork_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_onedoublebifork 12 January 2011. *)

