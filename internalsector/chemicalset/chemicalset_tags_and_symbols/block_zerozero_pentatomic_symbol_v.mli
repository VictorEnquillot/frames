(** {3 A Symbol for a Block_zerozero_pentatomic.} *)

(** {6 Displaying.} *)

val name :
  Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol ->
    string
;;

val print : Format.formatter ->
  Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Ch4_zz from Block_zerozero_pentatomic.} *)

(* No Extraction from doublet ch4_zz. *)

(** {6 Extracting Nh4_zz_1p from Block_zerozero_pentatomic.} *)

(* No Extraction from doublet nh4_zz_1p. *)

(** {6 Querying.} *)

(** {6 Querying Ch4_zz in Block_zerozero_pentatomic.} *)

(* No Query from ch4_zz 0. *)

(** {6 Querying Nh4_zz_1p in Block_zerozero_pentatomic.} *)

(* No Query from nh4_zz_1p 0. *)

(** {6 Upgrading from Ch4_zz to Block_zerozero_pentatomic.} *)

val ch4_zz : Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol;;

(** {6 Upgrading from Nh4_zz_1p to Block_zerozero_pentatomic.} *)

val nh4_zz_1p : Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_zerozero_pentatomic 12 January 2011. *)

