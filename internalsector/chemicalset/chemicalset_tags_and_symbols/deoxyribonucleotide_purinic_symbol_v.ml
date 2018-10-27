(** {3 A Symbol for a Deoxyribonucleotide_purinic.} *)

let nam_mod = "Deoxyribonucleotide_purinic_symbol_v";;

(** {6 Modules.} *)

module Dpus_t = Deoxyribonucleotide_purinic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Dpus_t.Deoxyadenosine -> Format.sprintf "%s" "Deoxyadenosine"
  | Dpus_t.Deoxyguanosine -> Format.sprintf "%s" "Deoxyguanosine"
;;

let print ppf = function
  | Dpus_t.Deoxyadenosine -> Format.fprintf ppf "%s" "Deoxyadenosine"
  | Dpus_t.Deoxyguanosine -> Format.fprintf ppf "%s" "Deoxyguanosine"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found deoxyribonucleotide_purinic_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Deoxyadenosine from Deoxyribonucleotide_purinic.} *)

(* No Extraction from Deoxyadenosine 0. *)

(** {6 Extracting Deoxyguanosine from Deoxyribonucleotide_purinic.} *)

(* No Extraction from Deoxyguanosine 0. *)

(** {6 Querying.} *)

(** {6 Querying Deoxyadenosine in Deoxyribonucleotide_purinic.} *)

(* No Query from Deoxyadenosine 0. *)

(** {6 Querying Deoxyguanosine in Deoxyribonucleotide_purinic.} *)

(* No Query from Deoxyguanosine 0. *)

(** {6 Upgrading from Deoxyadenosine to Deoxyribonucleotide_purinic.} *)

let deoxyadenosine = Dpus_t.Deoxyadenosine;;

(** {6 Upgrading from Deoxyguanosine to Deoxyribonucleotide_purinic.} *)

let deoxyguanosine = Dpus_t.Deoxyguanosine;;

(** created by ./do_entitysum_symbol_v_ml.sh deoxyribonucleotide_purinic 12 January 2011. *)

