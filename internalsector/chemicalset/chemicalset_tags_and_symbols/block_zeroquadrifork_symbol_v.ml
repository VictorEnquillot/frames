(** {3 A Symbol for a Block_zeroquadrifork.} *)

let nam_mod = "Block_zeroquadrifork_symbol_v";;

(** {6 Modules.} *)

module Bzqs_t = Block_zeroquadrifork_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bzqs_t.C_q -> Format.sprintf "%s" "c_q"
  | Bzqs_t.N_q_1p -> Format.sprintf "%s" "n_q_1p"
;;

let print ppf = function
  | Bzqs_t.C_q -> Format.fprintf ppf "%s" "c_q"
  | Bzqs_t.N_q_1p -> Format.fprintf ppf "%s" "n_q_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_zeroquadrifork_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_q from Block_zeroquadrifork.} *)

(* No Extraction from c_q 0. *)

(** {6 Extracting N_q_1p from Block_zeroquadrifork.} *)

(* No Extraction from n_q_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying C_q in Block_zeroquadrifork.} *)

(* No Query from c_q 0. *)

(** {6 Querying N_q_1p in Block_zeroquadrifork.} *)

(* No Query from n_q_1p 0. *)

(** {6 Upgrading from C_q to Block_zeroquadrifork.} *)

let c_q = Bzqs_t.C_q;;

(** {6 Upgrading from N_q_1p to Block_zeroquadrifork.} *)

let n_q_1p = Bzqs_t.N_q_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zeroquadrifork 12 January 2011. *)

