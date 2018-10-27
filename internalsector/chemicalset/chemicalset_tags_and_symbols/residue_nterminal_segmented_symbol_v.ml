(** {3 A Symbol for a Residue_nterminal_segmented.} *)

let nam_mod = "Residue_nterminal_segmented_symbol_v";;

(** {6 Modules.} *)

module Rnss_t = Residue_nterminal_segmented_symbol_t

(** {6 Displaying.} *)

let name = function
  | Rnss_t.Molecule_aminoacid_glycine -> Format.sprintf "%s" "molecule_aminoacid_glycine"
;;

let print ppf = function
  | Rnss_t.Molecule_aminoacid_glycine -> Format.fprintf ppf "%s" "molecule_aminoacid_glycine"
;;

(** {6 Extracting.} *)

(** {6 Extracting Molecule_aminoacid_glycine from Residue_nterminal_segmented.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid_glycine in Residue_nterminal_segmented.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {6 Upgrading from Molecule_aminoacid_glycine to Residue_nterminal_segmented.} *)

let molecule_aminoacid_glycine = Rnss_t.Molecule_aminoacid_glycine;;

(** created by ./do_entitysum_symbol_v_ml.sh residue_nterminal_segmented 12 January 2011. *)

