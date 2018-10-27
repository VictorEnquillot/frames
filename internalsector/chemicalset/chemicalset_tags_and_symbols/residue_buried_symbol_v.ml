(** {3 A Symbol for a Residue_buried.} *)

let nam_mod = "Residue_buried_symbol_v";;

(** {6 Modules.} *)

module Mars_t = Molecule_aminoacid_regular_symbol_t
module Mars_v = Molecule_aminoacid_regular_symbol_v
module Rbfs_t = Residue_buried_fragmented_symbol_t
module Rbfs_v = Residue_buried_fragmented_symbol_v
module Rbss_t = Residue_buried_segmented_symbol_t
module Rbss_v = Residue_buried_segmented_symbol_v
module Rbs_t = Residue_buried_symbol_t

(** {6 Displaying.} *)

let name = function
  | Rbs_t.Residue_buried_segmented_symbol smb_rbs -> 
      Rbss_v.name smb_rbs
  | Rbs_t.Residue_buried_fragmented_symbol smb_rbf -> 
      Rbfs_v.name smb_rbf
;;

let print ppf = function
  | Rbs_t.Residue_buried_segmented_symbol smb_rbs -> 
      Rbss_v.print ppf smb_rbs
  | Rbs_t.Residue_buried_fragmented_symbol smb_rbf -> 
      Rbfs_v.print ppf smb_rbf
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found residue_buried_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Residue_buried_segmented from Residue_buried.} *)

let residue_buried_segmented_symbol_off_residue_buried_symbol = function
  | Rbs_t.Residue_buried_segmented_symbol smb_rbs -> smb_rbs
  | s ->  print_fatal_error
      "residue_buried_segmented_symbol_off_residue_buried_symbol"
      "Residue_buried_segmented_symbol" (name s)
;;

(** {9 Extracting Molecule_aminoacid_glycine from Residue_buried_segmented from Residue_buried.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {6 Extracting Residue_buried_fragmented from Residue_buried.} *)

let residue_buried_fragmented_symbol_off_residue_buried_symbol = function
  | Rbs_t.Residue_buried_fragmented_symbol smb_rbf -> smb_rbf
  | s ->  print_fatal_error
      "residue_buried_fragmented_symbol_off_residue_buried_symbol"
      "Residue_buried_fragmented_symbol" (name s)
;;

(** {9 Extracting Molecule_aminoacid_proline from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {9 Extracting Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

let molecule_aminoacid_regular_symbol_off_residue_buried_symbol smb_rse =
  let smb_rbf = residue_buried_fragmented_symbol_off_residue_buried_symbol smb_rse in
    Rbfs_v.molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol smb_rbf
;;

(** {12 Extracting Alanine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Alanine 0. *)

(** {12 Extracting Arginine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Arginine 0. *)

(** {12 Extracting Asparagine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Asparagine 0. *)

(** {12 Extracting Aspartic from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Aspartic 0. *)

(** {12 Extracting Cysteine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Cysteine 0. *)

(** {12 Extracting Glutamine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Glutamine 0. *)

(** {12 Extracting Glutamic from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Glutamic 0. *)

(** {12 Extracting Histidine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Histidine 0. *)

(** {12 Extracting Isoleucine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Isoleucine 0. *)

(** {12 Extracting Leucine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Leucine 0. *)

(** {12 Extracting Lysine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Lysine 0. *)

(** {12 Extracting Methionine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Methionine 0. *)

(** {12 Extracting Phenylalanine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Phenylalanine 0. *)

(** {12 Extracting Serine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Serine 0. *)

(** {12 Extracting Threonine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Threonine 0. *)

(** {12 Extracting Tryptophan from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Tryptophan 0. *)

(** {12 Extracting Tyrosine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Tyrosine 0. *)

(** {12 Extracting Valine from Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried.} *)

(* No Extraction from Valine 0. *)

(** {6 Querying.} *)

(** {6 Querying Residue_buried_segmented in Residue_buried.} *)

let is_residue_buried_segmented_symbol_off_residue_buried_symbol = function
  | Rbs_t.Residue_buried_segmented_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_aminoacid_glycine in Residue_buried_segmented in Residue_buried.} *)

(* No Query from molecule_aminoacid_glycine 0. *)


(** {6 Querying Residue_buried_fragmented in Residue_buried.} *)

let is_residue_buried_fragmented_symbol_off_residue_buried_symbol = function
  | Rbs_t.Residue_buried_fragmented_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_aminoacid_proline in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from molecule_aminoacid_proline 0. *)


(** {9 Querying Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

let is_molecule_aminoacid_regular_symbol_off_residue_buried_symbol smb_rse =
  if not (is_residue_buried_fragmented_symbol_off_residue_buried_symbol smb_rse)
  then false
  else
    begin
      let smb_rbf = residue_buried_fragmented_symbol_off_residue_buried_symbol smb_rse in
      Rbfs_v.is_molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol smb_rbf
    end
;;

(** {12 Querying Alanine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Alanine 0. *)

(** {12 Querying Arginine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Arginine 0. *)

(** {12 Querying Asparagine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Asparagine 0. *)

(** {12 Querying Aspartic in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Aspartic 0. *)

(** {12 Querying Cysteine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Cysteine 0. *)

(** {12 Querying Glutamine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Glutamine 0. *)

(** {12 Querying Glutamic in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Glutamic 0. *)

(** {12 Querying Histidine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Histidine 0. *)

(** {12 Querying Isoleucine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Isoleucine 0. *)

(** {12 Querying Leucine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Leucine 0. *)

(** {12 Querying Lysine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Lysine 0. *)

(** {12 Querying Methionine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Methionine 0. *)

(** {12 Querying Phenylalanine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Phenylalanine 0. *)

(** {12 Querying Serine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Serine 0. *)

(** {12 Querying Threonine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Threonine 0. *)

(** {12 Querying Tryptophan in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Tryptophan 0. *)

(** {12 Querying Tyrosine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Tyrosine 0. *)

(** {12 Querying Valine in Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried.} *)

(* No Query from Valine 0. *)

(** {6 Upgrading from Residue_buried_segmented to Residue_buried.} *)

let residue_buried_symbol_of_residue_buried_segmented_symbol smb_rbs =
  Rbs_t.Residue_buried_segmented_symbol smb_rbs
;;

(** {9 Upgrading from Molecule_aminoacid_glycine through Residue_buried_segmented to Residue_buried.} *)

let molecule_aminoacid_glycine = residue_buried_symbol_of_residue_buried_segmented_symbol Rbss_t.Molecule_aminoacid_glycine;;

(** {6 Upgrading from Residue_buried_fragmented to Residue_buried.} *)

let residue_buried_symbol_of_residue_buried_fragmented_symbol smb_rbf =
  Rbs_t.Residue_buried_fragmented_symbol smb_rbf
;;

(** {9 Upgrading from Molecule_aminoacid_proline through Residue_buried_fragmented to Residue_buried.} *)

let molecule_aminoacid_proline = residue_buried_symbol_of_residue_buried_fragmented_symbol Rbfs_t.Molecule_aminoacid_proline;;

(** {9 Upgrading from Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let residue_buried_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_rbf = Rbfs_v.residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
  residue_buried_symbol_of_residue_buried_fragmented_symbol smb_rbf
;;

(** {12 Upgrading from Alanine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let alanine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;

(** {12 Upgrading from Arginine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let arginine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;

(** {12 Upgrading from Asparagine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let asparagine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;

(** {12 Upgrading from Aspartic through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let aspartic = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;

(** {12 Upgrading from Cysteine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let cysteine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;

(** {12 Upgrading from Glutamine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let glutamine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;

(** {12 Upgrading from Glutamic through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let glutamic = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;

(** {12 Upgrading from Histidine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let histidine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;

(** {12 Upgrading from Isoleucine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let isoleucine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;

(** {12 Upgrading from Leucine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let leucine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;

(** {12 Upgrading from Lysine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let lysine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;

(** {12 Upgrading from Methionine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let methionine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;

(** {12 Upgrading from Phenylalanine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let phenylalanine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;

(** {12 Upgrading from Serine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let serine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;

(** {12 Upgrading from Threonine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let threonine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;

(** {12 Upgrading from Tryptophan through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let tryptophan = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;

(** {12 Upgrading from Tyrosine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let tyrosine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;

(** {12 Upgrading from Valine through Molecule_aminoacid_regular through Residue_buried_fragmented to Residue_buried.} *)

let valine = residue_buried_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;

(** created by ./do_entitysum_symbol_v_ml.sh residue_buried 12 January 2011. *)

