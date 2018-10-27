(** {3 A Symbol for a Ribonucleotide_purinic.} *)

let nam_mod = "Ribonucleotide_purinic_symbol_v";;

(** {6 Modules.} *)

module Rpus_t = Ribonucleotide_purinic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Rpus_t.Adenosine -> Format.sprintf "%s" "Adenosine"
  | Rpus_t.Guanosine -> Format.sprintf "%s" "Guanosine"
;;

let print ppf = function
  | Rpus_t.Adenosine -> Format.fprintf ppf "%s" "Adenosine"
  | Rpus_t.Guanosine -> Format.fprintf ppf "%s" "Guanosine"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found ribonucleotide_purinic_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Adenosine from Ribonucleotide_purinic.} *)

(* No Extraction from Adenosine 0. *)

(** {6 Extracting Guanosine from Ribonucleotide_purinic.} *)

(* No Extraction from Guanosine 0. *)

(** {6 Querying.} *)

(** {6 Querying Adenosine in Ribonucleotide_purinic.} *)

(* No Query from Adenosine 0. *)

(** {6 Querying Guanosine in Ribonucleotide_purinic.} *)

(* No Query from Guanosine 0. *)

(** {6 Upgrading from Adenosine to Ribonucleotide_purinic.} *)

let adenosine = Rpus_t.Adenosine;;

(** {6 Upgrading from Guanosine to Ribonucleotide_purinic.} *)

let guanosine = Rpus_t.Guanosine;;

(** created by ./do_entitysum_symbol_v_ml.sh ribonucleotide_purinic 12 January 2011. *)

