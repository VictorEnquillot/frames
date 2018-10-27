(** {3 A Symbol for a Atom_twotied_conjugated_conjugated.} *)

let nam_mod = "Atom_twotied_conjugated_conjugated_symbol_v";;

(** {6 Modules.} *)

module Accs_t = Atom_twotied_conjugated_conjugated_symbol_t

(** {6 Displaying.} *)

let name = function
  | Accs_t.N_cc -> Format.sprintf "%s" "n_cc"
  | Accs_t.O_cc -> Format.sprintf "%s" "o_cc"
;;

let print ppf = function
  | Accs_t.N_cc -> Format.fprintf ppf "%s" "n_cc"
  | Accs_t.O_cc -> Format.fprintf ppf "%s" "o_cc"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_twotied_conjugated_conjugated_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting N_cc from Atom_twotied_conjugated_conjugated.} *)

(* No Extraction from n_cc 0. *)

(** {6 Extracting O_cc from Atom_twotied_conjugated_conjugated.} *)

(* No Extraction from o_cc 0. *)

(** {6 Querying.} *)

(** {6 Querying N_cc in Atom_twotied_conjugated_conjugated.} *)

(* No Query from n_cc 0. *)

(** {6 Querying O_cc in Atom_twotied_conjugated_conjugated.} *)

(* No Query from o_cc 0. *)

(** {6 Upgrading from N_cc to Atom_twotied_conjugated_conjugated.} *)

let n_cc = Accs_t.N_cc;;

(** {6 Upgrading from O_cc to Atom_twotied_conjugated_conjugated.} *)

let o_cc = Accs_t.O_cc;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_twotied_conjugated_conjugated 12 January 2011. *)

