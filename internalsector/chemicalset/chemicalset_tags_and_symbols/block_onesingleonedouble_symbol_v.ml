(** {3 A Symbol for a Block_onesingleonedouble.} *)

let nam_mod = "Block_onesingleonedouble_symbol_v";;

(** {6 Modules.} *)

module Bsds_t = Block_onesingleonedouble_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bsds_t.Ch_sd -> Format.sprintf "%s" "ch_sd"
  | Bsds_t.N_sd -> Format.sprintf "%s" "n_sd"
  | Bsds_t.N_sd_1p -> Format.sprintf "%s" "n_sd_1p"
;;

let print ppf = function
  | Bsds_t.Ch_sd -> Format.fprintf ppf "%s" "ch_sd"
  | Bsds_t.N_sd -> Format.fprintf ppf "%s" "n_sd"
  | Bsds_t.N_sd_1p -> Format.fprintf ppf "%s" "n_sd_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onesingleonedouble_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ch_sd from Block_onesingleonedouble.} *)

(* No Extraction from ch_sd 0. *)

(** {6 Extracting N_sd from Block_onesingleonedouble.} *)

(* No Extraction from n_sd 0. *)

(** {6 Extracting N_sd_1p from Block_onesingleonedouble.} *)

(* No Extraction from n_sd_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying Ch_sd in Block_onesingleonedouble.} *)

(* No Query from ch_sd 0. *)

(** {6 Querying N_sd in Block_onesingleonedouble.} *)

(* No Query from n_sd 0. *)

(** {6 Querying N_sd_1p in Block_onesingleonedouble.} *)

(* No Query from n_sd_1p 0. *)

(** {6 Upgrading from Ch_sd to Block_onesingleonedouble.} *)

let ch_sd = Bsds_t.Ch_sd;;

(** {6 Upgrading from N_sd to Block_onesingleonedouble.} *)

let n_sd = Bsds_t.N_sd;;

(** {6 Upgrading from N_sd_1p to Block_onesingleonedouble.} *)

let n_sd_1p = Bsds_t.N_sd_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onesingleonedouble 12 January 2011. *)

