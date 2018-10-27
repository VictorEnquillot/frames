(** {3 A Symbol for a Molecule_forked_threeforked.} *)

let nam_mod = "Molecule_forked_threeforked_symbol_v";;

(** {6 Modules.} *)

module Mf3s_t = Molecule_forked_threeforked_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mf3s_t.Fake_3 -> Format.sprintf "%s" "Fake_3"
;;

let print ppf = function
  | Mf3s_t.Fake_3 -> Format.fprintf ppf "%s" "Fake_3"
;;

(** {6 Extracting.} *)

(** {6 Extracting Fake_3 from Molecule_forked_threeforked.} *)

(* No Extraction from Fake_3 0. *)

(** {6 Querying.} *)

(** {6 Querying Fake_3 in Molecule_forked_threeforked.} *)

(* No Query from Fake_3 0. *)

(** {6 Upgrading from Fake_3 to Molecule_forked_threeforked.} *)

let fake_3 = Mf3s_t.Fake_3;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_forked_threeforked 12 January 2011. *)

