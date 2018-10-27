(** {3 A Symbol for a Residue_buried_segmented.} *)

let nam_mod = "Residue_buried_segmented_symbol_v";;

(** {6 Modules.} *)

module Rbss_t = Residue_buried_segmented_symbol_t

(** {6 Displaying.} *)

let name = function
  | Rbss_t.Molecule_aminoacid_glycine -> Format.sprintf "%s" "molecule_aminoacid_glycine"
;;

let print ppf = function
  | Rbss_t.Molecule_aminoacid_glycine -> Format.fprintf ppf "%s" "molecule_aminoacid_glycine"
;;

(** {6 Extracting.} *)

(** {6 Extracting Molecule_aminoacid_glycine from Residue_buried_segmented.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid_glycine in Residue_buried_segmented.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {6 Upgrading from Molecule_aminoacid_glycine to Residue_buried_segmented.} *)

let molecule_aminoacid_glycine = Rbss_t.Molecule_aminoacid_glycine;;

(** created by ./do_entitysum_symbol_v_ml.sh residue_buried_segmented 12 January 2011. *)

