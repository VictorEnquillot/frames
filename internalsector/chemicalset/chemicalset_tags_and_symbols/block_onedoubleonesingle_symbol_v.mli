(** {3 A Symbol for a Block_onedoubleonesingle.} *)

(** {6 Displaying.} *)

val name :
  Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Ch_ds from Block_onedoubleonesingle.} *)

(* No Extraction from doublet ch_ds. *)

(** {6 Extracting N_ds from Block_onedoubleonesingle.} *)

(* No Extraction from doublet n_ds. *)

(** {6 Extracting Nh_ds_1p from Block_onedoubleonesingle.} *)

(* No Extraction from doublet nh_ds_1p. *)

(** {6 Querying.} *)

(** {6 Querying Ch_ds in Block_onedoubleonesingle.} *)

(* No Query from ch_ds 0. *)

(** {6 Querying N_ds in Block_onedoubleonesingle.} *)

(* No Query from n_ds 0. *)

(** {6 Querying Nh_ds_1p in Block_onedoubleonesingle.} *)

(* No Query from nh_ds_1p 0. *)

(** {6 Upgrading from Ch_ds to Block_onedoubleonesingle.} *)

val ch_ds : Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol;;

(** {6 Upgrading from N_ds to Block_onedoubleonesingle.} *)

val n_ds : Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol;;

(** {6 Upgrading from Nh_ds_1p to Block_onedoubleonesingle.} *)

val nh_ds_1p : Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_onedoubleonesingle 12 January 2011. *)

