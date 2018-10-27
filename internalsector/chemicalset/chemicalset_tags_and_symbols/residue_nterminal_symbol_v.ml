(** {3 A Symbol for a Residue_nterminal.} *)

let nam_mod = "Residue_nterminal_symbol_v";;

(** {6 Modules.} *)

module Mars_t = Molecule_aminoacid_regular_symbol_t
module Mars_v = Molecule_aminoacid_regular_symbol_v
module Rnfs_t = Residue_nterminal_fragmented_symbol_t
module Rnfs_v = Residue_nterminal_fragmented_symbol_v
module Rnss_t = Residue_nterminal_segmented_symbol_t
module Rnss_v = Residue_nterminal_segmented_symbol_v
module Rns_t = Residue_nterminal_symbol_t

(** {6 Displaying.} *)

let name = function
  | Rns_t.Residue_nterminal_segmented_symbol smb_rns -> 
      Rnss_v.name smb_rns
  | Rns_t.Residue_nterminal_fragmented_symbol smb_rnf -> 
      Rnfs_v.name smb_rnf
;;

let print ppf = function
  | Rns_t.Residue_nterminal_segmented_symbol smb_rns -> 
      Rnss_v.print ppf smb_rns
  | Rns_t.Residue_nterminal_fragmented_symbol smb_rnf -> 
      Rnfs_v.print ppf smb_rnf
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found residue_nterminal_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Residue_nterminal_segmented from Residue_nterminal.} *)

let residue_nterminal_segmented_symbol_off_residue_nterminal_symbol = function
  | Rns_t.Residue_nterminal_segmented_symbol smb_rns -> smb_rns
  | s ->  print_fatal_error
      "residue_nterminal_segmented_symbol_off_residue_nterminal_symbol"
      "Residue_nterminal_segmented_symbol" (name s)
;;

(** {9 Extracting Molecule_aminoacid_glycine from Residue_nterminal_segmented from Residue_nterminal.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {6 Extracting Residue_nterminal_fragmented from Residue_nterminal.} *)

let residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol = function
  | Rns_t.Residue_nterminal_fragmented_symbol smb_rnf -> smb_rnf
  | s ->  print_fatal_error
      "residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol"
      "Residue_nterminal_fragmented_symbol" (name s)
;;

(** {9 Extracting Molecule_aminoacid_proline from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {9 Extracting Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

let molecule_aminoacid_regular_symbol_off_residue_nterminal_symbol smb_rsn =
  let smb_rnf = residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_rsn in
    Rnfs_v.molecule_aminoacid_regular_symbol_off_residue_nterminal_fragmented_symbol smb_rnf
;;

(** {12 Extracting Alanine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Alanine 0. *)

(** {12 Extracting Arginine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Arginine 0. *)

(** {12 Extracting Asparagine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Asparagine 0. *)

(** {12 Extracting Aspartic from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Aspartic 0. *)

(** {12 Extracting Cysteine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Cysteine 0. *)

(** {12 Extracting Glutamine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Glutamine 0. *)

(** {12 Extracting Glutamic from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Glutamic 0. *)

(** {12 Extracting Histidine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Histidine 0. *)

(** {12 Extracting Isoleucine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Isoleucine 0. *)

(** {12 Extracting Leucine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Leucine 0. *)

(** {12 Extracting Lysine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Lysine 0. *)

(** {12 Extracting Methionine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Methionine 0. *)

(** {12 Extracting Phenylalanine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Phenylalanine 0. *)

(** {12 Extracting Serine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Serine 0. *)

(** {12 Extracting Threonine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Threonine 0. *)

(** {12 Extracting Tryptophan from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Tryptophan 0. *)

(** {12 Extracting Tyrosine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Tyrosine 0. *)

(** {12 Extracting Valine from Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal.} *)

(* No Extraction from Valine 0. *)

(** {6 Querying.} *)

(** {6 Querying Residue_nterminal_segmented in Residue_nterminal.} *)

let is_residue_nterminal_segmented_symbol_off_residue_nterminal_symbol = function
  | Rns_t.Residue_nterminal_segmented_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_aminoacid_glycine in Residue_nterminal_segmented in Residue_nterminal.} *)

(* No Query from molecule_aminoacid_glycine 0. *)


(** {6 Querying Residue_nterminal_fragmented in Residue_nterminal.} *)

let is_residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol = function
  | Rns_t.Residue_nterminal_fragmented_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_aminoacid_proline in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from molecule_aminoacid_proline 0. *)


(** {9 Querying Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

let is_molecule_aminoacid_regular_symbol_off_residue_nterminal_symbol smb_rsn =
  if not (is_residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_rsn)
  then false
  else
    begin
      let smb_rnf = residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_rsn in
      Rnfs_v.is_molecule_aminoacid_regular_symbol_off_residue_nterminal_fragmented_symbol smb_rnf
    end
;;

(** {12 Querying Alanine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Alanine 0. *)

(** {12 Querying Arginine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Arginine 0. *)

(** {12 Querying Asparagine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Asparagine 0. *)

(** {12 Querying Aspartic in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Aspartic 0. *)

(** {12 Querying Cysteine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Cysteine 0. *)

(** {12 Querying Glutamine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Glutamine 0. *)

(** {12 Querying Glutamic in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Glutamic 0. *)

(** {12 Querying Histidine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Histidine 0. *)

(** {12 Querying Isoleucine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Isoleucine 0. *)

(** {12 Querying Leucine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Leucine 0. *)

(** {12 Querying Lysine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Lysine 0. *)

(** {12 Querying Methionine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Methionine 0. *)

(** {12 Querying Phenylalanine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Phenylalanine 0. *)

(** {12 Querying Serine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Serine 0. *)

(** {12 Querying Threonine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Threonine 0. *)

(** {12 Querying Tryptophan in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Tryptophan 0. *)

(** {12 Querying Tyrosine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Tyrosine 0. *)

(** {12 Querying Valine in Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal.} *)

(* No Query from Valine 0. *)

(** {6 Upgrading from Residue_nterminal_segmented to Residue_nterminal.} *)

let residue_nterminal_symbol_of_residue_nterminal_segmented_symbol smb_rns =
  Rns_t.Residue_nterminal_segmented_symbol smb_rns
;;

(** {9 Upgrading from Molecule_aminoacid_glycine through Residue_nterminal_segmented to Residue_nterminal.} *)

let molecule_aminoacid_glycine = residue_nterminal_symbol_of_residue_nterminal_segmented_symbol Rnss_t.Molecule_aminoacid_glycine;;

(** {6 Upgrading from Residue_nterminal_fragmented to Residue_nterminal.} *)

let residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
  Rns_t.Residue_nterminal_fragmented_symbol smb_rnf
;;

(** {9 Upgrading from Molecule_aminoacid_proline through Residue_nterminal_fragmented to Residue_nterminal.} *)

let molecule_aminoacid_proline = residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol Rnfs_t.Molecule_aminoacid_proline;;

(** {9 Upgrading from Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_rnf = Rnfs_v.residue_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
  residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol smb_rnf
;;

(** {12 Upgrading from Alanine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let alanine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;

(** {12 Upgrading from Arginine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let arginine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;

(** {12 Upgrading from Asparagine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let asparagine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;

(** {12 Upgrading from Aspartic through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let aspartic = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;

(** {12 Upgrading from Cysteine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let cysteine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;

(** {12 Upgrading from Glutamine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let glutamine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;

(** {12 Upgrading from Glutamic through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let glutamic = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;

(** {12 Upgrading from Histidine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let histidine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;

(** {12 Upgrading from Isoleucine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let isoleucine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;

(** {12 Upgrading from Leucine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let leucine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;

(** {12 Upgrading from Lysine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let lysine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;

(** {12 Upgrading from Methionine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let methionine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;

(** {12 Upgrading from Phenylalanine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let phenylalanine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;

(** {12 Upgrading from Serine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let serine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;

(** {12 Upgrading from Threonine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let threonine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;

(** {12 Upgrading from Tryptophan through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let tryptophan = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;

(** {12 Upgrading from Tyrosine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let tyrosine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;

(** {12 Upgrading from Valine through Molecule_aminoacid_regular through Residue_nterminal_fragmented to Residue_nterminal.} *)

let valine = residue_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;

(** created by ./do_entitysum_symbol_v_ml.sh residue_nterminal 12 January 2011. *)

