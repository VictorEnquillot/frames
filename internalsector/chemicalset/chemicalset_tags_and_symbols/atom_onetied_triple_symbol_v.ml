(** {3 A Symbol for a Atom_onetied_triple.} *)

let nam_mod = "Atom_onetied_triple_symbol_v";;

(** {6 Modules.} *)

module Aots_t = Atom_onetied_triple_symbol_t

(** {6 Displaying.} *)

let name = function
  | Aots_t.N_t -> Format.sprintf "%s" "n_t"
  | Aots_t.O_t -> Format.sprintf "%s" "o_t"
;;

let print ppf = function
  | Aots_t.N_t -> Format.fprintf ppf "%s" "n_t"
  | Aots_t.O_t -> Format.fprintf ppf "%s" "o_t"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_onetied_triple_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting N_t from Atom_onetied_triple.} *)

(* No Extraction from n_t 0. *)

(** {6 Extracting O_t from Atom_onetied_triple.} *)

(* No Extraction from o_t 0. *)

(** {6 Querying.} *)

(** {6 Querying N_t in Atom_onetied_triple.} *)

(* No Query from n_t 0. *)

(** {6 Querying O_t in Atom_onetied_triple.} *)

(* No Query from o_t 0. *)

(** {6 Upgrading from N_t to Atom_onetied_triple.} *)

let n_t = Aots_t.N_t;;

(** {6 Upgrading from O_t to Atom_onetied_triple.} *)

let o_t = Aots_t.O_t;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_onetied_triple 12 January 2011. *)

