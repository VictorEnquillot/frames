(** {3 A Symbol for a Molecule_dendrimer.} *)

let nam_mod = "Molecule_dendrimer_symbol_v";;

(** {6 Modules.} *)

module Mds_t = Molecule_dendrimer_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mds_t.Fake_d2 -> Format.sprintf "%s" "Fake_d2"
;;

let print ppf = function
  | Mds_t.Fake_d2 -> Format.fprintf ppf "%s" "Fake_d2"
;;

(** {6 Extracting.} *)

(** {6 Extracting Fake_d2 from Molecule_dendrimer.} *)

(* No Extraction from Fake_d2 0. *)

(** {6 Querying.} *)

(** {6 Querying Fake_d2 in Molecule_dendrimer.} *)

(* No Query from Fake_d2 0. *)

(** {6 Upgrading from Fake_d2 to Molecule_dendrimer.} *)

let fake_d2 = Mds_t.Fake_d2;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_dendrimer 12 January 2011. *)

