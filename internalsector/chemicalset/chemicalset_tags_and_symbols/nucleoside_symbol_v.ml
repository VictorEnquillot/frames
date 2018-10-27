(** {3 A Symbol for a Nucleoside.} *)

let nam_mod = "Nucleoside_symbol_v";;

(** {6 Modules.} *)

module Nss_t = Nucleoside_symbol_t

(** {6 Displaying.} *)

let name = function
  | Nss_t.Ribonucleoside -> Format.sprintf "%s" "ribonucleoside"
  | Nss_t.Deoxyribonucleoside -> Format.sprintf "%s" "deoxyribonucleoside"
;;

let print ppf = function
  | Nss_t.Ribonucleoside -> Format.fprintf ppf "%s" "ribonucleoside"
  | Nss_t.Deoxyribonucleoside -> Format.fprintf ppf "%s" "deoxyribonucleoside"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found nucleoside_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ribonucleoside from Nucleoside.} *)

(* No Extraction from ribonucleoside 0. *)

(** {6 Extracting Deoxyribonucleoside from Nucleoside.} *)

(* No Extraction from deoxyribonucleoside 0. *)

(** {6 Querying.} *)

(** {6 Querying Ribonucleoside in Nucleoside.} *)

(* No Query from ribonucleoside 0. *)

(** {6 Querying Deoxyribonucleoside in Nucleoside.} *)

(* No Query from deoxyribonucleoside 0. *)

(** {6 Upgrading from Ribonucleoside to Nucleoside.} *)

let ribonucleoside = Nss_t.Ribonucleoside;;

(** {6 Upgrading from Deoxyribonucleoside to Nucleoside.} *)

let deoxyribonucleoside = Nss_t.Deoxyribonucleoside;;

(** created by ./do_entitysum_symbol_v_ml.sh nucleoside 12 January 2011. *)

