(** {3 A Symbol for a Bridge.} *)

let nam_mod = "Bridge_symbol_v";;

(** {6 Modules.} *)

module Brs_t = Bridge_symbol_t

(** {6 Displaying.} *)

let name = function
  | Brs_t.Bc -> Format.sprintf "%s" "Bc"
  | Brs_t.Bd -> Format.sprintf "%s" "Bd"
  | Brs_t.Bs -> Format.sprintf "%s" "Bs"
;;

let print ppf = function
  | Brs_t.Bc -> Format.fprintf ppf "%s" "Bc"
  | Brs_t.Bd -> Format.fprintf ppf "%s" "Bd"
  | Brs_t.Bs -> Format.fprintf ppf "%s" "Bs"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found bridge_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Bc from Bridge.} *)

(* No Extraction from Bc 0. *)

(** {6 Extracting Bd from Bridge.} *)

(* No Extraction from Bd 0. *)

(** {6 Extracting Bs from Bridge.} *)

(* No Extraction from Bs 0. *)

(** {6 Querying.} *)

(** {6 Querying Bc in Bridge.} *)

(* No Query from Bc 0. *)

(** {6 Querying Bd in Bridge.} *)

(* No Query from Bd 0. *)

(** {6 Querying Bs in Bridge.} *)

(* No Query from Bs 0. *)

(** {6 Upgrading from Bc to Bridge.} *)

let bc = Brs_t.Bc;;

(** {6 Upgrading from Bd to Bridge.} *)

let bd = Brs_t.Bd;;

(** {6 Upgrading from Bs to Bridge.} *)

let bs = Brs_t.Bs;;

(** created by ./do_entitysum_symbol_v_ml.sh bridge 12 January 2011. *)

