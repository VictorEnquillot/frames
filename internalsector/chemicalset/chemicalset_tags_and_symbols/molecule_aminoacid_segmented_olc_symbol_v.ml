(** {3 A Symbol for a Molecule_aminoacid_segmented_olc.} *)

let nam_mod = "Molecule_aminoacid_segmented_olc_symbol_v";;

(** {6 Modules.} *)

module Masos_t = Molecule_aminoacid_segmented_olc_symbol_t

(** {6 Displaying.} *)

let name = function
  | Masos_t.G -> Format.sprintf "%s" "g"
;;

let print ppf = function
  | Masos_t.G -> Format.fprintf ppf "%s" "g"
;;

(** {6 Extracting.} *)

(** {6 Extracting G from Molecule_aminoacid_segmented_olc.} *)

(* No Extraction from g 0. *)

(** {6 Querying.} *)

(** {6 Querying G in Molecule_aminoacid_segmented_olc.} *)

(* No Query from g 0. *)

(** {6 Upgrading from G to Molecule_aminoacid_segmented_olc.} *)

let g = Masos_t.G;;



module Mass_v = Molecule_aminoacid_segmented_symbol_v

let molecule_aminoacid_segmented_symbol_of_molecule_aminoacid_segmented_olc_symbol = function
  | Masos_t.G -> Mass_v.glycine
;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_aminoacid_segmented_olc 12 January 2011. *)

