(** {3 A Symbol for a Ribonucleotide_pyrimidinic.} *)

let nam_mod = "Ribonucleotide_pyrimidinic_symbol_v";;

(** {6 Modules.} *)

module Rpys_t = Ribonucleotide_pyrimidinic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Rpys_t.Uridine -> Format.sprintf "%s" "Uridine"
  | Rpys_t.Cytidine -> Format.sprintf "%s" "Cytidine"
;;

let print ppf = function
  | Rpys_t.Uridine -> Format.fprintf ppf "%s" "Uridine"
  | Rpys_t.Cytidine -> Format.fprintf ppf "%s" "Cytidine"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found ribonucleotide_pyrimidinic_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Uridine from Ribonucleotide_pyrimidinic.} *)

(* No Extraction from Uridine 0. *)

(** {6 Extracting Cytidine from Ribonucleotide_pyrimidinic.} *)

(* No Extraction from Cytidine 0. *)

(** {6 Querying.} *)

(** {6 Querying Uridine in Ribonucleotide_pyrimidinic.} *)

(* No Query from Uridine 0. *)

(** {6 Querying Cytidine in Ribonucleotide_pyrimidinic.} *)

(* No Query from Cytidine 0. *)

(** {6 Upgrading from Uridine to Ribonucleotide_pyrimidinic.} *)

let uridine = Rpys_t.Uridine;;

(** {6 Upgrading from Cytidine to Ribonucleotide_pyrimidinic.} *)

let cytidine = Rpys_t.Cytidine;;

(** created by ./do_entitysum_symbol_v_ml.sh ribonucleotide_pyrimidinic 12 January 2011. *)

