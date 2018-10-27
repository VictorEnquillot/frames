(** {3 A Symbol for a Molecule_forked_twoforked.} *)

let nam_mod = "Molecule_forked_twoforked_symbol_v";;

(** {6 Modules.} *)

module Mf2s_t = Molecule_forked_twoforked_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mf2s_t.Fake_2 -> Format.sprintf "%s" "Fake_2"
;;

let print ppf = function
  | Mf2s_t.Fake_2 -> Format.fprintf ppf "%s" "Fake_2"
;;

(** {6 Extracting.} *)

(** {6 Extracting Fake_2 from Molecule_forked_twoforked.} *)

(* No Extraction from Fake_2 0. *)

(** {6 Querying.} *)

(** {6 Querying Fake_2 in Molecule_forked_twoforked.} *)

(* No Query from Fake_2 0. *)

(** {6 Upgrading from Fake_2 to Molecule_forked_twoforked.} *)

let fake_2 = Mf2s_t.Fake_2;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_forked_twoforked 12 January 2011. *)

