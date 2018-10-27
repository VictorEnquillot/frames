(** {3 A Symbol for a Halfbridge.} *)

let nam_mod = "Halfbridge_symbol_v";;

(** {6 Modules.} *)

module Hbs_t = Halfbridge_symbol_t

(** {6 Displaying.} *)

let name = function
  | Hbs_t.Hbc -> Format.sprintf "%s" "Hbc"
  | Hbs_t.Hbd -> Format.sprintf "%s" "Hbd"
  | Hbs_t.Hbs -> Format.sprintf "%s" "Hbs"
  | Hbs_t.Hbt -> Format.sprintf "%s" "Hbt"
;;

let print ppf = function
  | Hbs_t.Hbc -> Format.fprintf ppf "%s" "Hbc"
  | Hbs_t.Hbd -> Format.fprintf ppf "%s" "Hbd"
  | Hbs_t.Hbs -> Format.fprintf ppf "%s" "Hbs"
  | Hbs_t.Hbt -> Format.fprintf ppf "%s" "Hbt"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found halfbridge_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Hbc from Halfbridge.} *)

(* No Extraction from Hbc 0. *)

(** {6 Extracting Hbd from Halfbridge.} *)

(* No Extraction from Hbd 0. *)

(** {6 Extracting Hbs from Halfbridge.} *)

(* No Extraction from Hbs 0. *)

(** {6 Extracting Hbt from Halfbridge.} *)

(* No Extraction from Hbt 0. *)

(** {6 Querying.} *)

(** {6 Querying Hbc in Halfbridge.} *)

(* No Query from Hbc 0. *)

(** {6 Querying Hbd in Halfbridge.} *)

(* No Query from Hbd 0. *)

(** {6 Querying Hbs in Halfbridge.} *)

(* No Query from Hbs 0. *)

(** {6 Querying Hbt in Halfbridge.} *)

(* No Query from Hbt 0. *)

(** {6 Upgrading from Hbc to Halfbridge.} *)

let hbc = Hbs_t.Hbc;;

(** {6 Upgrading from Hbd to Halfbridge.} *)

let hbd = Hbs_t.Hbd;;

(** {6 Upgrading from Hbs to Halfbridge.} *)

let hbs = Hbs_t.Hbs;;

(** {6 Upgrading from Hbt to Halfbridge.} *)

let hbt = Hbs_t.Hbt;;

(** created by ./do_entitysum_symbol_v_ml.sh halfbridge 12 January 2011. *)

