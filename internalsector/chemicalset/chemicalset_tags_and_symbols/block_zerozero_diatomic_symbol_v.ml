(** {3 A Symbol for a Block_zerozero_diatomic.} *)

let nam_mod = "Block_zerozero_diatomic_symbol_v";;

(** {6 Modules.} *)

module Bzzds_t = Block_zerozero_diatomic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bzzds_t.Co_zz -> Format.sprintf "%s" "co_zz"
;;

let print ppf = function
  | Bzzds_t.Co_zz -> Format.fprintf ppf "%s" "co_zz"
;;

(** {6 Extracting.} *)

(** {6 Extracting Co_zz from Block_zerozero_diatomic.} *)

(* No Extraction from co_zz 0. *)

(** {6 Querying.} *)

(** {6 Querying Co_zz in Block_zerozero_diatomic.} *)

(* No Query from co_zz 0. *)

(** {6 Upgrading from Co_zz to Block_zerozero_diatomic.} *)

let co_zz = Bzzds_t.Co_zz;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zerozero_diatomic 12 January 2011. *)

