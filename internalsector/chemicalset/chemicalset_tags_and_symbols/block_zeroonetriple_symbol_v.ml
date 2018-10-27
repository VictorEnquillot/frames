(** {3 A Symbol for a Block_zeroonetriple.} *)

let nam_mod = "Block_zeroonetriple_symbol_v";;

(** {6 Modules.} *)

module Bzts_t = Block_zeroonetriple_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bzts_t.Ch_t -> Format.sprintf "%s" "ch_t"
;;

let print ppf = function
  | Bzts_t.Ch_t -> Format.fprintf ppf "%s" "ch_t"
;;

(** {6 Extracting.} *)

(** {6 Extracting Ch_t from Block_zeroonetriple.} *)

(* No Extraction from ch_t 0. *)

(** {6 Querying.} *)

(** {6 Querying Ch_t in Block_zeroonetriple.} *)

(* No Query from ch_t 0. *)

(** {6 Upgrading from Ch_t to Block_zeroonetriple.} *)

let ch_t = Bzts_t.Ch_t;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zeroonetriple 12 January 2011. *)

