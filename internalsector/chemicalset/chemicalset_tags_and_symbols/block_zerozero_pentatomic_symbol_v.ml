(** {3 A Symbol for a Block_zerozero_pentatomic.} *)

let nam_mod = "Block_zerozero_pentatomic_symbol_v";;

(** {6 Modules.} *)

module Bzzps_t = Block_zerozero_pentatomic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bzzps_t.Ch4_zz -> Format.sprintf "%s" "ch4_zz"
  | Bzzps_t.Nh4_zz_1p -> Format.sprintf "%s" "nh4_zz_1p"
;;

let print ppf = function
  | Bzzps_t.Ch4_zz -> Format.fprintf ppf "%s" "ch4_zz"
  | Bzzps_t.Nh4_zz_1p -> Format.fprintf ppf "%s" "nh4_zz_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_zerozero_pentatomic_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ch4_zz from Block_zerozero_pentatomic.} *)

(* No Extraction from ch4_zz 0. *)

(** {6 Extracting Nh4_zz_1p from Block_zerozero_pentatomic.} *)

(* No Extraction from nh4_zz_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying Ch4_zz in Block_zerozero_pentatomic.} *)

(* No Query from ch4_zz 0. *)

(** {6 Querying Nh4_zz_1p in Block_zerozero_pentatomic.} *)

(* No Query from nh4_zz_1p 0. *)

(** {6 Upgrading from Ch4_zz to Block_zerozero_pentatomic.} *)

let ch4_zz = Bzzps_t.Ch4_zz;;

(** {6 Upgrading from Nh4_zz_1p to Block_zerozero_pentatomic.} *)

let nh4_zz_1p = Bzzps_t.Nh4_zz_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zerozero_pentatomic 12 January 2011. *)

