(** {3 A Symbol for a Block_zeroonesingle.} *)

let nam_mod = "Block_zeroonesingle_symbol_v";;

(** {6 Modules.} *)

module Bzss_t = Block_zeroonesingle_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bzss_t.Ch2_zs -> Format.sprintf "%s" "ch2_zs"
  | Bzss_t.Ch3_zs -> Format.sprintf "%s" "ch3_zs"
  | Bzss_t.Coc2_zs -> Format.sprintf "%s" "coc2_zs"
  | Bzss_t.Coh_zs -> Format.sprintf "%s" "coh_zs"
  | Bzss_t.Nh2_zs -> Format.sprintf "%s" "nh2_zs"
  | Bzss_t.Nh3_zs_1p -> Format.sprintf "%s" "nh3_zs_1p"
  | Bzss_t.No2_zs -> Format.sprintf "%s" "no2_zs"
  | Bzss_t.No_zs -> Format.sprintf "%s" "no_zs"
  | Bzss_t.Oh_zs -> Format.sprintf "%s" "oh_zs"
  | Bzss_t.Sh_zs -> Format.sprintf "%s" "sh_zs"
;;

let print ppf = function
  | Bzss_t.Ch2_zs -> Format.fprintf ppf "%s" "ch2_zs"
  | Bzss_t.Ch3_zs -> Format.fprintf ppf "%s" "ch3_zs"
  | Bzss_t.Coc2_zs -> Format.fprintf ppf "%s" "coc2_zs"
  | Bzss_t.Coh_zs -> Format.fprintf ppf "%s" "coh_zs"
  | Bzss_t.Nh2_zs -> Format.fprintf ppf "%s" "nh2_zs"
  | Bzss_t.Nh3_zs_1p -> Format.fprintf ppf "%s" "nh3_zs_1p"
  | Bzss_t.No2_zs -> Format.fprintf ppf "%s" "no2_zs"
  | Bzss_t.No_zs -> Format.fprintf ppf "%s" "no_zs"
  | Bzss_t.Oh_zs -> Format.fprintf ppf "%s" "oh_zs"
  | Bzss_t.Sh_zs -> Format.fprintf ppf "%s" "sh_zs"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_zeroonesingle_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ch2_zs from Block_zeroonesingle.} *)

(* No Extraction from ch2_zs 0. *)

(** {6 Extracting Ch3_zs from Block_zeroonesingle.} *)

(* No Extraction from ch3_zs 0. *)

(** {6 Extracting Coc2_zs from Block_zeroonesingle.} *)

(* No Extraction from coc2_zs 0. *)

(** {6 Extracting Coh_zs from Block_zeroonesingle.} *)

(* No Extraction from coh_zs 0. *)

(** {6 Extracting Nh2_zs from Block_zeroonesingle.} *)

(* No Extraction from nh2_zs 0. *)

(** {6 Extracting Nh3_zs_1p from Block_zeroonesingle.} *)

(* No Extraction from nh3_zs_1p 0. *)

(** {6 Extracting No2_zs from Block_zeroonesingle.} *)

(* No Extraction from no2_zs 0. *)

(** {6 Extracting No_zs from Block_zeroonesingle.} *)

(* No Extraction from no_zs 0. *)

(** {6 Extracting Oh_zs from Block_zeroonesingle.} *)

(* No Extraction from oh_zs 0. *)

(** {6 Extracting Sh_zs from Block_zeroonesingle.} *)

(* No Extraction from sh_zs 0. *)

(** {6 Querying.} *)

(** {6 Querying Ch2_zs in Block_zeroonesingle.} *)

(* No Query from ch2_zs 0. *)

(** {6 Querying Ch3_zs in Block_zeroonesingle.} *)

(* No Query from ch3_zs 0. *)

(** {6 Querying Coc2_zs in Block_zeroonesingle.} *)

(* No Query from coc2_zs 0. *)

(** {6 Querying Coh_zs in Block_zeroonesingle.} *)

(* No Query from coh_zs 0. *)

(** {6 Querying Nh2_zs in Block_zeroonesingle.} *)

(* No Query from nh2_zs 0. *)

(** {6 Querying Nh3_zs_1p in Block_zeroonesingle.} *)

(* No Query from nh3_zs_1p 0. *)

(** {6 Querying No2_zs in Block_zeroonesingle.} *)

(* No Query from no2_zs 0. *)

(** {6 Querying No_zs in Block_zeroonesingle.} *)

(* No Query from no_zs 0. *)

(** {6 Querying Oh_zs in Block_zeroonesingle.} *)

(* No Query from oh_zs 0. *)

(** {6 Querying Sh_zs in Block_zeroonesingle.} *)

(* No Query from sh_zs 0. *)

(** {6 Upgrading from Ch2_zs to Block_zeroonesingle.} *)

let ch2_zs = Bzss_t.Ch2_zs;;

(** {6 Upgrading from Ch3_zs to Block_zeroonesingle.} *)

let ch3_zs = Bzss_t.Ch3_zs;;

(** {6 Upgrading from Coc2_zs to Block_zeroonesingle.} *)

let coc2_zs = Bzss_t.Coc2_zs;;

(** {6 Upgrading from Coh_zs to Block_zeroonesingle.} *)

let coh_zs = Bzss_t.Coh_zs;;

(** {6 Upgrading from Nh2_zs to Block_zeroonesingle.} *)

let nh2_zs = Bzss_t.Nh2_zs;;

(** {6 Upgrading from Nh3_zs_1p to Block_zeroonesingle.} *)

let nh3_zs_1p = Bzss_t.Nh3_zs_1p;;

(** {6 Upgrading from No2_zs to Block_zeroonesingle.} *)

let no2_zs = Bzss_t.No2_zs;;

(** {6 Upgrading from No_zs to Block_zeroonesingle.} *)

let no_zs = Bzss_t.No_zs;;

(** {6 Upgrading from Oh_zs to Block_zeroonesingle.} *)

let oh_zs = Bzss_t.Oh_zs;;

(** {6 Upgrading from Sh_zs to Block_zeroonesingle.} *)

let sh_zs = Bzss_t.Sh_zs;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zeroonesingle 12 January 2011. *)

