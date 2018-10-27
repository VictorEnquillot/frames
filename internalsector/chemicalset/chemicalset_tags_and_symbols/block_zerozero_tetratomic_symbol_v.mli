(** {3 A Symbol for a Block_zerozero_tetratomic.} *)

(** {6 Displaying.} *)

val name :
  Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol ->
    string
;;

val print : Format.formatter ->
  Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Cho2_1m from Block_zerozero_tetratomic.} *)

(* No Extraction from doublet cho2_1m. *)

(** {6 Extracting Nh2 from Block_zerozero_tetratomic.} *)

(* No Extraction from doublet nh2. *)

(** {6 Querying.} *)

(** {6 Querying Cho2_1m in Block_zerozero_tetratomic.} *)

(* No Query from cho2_1m 0. *)

(** {6 Querying Nh2 in Block_zerozero_tetratomic.} *)

(* No Query from nh2 0. *)

(** {6 Upgrading from Cho2_1m to Block_zerozero_tetratomic.} *)

val cho2_1m : Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol;;

(** {6 Upgrading from Nh2 to Block_zerozero_tetratomic.} *)

val nh2 : Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_zerozero_tetratomic 12 January 2011. *)

