(** {3 A Symbol for a Atom_twotied_single_conjugated.} *)

let nam_mod = "Atom_twotied_single_conjugated_symbol_v";;

(** {6 Modules.} *)

module Ascs_t = Atom_twotied_single_conjugated_symbol_t

(** {6 Displaying.} *)

let name = function
  | Ascs_t.N_sc -> Format.sprintf "%s" "n_sc"
  | Ascs_t.O_sc -> Format.sprintf "%s" "o_sc"
;;

let print ppf = function
  | Ascs_t.N_sc -> Format.fprintf ppf "%s" "n_sc"
  | Ascs_t.O_sc -> Format.fprintf ppf "%s" "o_sc"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_twotied_single_conjugated_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting N_sc from Atom_twotied_single_conjugated.} *)

(* No Extraction from n_sc 0. *)

(** {6 Extracting O_sc from Atom_twotied_single_conjugated.} *)

(* No Extraction from o_sc 0. *)

(** {6 Querying.} *)

(** {6 Querying N_sc in Atom_twotied_single_conjugated.} *)

(* No Query from n_sc 0. *)

(** {6 Querying O_sc in Atom_twotied_single_conjugated.} *)

(* No Query from o_sc 0. *)

(** {6 Upgrading from N_sc to Atom_twotied_single_conjugated.} *)

let n_sc = Ascs_t.N_sc;;

(** {6 Upgrading from O_sc to Atom_twotied_single_conjugated.} *)

let o_sc = Ascs_t.O_sc;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_twotied_single_conjugated 12 January 2011. *)

