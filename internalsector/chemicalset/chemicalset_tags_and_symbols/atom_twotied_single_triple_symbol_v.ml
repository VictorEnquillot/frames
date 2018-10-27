(** {3 A Symbol for a Atom_twotied_single_triple.} *)

let nam_mod = "Atom_twotied_single_triple_symbol_v";;

(** {6 Modules.} *)

module Asts_t = Atom_twotied_single_triple_symbol_t

(** {6 Displaying.} *)

let name = function
  | Asts_t.C_st -> Format.sprintf "%s" "c_st"
  | Asts_t.N_st -> Format.sprintf "%s" "n_st"
;;

let print ppf = function
  | Asts_t.C_st -> Format.fprintf ppf "%s" "c_st"
  | Asts_t.N_st -> Format.fprintf ppf "%s" "n_st"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_twotied_single_triple_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting C_st from Atom_twotied_single_triple.} *)

(* No Extraction from c_st 0. *)

(** {6 Extracting N_st from Atom_twotied_single_triple.} *)

(* No Extraction from n_st 0. *)

(** {6 Querying.} *)

(** {6 Querying C_st in Atom_twotied_single_triple.} *)

(* No Query from c_st 0. *)

(** {6 Querying N_st in Atom_twotied_single_triple.} *)

(* No Query from n_st 0. *)

(** {6 Upgrading from C_st to Atom_twotied_single_triple.} *)

let c_st = Asts_t.C_st;;

(** {6 Upgrading from N_st to Atom_twotied_single_triple.} *)

let n_st = Asts_t.N_st;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_twotied_single_triple 12 January 2011. *)

