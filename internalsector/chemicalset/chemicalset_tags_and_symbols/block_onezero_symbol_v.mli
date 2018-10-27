(** {3 A Symbol for a Block_onezero.} *)

(** {6 Displaying.} *)

val name :
  Block_onezero_symbol_t.block_onezero_symbol ->
    string
;;

val print : Format.formatter ->
  Block_onezero_symbol_t.block_onezero_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Onesinglezero from Block_onezero.} *)

(* No Extraction from doublet onesinglezero. *)

(** {6 Extracting Oneconjugatedzero from Block_onezero.} *)

(* No Extraction from doublet oneconjugatedzero. *)

(** {6 Extracting Onedoublelezero from Block_onezero.} *)

(* No Extraction from doublet onedoublelezero. *)

(** {6 Extracting Onetriplezero from Block_onezero.} *)

(* No Extraction from doublet onetriplezero. *)

(** {6 Querying.} *)

(** {6 Querying Onesinglezero in Block_onezero.} *)

(* No Query from onesinglezero 0. *)

(** {6 Querying Oneconjugatedzero in Block_onezero.} *)

(* No Query from oneconjugatedzero 0. *)

(** {6 Querying Onedoublelezero in Block_onezero.} *)

(* No Query from onedoublelezero 0. *)

(** {6 Querying Onetriplezero in Block_onezero.} *)

(* No Query from onetriplezero 0. *)

(** {6 Upgrading from Onesinglezero to Block_onezero.} *)

val onesinglezero : Block_onezero_symbol_t.block_onezero_symbol;;

(** {6 Upgrading from Oneconjugatedzero to Block_onezero.} *)

val oneconjugatedzero : Block_onezero_symbol_t.block_onezero_symbol;;

(** {6 Upgrading from Onedoublelezero to Block_onezero.} *)

val onedoublelezero : Block_onezero_symbol_t.block_onezero_symbol;;

(** {6 Upgrading from Onetriplezero to Block_onezero.} *)

val onetriplezero : Block_onezero_symbol_t.block_onezero_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh block_onezero 12 January 2011. *)

