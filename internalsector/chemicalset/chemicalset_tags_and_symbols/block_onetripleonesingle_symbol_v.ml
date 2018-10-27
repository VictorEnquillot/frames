(** {3 A Symbol for a Block_onetripleonesingle.} *)

let nam_mod = "Block_onetripleonesingle_symbol_v";;

(** {6 Modules.} *)

module Btss_t = Block_onetripleonesingle_symbol_t

(** {6 Displaying.} *)

let name = function
  | Btss_t.C_ts -> Format.sprintf "%s" "c_ts"
  | Btss_t.N_ts_1p -> Format.sprintf "%s" "n_ts_1p"
;;

let print ppf = function
  | Btss_t.C_ts -> Format.fprintf ppf "%s" "c_ts"
  | Btss_t.N_ts_1p -> Format.fprintf ppf "%s" "n_ts_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onetripleonesingle_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_ts from Block_onetripleonesingle.} *)

(* No Extraction from c_ts 0. *)

(** {6 Extracting N_ts_1p from Block_onetripleonesingle.} *)

(* No Extraction from n_ts_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying C_ts in Block_onetripleonesingle.} *)

(* No Query from c_ts 0. *)

(** {6 Querying N_ts_1p in Block_onetripleonesingle.} *)

(* No Query from n_ts_1p 0. *)

(** {6 Upgrading from C_ts to Block_onetripleonesingle.} *)

let c_ts = Btss_t.C_ts;;

(** {6 Upgrading from N_ts_1p to Block_onetripleonesingle.} *)

let n_ts_1p = Btss_t.N_ts_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onetripleonesingle 12 January 2011. *)

