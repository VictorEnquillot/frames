(** {3 A Symbol for a Block_zeroonedouble.} *)

let nam_mod = "Block_zeroonedouble_symbol_v";;

(** {6 Modules.} *)

module Bzds_t = Block_zeroonedouble_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bzds_t.Ch2_d -> Format.sprintf "%s" "ch2_d"
  | Bzds_t.Co_d -> Format.sprintf "%s" "co_d"
  | Bzds_t.Nh_d -> Format.sprintf "%s" "nh_d"
  | Bzds_t.Nh2_d_1p -> Format.sprintf "%s" "nh2_d_1p"
;;

let print ppf = function
  | Bzds_t.Ch2_d -> Format.fprintf ppf "%s" "ch2_d"
  | Bzds_t.Co_d -> Format.fprintf ppf "%s" "co_d"
  | Bzds_t.Nh_d -> Format.fprintf ppf "%s" "nh_d"
  | Bzds_t.Nh2_d_1p -> Format.fprintf ppf "%s" "nh2_d_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_zeroonedouble_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ch2_d from Block_zeroonedouble.} *)

(* No Extraction from ch2_d 0. *)

(** {6 Extracting Co_d from Block_zeroonedouble.} *)

(* No Extraction from co_d 0. *)

(** {6 Extracting Nh_d from Block_zeroonedouble.} *)

(* No Extraction from nh_d 0. *)

(** {6 Extracting Nh2_d_1p from Block_zeroonedouble.} *)

(* No Extraction from nh2_d_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying Ch2_d in Block_zeroonedouble.} *)

(* No Query from ch2_d 0. *)

(** {6 Querying Co_d in Block_zeroonedouble.} *)

(* No Query from co_d 0. *)

(** {6 Querying Nh_d in Block_zeroonedouble.} *)

(* No Query from nh_d 0. *)

(** {6 Querying Nh2_d_1p in Block_zeroonedouble.} *)

(* No Query from nh2_d_1p 0. *)

(** {6 Upgrading from Ch2_d to Block_zeroonedouble.} *)

let ch2_d = Bzds_t.Ch2_d;;

(** {6 Upgrading from Co_d to Block_zeroonedouble.} *)

let co_d = Bzds_t.Co_d;;

(** {6 Upgrading from Nh_d to Block_zeroonedouble.} *)

let nh_d = Bzds_t.Nh_d;;

(** {6 Upgrading from Nh2_d_1p to Block_zeroonedouble.} *)

let nh2_d_1p = Bzds_t.Nh2_d_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zeroonedouble 12 January 2011. *)

