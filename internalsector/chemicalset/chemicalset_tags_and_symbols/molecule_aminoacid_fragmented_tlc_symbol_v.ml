(** {3 A Symbol for a Molecule_aminoacid_fragmented_tlc.} *)

let nam_mod = "Molecule_aminoacid_fragmented_tlc_symbol_v";;

(** {6 Modules.} *)

module Mafts_t = Molecule_aminoacid_fragmented_tlc_symbol_t
module Marts_t = Molecule_aminoacid_regular_tlc_symbol_t
module Marts_v = Molecule_aminoacid_regular_tlc_symbol_v

(** {6 Displaying.} *)

let name = function
  | Mafts_t.Pro -> Format.sprintf "%s" "pro"
  | Mafts_t.Molecule_aminoacid_regular_tlc_symbol smb_art -> 
      Marts_v.name smb_art
;;

let print ppf = function
  | Mafts_t.Pro -> Format.fprintf ppf "%s" "pro"
  | Mafts_t.Molecule_aminoacid_regular_tlc_symbol smb_art -> 
      Marts_v.print ppf smb_art
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_aminoacid_fragmented_tlc_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Pro from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from pro 0. *)

(** {6 Extracting Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

let molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol = function
  | Mafts_t.Molecule_aminoacid_regular_tlc_symbol smb_art -> smb_art
  | s ->  print_fatal_error
      "molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol"
      "Molecule_aminoacid_regular_tlc_symbol" (name s)
;;

(** {9 Extracting Ala from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Ala 0. *)

(** {9 Extracting Arg from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Arg 0. *)

(** {9 Extracting Asn from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Asn 0. *)

(** {9 Extracting Asp from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Asp 0. *)

(** {9 Extracting Cys from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Cys 0. *)

(** {9 Extracting Gln from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Gln 0. *)

(** {9 Extracting Glu from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Glu 0. *)

(** {9 Extracting His from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from His 0. *)

(** {9 Extracting Ile from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Ile 0. *)

(** {9 Extracting Leu from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Leu 0. *)

(** {9 Extracting Lys from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Lys 0. *)

(** {9 Extracting Met from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Met 0. *)

(** {9 Extracting Phe from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Phe 0. *)

(** {9 Extracting Ser from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Ser 0. *)

(** {9 Extracting Thr from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Thr 0. *)

(** {9 Extracting Trp from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Trp 0. *)

(** {9 Extracting Tyr from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Tyr 0. *)

(** {9 Extracting Val from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc.} *)

(* No Extraction from Val 0. *)

(** {6 Querying.} *)

(** {6 Querying Pro in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from pro 0. *)

(** {6 Querying Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

let is_molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol = function
  | Mafts_t.Molecule_aminoacid_regular_tlc_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ala in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Ala 0. *)


(** {9 Querying Arg in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Arg 0. *)


(** {9 Querying Asn in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Asn 0. *)


(** {9 Querying Asp in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Asp 0. *)


(** {9 Querying Cys in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Cys 0. *)


(** {9 Querying Gln in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Gln 0. *)


(** {9 Querying Glu in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Glu 0. *)


(** {9 Querying His in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from His 0. *)


(** {9 Querying Ile in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Ile 0. *)


(** {9 Querying Leu in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Leu 0. *)


(** {9 Querying Lys in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Lys 0. *)


(** {9 Querying Met in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Met 0. *)


(** {9 Querying Phe in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Phe 0. *)


(** {9 Querying Ser in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Ser 0. *)


(** {9 Querying Thr in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Thr 0. *)


(** {9 Querying Trp in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Trp 0. *)


(** {9 Querying Tyr in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Tyr 0. *)


(** {9 Querying Val in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc.} *)

(* No Query from Val 0. *)


(** {6 Upgrading from Pro to Molecule_aminoacid_fragmented_tlc.} *)

let pro = Mafts_t.Pro;;

(** {6 Upgrading from Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
  Mafts_t.Molecule_aminoacid_regular_tlc_symbol smb_art
;;

(** {9 Upgrading from Ala through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let ala = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Ala;;

(** {9 Upgrading from Arg through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let arg = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Arg;;

(** {9 Upgrading from Asn through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let asn = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Asn;;

(** {9 Upgrading from Asp through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let asp = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Asp;;

(** {9 Upgrading from Cys through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let cys = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Cys;;

(** {9 Upgrading from Gln through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let gln = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Gln;;

(** {9 Upgrading from Glu through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let glu = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Glu;;

(** {9 Upgrading from His through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let his = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.His;;

(** {9 Upgrading from Ile through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let ile = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Ile;;

(** {9 Upgrading from Leu through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let leu = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Leu;;

(** {9 Upgrading from Lys through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let lys = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Lys;;

(** {9 Upgrading from Met through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let met = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Met;;

(** {9 Upgrading from Phe through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let phe = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Phe;;

(** {9 Upgrading from Ser through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let ser = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Ser;;

(** {9 Upgrading from Thr through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let thr = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Thr;;

(** {9 Upgrading from Trp through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let trp = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Trp;;

(** {9 Upgrading from Tyr through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let tyr = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Tyr;;

(** {9 Upgrading from Val through Molecule_aminoacid_regular_tlc to Molecule_aminoacid_fragmented_tlc.} *)

let v_l = molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Val;;

module Mafs_t = Molecule_aminoacid_fragmented_symbol_t

let molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_tlc_symbol = function
  | Mafts_t.Pro -> 
      Mafs_t.Proline
  | Mafts_t.Molecule_aminoacid_regular_tlc_symbol smb_atr -> 
      Mafs_t.Molecule_aminoacid_regular_symbol
	(Marts_v.molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_atr)
;;


(** created by ./do_entitysum_symbol_v_ml.sh molecule_aminoacid_fragmented_tlc 13 January 2011. *)

