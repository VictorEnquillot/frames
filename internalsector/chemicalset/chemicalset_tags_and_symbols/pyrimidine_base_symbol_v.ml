(** {3 A Symbol for a Pyrimidine_base.} *)

let nam_mod = "Pyrimidine_base_symbol_v";;

(** {6 Modules.} *)

module Pys_t = Pyrimidine_base_symbol_t

(** {6 Displaying.} *)

let name = function
  | Pys_t.Cytosine -> Format.sprintf "%s" "Cytosine"
  | Pys_t.Uracil -> Format.sprintf "%s" "Uracil"
  | Pys_t.Thymine -> Format.sprintf "%s" "Thymine"
;;

let print ppf = function
  | Pys_t.Cytosine -> Format.fprintf ppf "%s" "Cytosine"
  | Pys_t.Uracil -> Format.fprintf ppf "%s" "Uracil"
  | Pys_t.Thymine -> Format.fprintf ppf "%s" "Thymine"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found pyrimidine_base_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Cytosine from Pyrimidine_base.} *)

(* No Extraction from Cytosine 0. *)

(** {6 Extracting Uracil from Pyrimidine_base.} *)

(* No Extraction from Uracil 0. *)

(** {6 Extracting Thymine from Pyrimidine_base.} *)

(* No Extraction from Thymine 0. *)

(** {6 Querying.} *)

(** {6 Querying Cytosine in Pyrimidine_base.} *)

(* No Query from Cytosine 0. *)

(** {6 Querying Uracil in Pyrimidine_base.} *)

(* No Query from Uracil 0. *)

(** {6 Querying Thymine in Pyrimidine_base.} *)

(* No Query from Thymine 0. *)

(** {6 Upgrading from Cytosine to Pyrimidine_base.} *)

let cytosine = Pys_t.Cytosine;;

(** {6 Upgrading from Uracil to Pyrimidine_base.} *)

let uracil = Pys_t.Uracil;;

(** {6 Upgrading from Thymine to Pyrimidine_base.} *)

let thymine = Pys_t.Thymine;;

(** created by ./do_entitysum_symbol_v_ml.sh pyrimidine_base 12 January 2011. *)

