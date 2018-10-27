(** {3 A Symbol for a Block_zerobifork.} *)

let nam_mod = "Block_zerobifork_symbol_v";;

(** {6 Modules.} *)

module Bzbs_t = Block_zerobifork_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bzbs_t.Ch_zsc -> Format.sprintf "%s" "ch_zsc"
  | Bzbs_t.Ch_zsd -> Format.sprintf "%s" "ch_zsd"
  | Bzbs_t.Nh_zs2 -> Format.sprintf "%s" "nh_zs2"
;;

let print ppf = function
  | Bzbs_t.Ch_zsc -> Format.fprintf ppf "%s" "ch_zsc"
  | Bzbs_t.Ch_zsd -> Format.fprintf ppf "%s" "ch_zsd"
  | Bzbs_t.Nh_zs2 -> Format.fprintf ppf "%s" "nh_zs2"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_zerobifork_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ch_zsc from Block_zerobifork.} *)

(* No Extraction from ch_zsc 0. *)

(** {6 Extracting Ch_zsd from Block_zerobifork.} *)

(* No Extraction from ch_zsd 0. *)

(** {6 Extracting Nh_zs2 from Block_zerobifork.} *)

(* No Extraction from nh_zs2 0. *)

(** {6 Querying.} *)

(** {6 Querying Ch_zsc in Block_zerobifork.} *)

(* No Query from ch_zsc 0. *)

(** {6 Querying Ch_zsd in Block_zerobifork.} *)

(* No Query from ch_zsd 0. *)

(** {6 Querying Nh_zs2 in Block_zerobifork.} *)

(* No Query from nh_zs2 0. *)

(** {6 Upgrading from Ch_zsc to Block_zerobifork.} *)

let ch_zsc = Bzbs_t.Ch_zsc;;

(** {6 Upgrading from Ch_zsd to Block_zerobifork.} *)

let ch_zsd = Bzbs_t.Ch_zsd;;

(** {6 Upgrading from Nh_zs2 to Block_zerobifork.} *)

let nh_zs2 = Bzbs_t.Nh_zs2;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zerobifork 12 January 2011. *)

