(** {3 A Symbol for a Atom_twotied_single_double.} *)

let nam_mod = "Atom_twotied_single_double_symbol_v";;

(** {6 Modules.} *)

module Asds_t = Atom_twotied_single_double_symbol_t

(** {6 Displaying.} *)

let name = function
  | Asds_t.N_sd -> Format.sprintf "%s" "n_sd"
;;

let print ppf = function
  | Asds_t.N_sd -> Format.fprintf ppf "%s" "n_sd"
;;

(** {6 Extracting.} *)

(** {6 Extracting N_sd from Atom_twotied_single_double.} *)

(* No Extraction from n_sd 0. *)

(** {6 Querying.} *)

(** {6 Querying N_sd in Atom_twotied_single_double.} *)

(* No Query from n_sd 0. *)

(** {6 Upgrading from N_sd to Atom_twotied_single_double.} *)

let n_sd = Asds_t.N_sd;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_twotied_single_double 12 January 2011. *)

