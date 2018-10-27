(** {3 A Symbol for a Molecule_forked_oneforked.} *)

let nam_mod = "Molecule_forked_oneforked_symbol_v";;

(** {6 Modules.} *)

module Mf1s_t = Molecule_forked_oneforked_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mf1s_t.Guanidine -> Format.sprintf "%s" "Guanidine"
;;

let print ppf = function
  | Mf1s_t.Guanidine -> Format.fprintf ppf "%s" "Guanidine"
;;

(** {6 Extracting.} *)

(** {6 Extracting Guanidine from Molecule_forked_oneforked.} *)

(* No Extraction from Guanidine 0. *)

(** {6 Querying.} *)

(** {6 Querying Guanidine in Molecule_forked_oneforked.} *)

(* No Query from Guanidine 0. *)

(** {6 Upgrading from Guanidine to Molecule_forked_oneforked.} *)

let guanidine = Mf1s_t.Guanidine;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_forked_oneforked 12 January 2011. *)

