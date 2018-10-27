(** {3 A Symbol for a Block_zerozero_triatomic.} *)

let nam_mod = "Block_zerozero_triatomic_symbol_v";;

(** {6 Modules.} *)

module Bzzts_t = Block_zerozero_triatomic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bzzts_t.Co2_zz -> Format.sprintf "%s" "co2_zz"
  | Bzzts_t.No2_zz -> Format.sprintf "%s" "no2_zz"
  | Bzzts_t.Oh2_zz -> Format.sprintf "%s" "oh2_zz"
  | Bzzts_t.Sh2_zz -> Format.sprintf "%s" "sh2_zz"
  | Bzzts_t.So2_zz -> Format.sprintf "%s" "so2_zz"
;;

let print ppf = function
  | Bzzts_t.Co2_zz -> Format.fprintf ppf "%s" "co2_zz"
  | Bzzts_t.No2_zz -> Format.fprintf ppf "%s" "no2_zz"
  | Bzzts_t.Oh2_zz -> Format.fprintf ppf "%s" "oh2_zz"
  | Bzzts_t.Sh2_zz -> Format.fprintf ppf "%s" "sh2_zz"
  | Bzzts_t.So2_zz -> Format.fprintf ppf "%s" "so2_zz"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_zerozero_triatomic_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Co2_zz from Block_zerozero_triatomic.} *)

(* No Extraction from co2_zz 0. *)

(** {6 Extracting No2_zz from Block_zerozero_triatomic.} *)

(* No Extraction from no2_zz 0. *)

(** {6 Extracting Oh2_zz from Block_zerozero_triatomic.} *)

(* No Extraction from oh2_zz 0. *)

(** {6 Extracting Sh2_zz from Block_zerozero_triatomic.} *)

(* No Extraction from sh2_zz 0. *)

(** {6 Extracting So2_zz from Block_zerozero_triatomic.} *)

(* No Extraction from so2_zz 0. *)

(** {6 Querying.} *)

(** {6 Querying Co2_zz in Block_zerozero_triatomic.} *)

(* No Query from co2_zz 0. *)

(** {6 Querying No2_zz in Block_zerozero_triatomic.} *)

(* No Query from no2_zz 0. *)

(** {6 Querying Oh2_zz in Block_zerozero_triatomic.} *)

(* No Query from oh2_zz 0. *)

(** {6 Querying Sh2_zz in Block_zerozero_triatomic.} *)

(* No Query from sh2_zz 0. *)

(** {6 Querying So2_zz in Block_zerozero_triatomic.} *)

(* No Query from so2_zz 0. *)

(** {6 Upgrading from Co2_zz to Block_zerozero_triatomic.} *)

let co2_zz = Bzzts_t.Co2_zz;;

(** {6 Upgrading from No2_zz to Block_zerozero_triatomic.} *)

let no2_zz = Bzzts_t.No2_zz;;

(** {6 Upgrading from Oh2_zz to Block_zerozero_triatomic.} *)

let oh2_zz = Bzzts_t.Oh2_zz;;

(** {6 Upgrading from Sh2_zz to Block_zerozero_triatomic.} *)

let sh2_zz = Bzzts_t.Sh2_zz;;

(** {6 Upgrading from So2_zz to Block_zerozero_triatomic.} *)

let so2_zz = Bzzts_t.So2_zz;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zerozero_triatomic 12 January 2011. *)

