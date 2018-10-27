(** {3 A Symbol for a Molecule_aminoacid_segmented_tlc.} *)

let nam_mod = "Molecule_aminoacid_segmented_tlc_symbol_v";;

(** {6 Modules.} *)

module Masts_t = Molecule_aminoacid_segmented_tlc_symbol_t

(** {6 Displaying.} *)

let name = function
  | Masts_t.Gly -> Format.sprintf "%s" "gly"
;;

let print ppf = function
  | Masts_t.Gly -> Format.fprintf ppf "%s" "gly"
;;

(** {6 Extracting.} *)

(** {6 Extracting Gly from Molecule_aminoacid_segmented_tlc.} *)

(* No Extraction from gly 0. *)

(** {6 Querying.} *)

(** {6 Querying Gly in Molecule_aminoacid_segmented_tlc.} *)

(* No Query from gly 0. *)

(** {6 Upgrading from Gly to Molecule_aminoacid_segmented_tlc.} *)

let gly = Masts_t.Gly;;


module Mass_v = Molecule_aminoacid_segmented_symbol_v

let molecule_aminoacid_segmented_symbol_of_molecule_aminoacid_segmented_tlc_symbol = function
  | Masts_t.Gly -> Mass_v.glycine
;;


(** created by ./do_entitysum_symbol_v_ml.sh molecule_aminoacid_segmented_tlc 13 January 2011. *)

