(** {3 A Symbol for a Block_onesingleonesingle.} *)

let nam_mod = "Block_onesingleonesingle_symbol_v";;

(** {6 Modules.} *)

module Bsss_t = Block_onesingleonesingle_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bsss_t.Ch2_ss -> Format.sprintf "%s" "ch2_ss"
  | Bsss_t.Co_ss -> Format.sprintf "%s" "co_ss"
  | Bsss_t.Nh2_ss_1p -> Format.sprintf "%s" "nh2_ss_1p"
  | Bsss_t.Nh_ss -> Format.sprintf "%s" "nh_ss"
  | Bsss_t.O_ss -> Format.sprintf "%s" "o_ss"
  | Bsss_t.S_ss -> Format.sprintf "%s" "s_ss"
;;

let print ppf = function
  | Bsss_t.Ch2_ss -> Format.fprintf ppf "%s" "ch2_ss"
  | Bsss_t.Co_ss -> Format.fprintf ppf "%s" "co_ss"
  | Bsss_t.Nh2_ss_1p -> Format.fprintf ppf "%s" "nh2_ss_1p"
  | Bsss_t.Nh_ss -> Format.fprintf ppf "%s" "nh_ss"
  | Bsss_t.O_ss -> Format.fprintf ppf "%s" "o_ss"
  | Bsss_t.S_ss -> Format.fprintf ppf "%s" "s_ss"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onesingleonesingle_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ch2_ss from Block_onesingleonesingle.} *)

(* No Extraction from ch2_ss 0. *)

(** {6 Extracting Co_ss from Block_onesingleonesingle.} *)

(* No Extraction from co_ss 0. *)

(** {6 Extracting Nh2_ss_1p from Block_onesingleonesingle.} *)

(* No Extraction from nh2_ss_1p 0. *)

(** {6 Extracting Nh_ss from Block_onesingleonesingle.} *)

(* No Extraction from nh_ss 0. *)

(** {6 Extracting O_ss from Block_onesingleonesingle.} *)

(* No Extraction from o_ss 0. *)

(** {6 Extracting S_ss from Block_onesingleonesingle.} *)

(* No Extraction from s_ss 0. *)

(** {6 Querying.} *)

(** {6 Querying Ch2_ss in Block_onesingleonesingle.} *)

(* No Query from ch2_ss 0. *)

(** {6 Querying Co_ss in Block_onesingleonesingle.} *)

(* No Query from co_ss 0. *)

(** {6 Querying Nh2_ss_1p in Block_onesingleonesingle.} *)

(* No Query from nh2_ss_1p 0. *)

(** {6 Querying Nh_ss in Block_onesingleonesingle.} *)

(* No Query from nh_ss 0. *)

(** {6 Querying O_ss in Block_onesingleonesingle.} *)

(* No Query from o_ss 0. *)

(** {6 Querying S_ss in Block_onesingleonesingle.} *)

(* No Query from s_ss 0. *)

(** {6 Upgrading from Ch2_ss to Block_onesingleonesingle.} *)

let ch2_ss = Bsss_t.Ch2_ss;;

(** {6 Upgrading from Co_ss to Block_onesingleonesingle.} *)

let co_ss = Bsss_t.Co_ss;;

(** {6 Upgrading from Nh2_ss_1p to Block_onesingleonesingle.} *)

let nh2_ss_1p = Bsss_t.Nh2_ss_1p;;

(** {6 Upgrading from Nh_ss to Block_onesingleonesingle.} *)

let nh_ss = Bsss_t.Nh_ss;;

(** {6 Upgrading from O_ss to Block_onesingleonesingle.} *)

let o_ss = Bsss_t.O_ss;;

(** {6 Upgrading from S_ss to Block_onesingleonesingle.} *)

let s_ss = Bsss_t.S_ss;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onesingleonesingle 12 January 2011. *)

