(** {3 A Symbol for a Peptideca_buried_fragmented.} *)

let nam_mod = "Peptideca_buried_fragmented_symbol_v";;

(** {6 Modules.} *)

module Mars_t = Molecule_aminoacid_regular_symbol_t
module Mars_v = Molecule_aminoacid_regular_symbol_v
module Pbfs_t = Peptideca_buried_fragmented_symbol_t

(** {6 Displaying.} *)

let name = function
  | Pbfs_t.Molecule_aminoacid_proline -> Format.sprintf "%s" "molecule_aminoacid_proline"
  | Pbfs_t.Molecule_aminoacid_regular_symbol smb_mar -> 
      Mars_v.name smb_mar
;;

let print ppf = function
  | Pbfs_t.Molecule_aminoacid_proline -> Format.fprintf ppf "%s" "molecule_aminoacid_proline"
  | Pbfs_t.Molecule_aminoacid_regular_symbol smb_mar -> 
      Mars_v.print ppf smb_mar
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found peptideca_buried_fragmented_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Molecule_aminoacid_proline from Peptideca_buried_fragmented.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {6 Extracting Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

let molecule_aminoacid_regular_symbol_off_peptideca_buried_fragmented_symbol = function
  | Pbfs_t.Molecule_aminoacid_regular_symbol smb_mar -> smb_mar
  | s ->  print_fatal_error
      "molecule_aminoacid_regular_symbol_off_peptideca_buried_fragmented_symbol"
      "Molecule_aminoacid_regular_symbol" (name s)
;;

(** {9 Extracting Alanine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Alanine 0. *)

(** {9 Extracting Arginine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Arginine 0. *)

(** {9 Extracting Asparagine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Asparagine 0. *)

(** {9 Extracting Aspartic from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Aspartic 0. *)

(** {9 Extracting Cysteine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Cysteine 0. *)

(** {9 Extracting Glutamine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Glutamine 0. *)

(** {9 Extracting Glutamic from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Glutamic 0. *)

(** {9 Extracting Histidine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Histidine 0. *)

(** {9 Extracting Isoleucine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Isoleucine 0. *)

(** {9 Extracting Leucine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Leucine 0. *)

(** {9 Extracting Lysine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Lysine 0. *)

(** {9 Extracting Methionine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Methionine 0. *)

(** {9 Extracting Phenylalanine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Phenylalanine 0. *)

(** {9 Extracting Serine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Serine 0. *)

(** {9 Extracting Threonine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Threonine 0. *)

(** {9 Extracting Tryptophan from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Tryptophan 0. *)

(** {9 Extracting Tyrosine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Tyrosine 0. *)

(** {9 Extracting Valine from Molecule_aminoacid_regular from Peptideca_buried_fragmented.} *)

(* No Extraction from Valine 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid_proline in Peptideca_buried_fragmented.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {6 Querying Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

let is_molecule_aminoacid_regular_symbol_off_peptideca_buried_fragmented_symbol = function
  | Pbfs_t.Molecule_aminoacid_regular_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Alanine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Alanine 0. *)


(** {9 Querying Arginine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Arginine 0. *)


(** {9 Querying Asparagine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Asparagine 0. *)


(** {9 Querying Aspartic in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Aspartic 0. *)


(** {9 Querying Cysteine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Cysteine 0. *)


(** {9 Querying Glutamine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Glutamine 0. *)


(** {9 Querying Glutamic in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Glutamic 0. *)


(** {9 Querying Histidine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Histidine 0. *)


(** {9 Querying Isoleucine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Isoleucine 0. *)


(** {9 Querying Leucine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Leucine 0. *)


(** {9 Querying Lysine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Lysine 0. *)


(** {9 Querying Methionine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Methionine 0. *)


(** {9 Querying Phenylalanine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Phenylalanine 0. *)


(** {9 Querying Serine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Serine 0. *)


(** {9 Querying Threonine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Threonine 0. *)


(** {9 Querying Tryptophan in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Tryptophan 0. *)


(** {9 Querying Tyrosine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Tyrosine 0. *)


(** {9 Querying Valine in Molecule_aminoacid_regular in Peptideca_buried_fragmented.} *)

(* No Query from Valine 0. *)


(** {6 Upgrading from Molecule_aminoacid_proline to Peptideca_buried_fragmented.} *)

let molecule_aminoacid_proline = Pbfs_t.Molecule_aminoacid_proline;;

(** {6 Upgrading from Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  Pbfs_t.Molecule_aminoacid_regular_symbol smb_mar
;;

(** {9 Upgrading from Alanine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let alanine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;

(** {9 Upgrading from Arginine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let arginine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;

(** {9 Upgrading from Asparagine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let asparagine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;

(** {9 Upgrading from Aspartic through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let aspartic = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;

(** {9 Upgrading from Cysteine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let cysteine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;

(** {9 Upgrading from Glutamine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let glutamine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;

(** {9 Upgrading from Glutamic through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let glutamic = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;

(** {9 Upgrading from Histidine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let histidine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;

(** {9 Upgrading from Isoleucine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let isoleucine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;

(** {9 Upgrading from Leucine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let leucine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;

(** {9 Upgrading from Lysine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let lysine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;

(** {9 Upgrading from Methionine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let methionine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;

(** {9 Upgrading from Phenylalanine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let phenylalanine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;

(** {9 Upgrading from Serine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let serine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;

(** {9 Upgrading from Threonine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let threonine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;

(** {9 Upgrading from Tryptophan through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let tryptophan = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;

(** {9 Upgrading from Tyrosine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let tyrosine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;

(** {9 Upgrading from Valine through Molecule_aminoacid_regular to Peptideca_buried_fragmented.} *)

let valine = peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;

(** created by ./do_entitysum_symbol_v_ml.sh peptideca_buried_fragmented 12 January 2011. *)

