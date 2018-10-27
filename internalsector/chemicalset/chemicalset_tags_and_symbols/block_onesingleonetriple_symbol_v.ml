(** {3 A Symbol for a Block_onesingleonetriple.} *)

let nam_mod = "Block_onesingleonetriple_symbol_v";;

(** {6 Modules.} *)

module Bsts_t = Block_onesingleonetriple_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bsts_t.C_st -> Format.sprintf "%s" "c_st"
  | Bsts_t.N_st_1p -> Format.sprintf "%s" "n_st_1p"
;;

let print ppf = function
  | Bsts_t.C_st -> Format.fprintf ppf "%s" "c_st"
  | Bsts_t.N_st_1p -> Format.fprintf ppf "%s" "n_st_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onesingleonetriple_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_st from Block_onesingleonetriple.} *)

(* No Extraction from c_st 0. *)

(** {6 Extracting N_st_1p from Block_onesingleonetriple.} *)

(* No Extraction from n_st_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying C_st in Block_onesingleonetriple.} *)

(* No Query from c_st 0. *)

(** {6 Querying N_st_1p in Block_onesingleonetriple.} *)

(* No Query from n_st_1p 0. *)

(** {6 Upgrading from C_st to Block_onesingleonetriple.} *)

let c_st = Bsts_t.C_st;;

(** {6 Upgrading from N_st_1p to Block_onesingleonetriple.} *)

let n_st_1p = Bsts_t.N_st_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onesingleonetriple 12 January 2011. *)

