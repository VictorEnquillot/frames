(** {3 A Symbol for a Molecule_forked_moreforked.} *)

let nam_mod = "Molecule_forked_moreforked_symbol_v";;

(** {6 Modules.} *)

module Mfms_t = Molecule_forked_moreforked_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mfms_t.Fake_4 -> Format.sprintf "%s" "Fake_4"
;;

let print ppf = function
  | Mfms_t.Fake_4 -> Format.fprintf ppf "%s" "Fake_4"
;;

(** {6 Extracting.} *)

(** {6 Extracting Fake_4 from Molecule_forked_moreforked.} *)

(* No Extraction from Fake_4 0. *)

(** {6 Querying.} *)

(** {6 Querying Fake_4 in Molecule_forked_moreforked.} *)

(* No Query from Fake_4 0. *)

(** {6 Upgrading from Fake_4 to Molecule_forked_moreforked.} *)

let fake_4 = Mfms_t.Fake_4;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_forked_moreforked 12 January 2011. *)

