(** {3 A Symbol for a Peptideca_nterminal_segmented.} *)

let nam_mod = "Peptideca_nterminal_segmented_symbol_v";;

(** {6 Modules.} *)

module Pnss_t = Peptideca_nterminal_segmented_symbol_t

(** {6 Displaying.} *)

let name = function
  | Pnss_t.Molecule_aminoacid_glycine -> Format.sprintf "%s" "molecule_aminoacid_glycine"
;;

let print ppf = function
  | Pnss_t.Molecule_aminoacid_glycine -> Format.fprintf ppf "%s" "molecule_aminoacid_glycine"
;;

(** {6 Extracting.} *)

(** {6 Extracting Molecule_aminoacid_glycine from Peptideca_nterminal_segmented.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid_glycine in Peptideca_nterminal_segmented.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {6 Upgrading from Molecule_aminoacid_glycine to Peptideca_nterminal_segmented.} *)

let molecule_aminoacid_glycine = Pnss_t.Molecule_aminoacid_glycine;;

(** created by ./do_entitysum_symbol_v_ml.sh peptideca_nterminal_segmented 12 January 2011. *)

