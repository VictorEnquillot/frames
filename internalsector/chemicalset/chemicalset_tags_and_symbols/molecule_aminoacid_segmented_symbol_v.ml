(** {3 A Symbol for a Molecule_aminoacid_segmented.} *)

let nam_mod = "Molecule_aminoacid_segmented_symbol_v";;

(** {6 Modules.} *)

module Mass_t = Molecule_aminoacid_segmented_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mass_t.Glycine -> Format.sprintf "%s" "glycine"
;;

let print ppf = function
  | Mass_t.Glycine -> Format.fprintf ppf "%s" "glycine"
;;

(** {6 Extracting.} *)

(** {6 Extracting Glycine from Molecule_aminoacid_segmented.} *)

(* No Extraction from glycine 0. *)

(** {6 Querying.} *)

(** {6 Querying Glycine in Molecule_aminoacid_segmented.} *)

(* No Query from glycine 0. *)

(** {6 Upgrading from Glycine to Molecule_aminoacid_segmented.} *)

let glycine = Mass_t.Glycine;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_aminoacid_segmented 12 January 2011. *)

