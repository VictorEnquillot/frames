(** {3 A Symbol for a Block_zerotrifork.} *)

let nam_mod = "Block_zerotrifork_symbol_v";;

(** {6 Modules.} *)

module Bzts_t = Block_zerotrifork_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bzts_t.Ch_s3 -> Format.sprintf "%s" "ch_s3"
  | Bzts_t.N_s3 -> Format.sprintf "%s" "n_s3"
;;

let print ppf = function
  | Bzts_t.Ch_s3 -> Format.fprintf ppf "%s" "ch_s3"
  | Bzts_t.N_s3 -> Format.fprintf ppf "%s" "n_s3"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_zerotrifork_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ch_s3 from Block_zerotrifork.} *)

(* No Extraction from ch_s3 0. *)

(** {6 Extracting N_s3 from Block_zerotrifork.} *)

(* No Extraction from n_s3 0. *)

(** {6 Querying.} *)

(** {6 Querying Ch_s3 in Block_zerotrifork.} *)

(* No Query from ch_s3 0. *)

(** {6 Querying N_s3 in Block_zerotrifork.} *)

(* No Query from n_s3 0. *)

(** {6 Upgrading from Ch_s3 to Block_zerotrifork.} *)

let ch_s3 = Bzts_t.Ch_s3;;

(** {6 Upgrading from N_s3 to Block_zerotrifork.} *)

let n_s3 = Bzts_t.N_s3;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zerotrifork 12 January 2011. *)

