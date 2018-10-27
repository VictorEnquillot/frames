(** {3 A Symbol for a Bond.} *)

let nam_mod = "Bond_symbol_v";;

(** {6 Modules.} *)

module Bns_t = Bond_symbol_t

(** {6 Displaying.} *)

let name = function
  | Bns_t.Bond_covalent -> Format.sprintf "%s" "bond_covalent"
  | Bns_t.Bond_hydrogen -> Format.sprintf "%s" "bond_hydrogen"
  | Bns_t.Bond_ionic -> Format.sprintf "%s" "bond_ionic"
;;

let print ppf = function
  | Bns_t.Bond_covalent -> Format.fprintf ppf "%s" "bond_covalent"
  | Bns_t.Bond_hydrogen -> Format.fprintf ppf "%s" "bond_hydrogen"
  | Bns_t.Bond_ionic -> Format.fprintf ppf "%s" "bond_ionic"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found bond_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Bond_covalent from Bond.} *)

(* No Extraction from bond_covalent 0. *)

(** {6 Extracting Bond_hydrogen from Bond.} *)

(* No Extraction from bond_hydrogen 0. *)

(** {6 Extracting Bond_ionic from Bond.} *)

(* No Extraction from bond_ionic 0. *)

(** {6 Querying.} *)

(** {6 Querying Bond_covalent in Bond.} *)

(* No Query from bond_covalent 0. *)

(** {6 Querying Bond_hydrogen in Bond.} *)

(* No Query from bond_hydrogen 0. *)

(** {6 Querying Bond_ionic in Bond.} *)

(* No Query from bond_ionic 0. *)

(** {6 Upgrading from Bond_covalent to Bond.} *)

let bond_covalent = Bns_t.Bond_covalent;;

(** {6 Upgrading from Bond_hydrogen to Bond.} *)

let bond_hydrogen = Bns_t.Bond_hydrogen;;

(** {6 Upgrading from Bond_ionic to Bond.} *)

let bond_ionic = Bns_t.Bond_ionic;;

(** created by ./do_entitysum_symbol_v_ml.sh bond 12 January 2011. *)

