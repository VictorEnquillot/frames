(** {3 A Symbol for a Peptideca_nterminal.} *)

let nam_mod = "Peptideca_nterminal_symbol_v";;

(** {6 Modules.} *)

module Mars_t = Molecule_aminoacid_regular_symbol_t
module Mars_v = Molecule_aminoacid_regular_symbol_v
module Pnfs_t = Peptideca_nterminal_fragmented_symbol_t
module Pnfs_v = Peptideca_nterminal_fragmented_symbol_v
module Pnss_t = Peptideca_nterminal_segmented_symbol_t
module Pnss_v = Peptideca_nterminal_segmented_symbol_v
module Pns_t = Peptideca_nterminal_symbol_t

(** {6 Displaying.} *)

let name = function
  | Pns_t.Peptideca_nterminal_segmented_symbol smb_pns -> 
      Pnss_v.name smb_pns
  | Pns_t.Peptideca_nterminal_fragmented_symbol smb_pnf -> 
      Pnfs_v.name smb_pnf
;;

let print ppf = function
  | Pns_t.Peptideca_nterminal_segmented_symbol smb_pns -> 
      Pnss_v.print ppf smb_pns
  | Pns_t.Peptideca_nterminal_fragmented_symbol smb_pnf -> 
      Pnfs_v.print ppf smb_pnf
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found peptideca_nterminal_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Peptideca_nterminal_segmented from Peptideca_nterminal.} *)

let peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol = function
  | Pns_t.Peptideca_nterminal_segmented_symbol smb_pns -> smb_pns
  | s ->  print_fatal_error
      "peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol"
      "Peptideca_nterminal_segmented_symbol" (name s)
;;

(** {9 Extracting Molecule_aminoacid_glycine from Peptideca_nterminal_segmented from Peptideca_nterminal.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {6 Extracting Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

let peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol = function
  | Pns_t.Peptideca_nterminal_fragmented_symbol smb_pnf -> smb_pnf
  | s ->  print_fatal_error
      "peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol"
      "Peptideca_nterminal_fragmented_symbol" (name s)
;;

(** {9 Extracting Molecule_aminoacid_proline from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {9 Extracting Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

let molecule_aminoacid_regular_symbol_off_peptideca_nterminal_symbol smb_pcn =
  let smb_pnf = peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol smb_pcn in
    Pnfs_v.molecule_aminoacid_regular_symbol_off_peptideca_nterminal_fragmented_symbol smb_pnf
;;

(** {12 Extracting Alanine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Alanine 0. *)

(** {12 Extracting Arginine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Arginine 0. *)

(** {12 Extracting Asparagine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Asparagine 0. *)

(** {12 Extracting Aspartic from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Aspartic 0. *)

(** {12 Extracting Cysteine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Cysteine 0. *)

(** {12 Extracting Glutamine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Glutamine 0. *)

(** {12 Extracting Glutamic from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Glutamic 0. *)

(** {12 Extracting Histidine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Histidine 0. *)

(** {12 Extracting Isoleucine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Isoleucine 0. *)

(** {12 Extracting Leucine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Leucine 0. *)

(** {12 Extracting Lysine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Lysine 0. *)

(** {12 Extracting Methionine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Methionine 0. *)

(** {12 Extracting Phenylalanine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Phenylalanine 0. *)

(** {12 Extracting Serine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Serine 0. *)

(** {12 Extracting Threonine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Threonine 0. *)

(** {12 Extracting Tryptophan from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Tryptophan 0. *)

(** {12 Extracting Tyrosine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Tyrosine 0. *)

(** {12 Extracting Valine from Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal.} *)

(* No Extraction from Valine 0. *)

(** {6 Querying.} *)

(** {6 Querying Peptideca_nterminal_segmented in Peptideca_nterminal.} *)

let is_peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol = function
  | Pns_t.Peptideca_nterminal_segmented_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_aminoacid_glycine in Peptideca_nterminal_segmented in Peptideca_nterminal.} *)

(* No Query from molecule_aminoacid_glycine 0. *)


(** {6 Querying Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

let is_peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol = function
  | Pns_t.Peptideca_nterminal_fragmented_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_aminoacid_proline in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from molecule_aminoacid_proline 0. *)


(** {9 Querying Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

let is_molecule_aminoacid_regular_symbol_off_peptideca_nterminal_symbol smb_pcn =
  if not (is_peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol smb_pcn)
  then false
  else
    begin
      let smb_pnf = peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol smb_pcn in
      Pnfs_v.is_molecule_aminoacid_regular_symbol_off_peptideca_nterminal_fragmented_symbol smb_pnf
    end
;;

(** {12 Querying Alanine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Alanine 0. *)

(** {12 Querying Arginine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Arginine 0. *)

(** {12 Querying Asparagine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Asparagine 0. *)

(** {12 Querying Aspartic in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Aspartic 0. *)

(** {12 Querying Cysteine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Cysteine 0. *)

(** {12 Querying Glutamine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Glutamine 0. *)

(** {12 Querying Glutamic in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Glutamic 0. *)

(** {12 Querying Histidine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Histidine 0. *)

(** {12 Querying Isoleucine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Isoleucine 0. *)

(** {12 Querying Leucine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Leucine 0. *)

(** {12 Querying Lysine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Lysine 0. *)

(** {12 Querying Methionine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Methionine 0. *)

(** {12 Querying Phenylalanine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Phenylalanine 0. *)

(** {12 Querying Serine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Serine 0. *)

(** {12 Querying Threonine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Threonine 0. *)

(** {12 Querying Tryptophan in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Tryptophan 0. *)

(** {12 Querying Tyrosine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Tyrosine 0. *)

(** {12 Querying Valine in Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal.} *)

(* No Query from Valine 0. *)

(** {6 Upgrading from Peptideca_nterminal_segmented to Peptideca_nterminal.} *)

let peptideca_nterminal_symbol_of_peptideca_nterminal_segmented_symbol smb_pns =
  Pns_t.Peptideca_nterminal_segmented_symbol smb_pns
;;

(** {9 Upgrading from Molecule_aminoacid_glycine through Peptideca_nterminal_segmented to Peptideca_nterminal.} *)

let molecule_aminoacid_glycine = peptideca_nterminal_symbol_of_peptideca_nterminal_segmented_symbol Pnss_t.Molecule_aminoacid_glycine;;

(** {6 Upgrading from Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
  Pns_t.Peptideca_nterminal_fragmented_symbol smb_pnf
;;

(** {9 Upgrading from Molecule_aminoacid_proline through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let molecule_aminoacid_proline = peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol Pnfs_t.Molecule_aminoacid_proline;;

(** {9 Upgrading from Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_pnf = Pnfs_v.peptideca_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
  peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf
;;

(** {12 Upgrading from Alanine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let alanine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;

(** {12 Upgrading from Arginine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let arginine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;

(** {12 Upgrading from Asparagine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let asparagine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;

(** {12 Upgrading from Aspartic through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let aspartic = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;

(** {12 Upgrading from Cysteine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let cysteine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;

(** {12 Upgrading from Glutamine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let glutamine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;

(** {12 Upgrading from Glutamic through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let glutamic = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;

(** {12 Upgrading from Histidine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let histidine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;

(** {12 Upgrading from Isoleucine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let isoleucine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;

(** {12 Upgrading from Leucine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let leucine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;

(** {12 Upgrading from Lysine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let lysine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;

(** {12 Upgrading from Methionine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let methionine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;

(** {12 Upgrading from Phenylalanine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let phenylalanine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;

(** {12 Upgrading from Serine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let serine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;

(** {12 Upgrading from Threonine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let threonine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;

(** {12 Upgrading from Tryptophan through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let tryptophan = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;

(** {12 Upgrading from Tyrosine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let tyrosine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;

(** {12 Upgrading from Valine through Molecule_aminoacid_regular through Peptideca_nterminal_fragmented to Peptideca_nterminal.} *)

let valine = peptideca_nterminal_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;

(** created by ./do_entitysum_symbol_v_ml.sh peptideca_nterminal 12 January 2011. *)

