(** {3 A Symbol for a Block_onezero.} *)

let nam_mod = "Block_onezero_symbol_v";;

(** {6 Modules.} *)

module Bozs_t = Block_onezero_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bozs_t.Onesinglezero -> Format.sprintf "%s" "onesinglezero"
  | Bozs_t.Oneconjugatedzero -> Format.sprintf "%s" "oneconjugatedzero"
  | Bozs_t.Onedoublelezero -> Format.sprintf "%s" "onedoublelezero"
  | Bozs_t.Onetriplezero -> Format.sprintf "%s" "onetriplezero"
;;

let print ppf = function
  | Bozs_t.Onesinglezero -> Format.fprintf ppf "%s" "onesinglezero"
  | Bozs_t.Oneconjugatedzero -> Format.fprintf ppf "%s" "oneconjugatedzero"
  | Bozs_t.Onedoublelezero -> Format.fprintf ppf "%s" "onedoublelezero"
  | Bozs_t.Onetriplezero -> Format.fprintf ppf "%s" "onetriplezero"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_onezero_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Onesinglezero from Block_onezero.} *)

(* No Extraction from onesinglezero 0. *)

(** {6 Extracting Oneconjugatedzero from Block_onezero.} *)

(* No Extraction from oneconjugatedzero 0. *)

(** {6 Extracting Onedoublelezero from Block_onezero.} *)

(* No Extraction from onedoublelezero 0. *)

(** {6 Extracting Onetriplezero from Block_onezero.} *)

(* No Extraction from onetriplezero 0. *)

(** {6 Querying.} *)

(** {6 Querying Onesinglezero in Block_onezero.} *)

(* No Query from onesinglezero 0. *)

(** {6 Querying Oneconjugatedzero in Block_onezero.} *)

(* No Query from oneconjugatedzero 0. *)

(** {6 Querying Onedoublelezero in Block_onezero.} *)

(* No Query from onedoublelezero 0. *)

(** {6 Querying Onetriplezero in Block_onezero.} *)

(* No Query from onetriplezero 0. *)

(** {6 Upgrading from Onesinglezero to Block_onezero.} *)

let onesinglezero = Bozs_t.Onesinglezero;;

(** {6 Upgrading from Oneconjugatedzero to Block_onezero.} *)

let oneconjugatedzero = Bozs_t.Oneconjugatedzero;;

(** {6 Upgrading from Onedoublelezero to Block_onezero.} *)

let onedoublelezero = Bozs_t.Onedoublelezero;;

(** {6 Upgrading from Onetriplezero to Block_onezero.} *)

let onetriplezero = Bozs_t.Onetriplezero;;

(** created by ./do_entitysum_symbol_v_ml.sh block_onezero 12 January 2011. *)

