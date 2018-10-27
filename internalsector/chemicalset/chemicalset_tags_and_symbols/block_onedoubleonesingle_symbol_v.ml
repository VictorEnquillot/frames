(** {3 A Symbol for a Block_onedoubleonesingle.} *)

let nam_mod = "Block_onedoubleonesingle_symbol_v";;

(** {6 Modules.} *)

module Btss_t = Block_onedoubleonesingle_symbol_t

(** {6 Displaying.} *)

let name = function
  | Btss_t.Ch_ds -> Format.sprintf "%s" "ch_ds"
  | Btss_t.N_ds -> Format.sprintf "%s" "n_ds"
  | Btss_t.Nh_ds_1p -> Format.sprintf "%s" "nh_ds_1p"
;;

let print ppf = function
  | Btss_t.Ch_ds -> Format.fprintf ppf "%s" "ch_ds"
  | Btss_t.N_ds -> Format.fprintf ppf "%s" "n_ds"
  | Btss_t.Nh_ds_1p -> Format.fprintf ppf "%s" "nh_ds_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onedoubleonesingle_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ch_ds from Block_onedoubleonesingle.} *)

(* No Extraction from ch_ds 0. *)

(** {6 Extracting N_ds from Block_onedoubleonesingle.} *)

(* No Extraction from n_ds 0. *)

(** {6 Extracting Nh_ds_1p from Block_onedoubleonesingle.} *)

(* No Extraction from nh_ds_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying Ch_ds in Block_onedoubleonesingle.} *)

(* No Query from ch_ds 0. *)

(** {6 Querying N_ds in Block_onedoubleonesingle.} *)

(* No Query from n_ds 0. *)

(** {6 Querying Nh_ds_1p in Block_onedoubleonesingle.} *)

(* No Query from nh_ds_1p 0. *)

(** {6 Upgrading from Ch_ds to Block_onedoubleonesingle.} *)

let ch_ds = Btss_t.Ch_ds;;

(** {6 Upgrading from N_ds to Block_onedoubleonesingle.} *)

let n_ds = Btss_t.N_ds;;

(** {6 Upgrading from Nh_ds_1p to Block_onedoubleonesingle.} *)

let nh_ds_1p = Btss_t.Nh_ds_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onedoubleonesingle 12 January 2011. *)

