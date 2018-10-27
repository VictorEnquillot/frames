(** {3 A Symbol for a Nucleicacid.} *)

let nam_mod = "Nucleicacid_symbol_v";;

(** {6 Modules.} *)

module Nas_t = Nucleicacid_symbol_t

(** {6 Displaying.} *)

let name = function
  | Nas_t.Dna -> Format.sprintf "%s" "Dna"
  | Nas_t.Rna -> Format.sprintf "%s" "Rna"
;;

let print ppf = function
  | Nas_t.Dna -> Format.fprintf ppf "%s" "Dna"
  | Nas_t.Rna -> Format.fprintf ppf "%s" "Rna"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found nucleicacid_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Dna from Nucleicacid.} *)

(* No Extraction from Dna 0. *)

(** {6 Extracting Rna from Nucleicacid.} *)

(* No Extraction from Rna 0. *)

(** {6 Querying.} *)

(** {6 Querying Dna in Nucleicacid.} *)

(* No Query from Dna 0. *)

(** {6 Querying Rna in Nucleicacid.} *)

(* No Query from Rna 0. *)

(** {6 Upgrading from Dna to Nucleicacid.} *)

let dna = Nas_t.Dna;;

(** {6 Upgrading from Rna to Nucleicacid.} *)

let rna = Nas_t.Rna;;

(** created by ./do_entitysum_symbol_v_ml.sh nucleicacid 12 January 2011. *)

