(** {3 A Symbol for a Deoxyribonucleotide_pyrimidinic.} *)

let nam_mod = "Deoxyribonucleotide_pyrimidinic_symbol_v";;

(** {6 Modules.} *)

module Dpys_t = Deoxyribonucleotide_pyrimidinic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Dpys_t.Deoxyuridine -> Format.sprintf "%s" "Deoxyuridine"
  | Dpys_t.Deoxycytidine -> Format.sprintf "%s" "Deoxycytidine"
  | Dpys_t.Thymidine -> Format.sprintf "%s" "Thymidine"
;;

let print ppf = function
  | Dpys_t.Deoxyuridine -> Format.fprintf ppf "%s" "Deoxyuridine"
  | Dpys_t.Deoxycytidine -> Format.fprintf ppf "%s" "Deoxycytidine"
  | Dpys_t.Thymidine -> Format.fprintf ppf "%s" "Thymidine"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found deoxyribonucleotide_pyrimidinic_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Deoxyuridine from Deoxyribonucleotide_pyrimidinic.} *)

(* No Extraction from Deoxyuridine 0. *)

(** {6 Extracting Deoxycytidine from Deoxyribonucleotide_pyrimidinic.} *)

(* No Extraction from Deoxycytidine 0. *)

(** {6 Extracting Thymidine from Deoxyribonucleotide_pyrimidinic.} *)

(* No Extraction from Thymidine 0. *)

(** {6 Querying.} *)

(** {6 Querying Deoxyuridine in Deoxyribonucleotide_pyrimidinic.} *)

(* No Query from Deoxyuridine 0. *)

(** {6 Querying Deoxycytidine in Deoxyribonucleotide_pyrimidinic.} *)

(* No Query from Deoxycytidine 0. *)

(** {6 Querying Thymidine in Deoxyribonucleotide_pyrimidinic.} *)

(* No Query from Thymidine 0. *)

(** {6 Upgrading from Deoxyuridine to Deoxyribonucleotide_pyrimidinic.} *)

let deoxyuridine = Dpys_t.Deoxyuridine;;

(** {6 Upgrading from Deoxycytidine to Deoxyribonucleotide_pyrimidinic.} *)

let deoxycytidine = Dpys_t.Deoxycytidine;;

(** {6 Upgrading from Thymidine to Deoxyribonucleotide_pyrimidinic.} *)

let thymidine = Dpys_t.Thymidine;;

(** created by ./do_entitysum_symbol_v_ml.sh deoxyribonucleotide_pyrimidinic 12 January 2011. *)

