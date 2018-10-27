(** {3 A Symbol for a Block_zerozero_tetratomic.} *)

let nam_mod = "Block_zerozero_tetratomic_symbol_v";;

(** {6 Modules.} *)

module Bzzqs_t = Block_zerozero_tetratomic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bzzqs_t.Cho2_1m -> Format.sprintf "%s" "cho2_1m"
  | Bzzqs_t.Nh2 -> Format.sprintf "%s" "nh2"
;;

let print ppf = function
  | Bzzqs_t.Cho2_1m -> Format.fprintf ppf "%s" "cho2_1m"
  | Bzzqs_t.Nh2 -> Format.fprintf ppf "%s" "nh2"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found block_zerozero_tetratomic_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Cho2_1m from Block_zerozero_tetratomic.} *)

(* No Extraction from cho2_1m 0. *)

(** {6 Extracting Nh2 from Block_zerozero_tetratomic.} *)

(* No Extraction from nh2 0. *)

(** {6 Querying.} *)

(** {6 Querying Cho2_1m in Block_zerozero_tetratomic.} *)

(* No Query from cho2_1m 0. *)

(** {6 Querying Nh2 in Block_zerozero_tetratomic.} *)

(* No Query from nh2 0. *)

(** {6 Upgrading from Cho2_1m to Block_zerozero_tetratomic.} *)

let cho2_1m = Bzzqs_t.Cho2_1m;;

(** {6 Upgrading from Nh2 to Block_zerozero_tetratomic.} *)

let nh2 = Bzzqs_t.Nh2;;

(** created by ./do_entitysum_symbol_v_ml.sh block_zerozero_tetratomic 12 January 2011. *)

