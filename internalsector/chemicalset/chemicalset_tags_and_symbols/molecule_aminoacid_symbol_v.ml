(** {3 A Symbol for a Molecule_aminoacid.} *)

let nam_mod = "Molecule_aminoacid_symbol_v";;

(** {6 Modules.} *)

module Mafs_t = Molecule_aminoacid_fragmented_symbol_t
module Mafs_v = Molecule_aminoacid_fragmented_symbol_v
module Mars_t = Molecule_aminoacid_regular_symbol_t
module Mars_v = Molecule_aminoacid_regular_symbol_v
module Mass_t = Molecule_aminoacid_segmented_symbol_t
module Mass_v = Molecule_aminoacid_segmented_symbol_v
module Mas_t = Molecule_aminoacid_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mas_t.Molecule_aminoacid_segmented_symbol smb_mas -> 
      Mass_v.name smb_mas
  | Mas_t.Molecule_aminoacid_fragmented_symbol smb_maf -> 
      Mafs_v.name smb_maf
;;

let print ppf = function
  | Mas_t.Molecule_aminoacid_segmented_symbol smb_mas -> 
      Mass_v.print ppf smb_mas
  | Mas_t.Molecule_aminoacid_fragmented_symbol smb_maf -> 
      Mafs_v.print ppf smb_maf
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_aminoacid_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Molecule_aminoacid_segmented from Molecule_aminoacid.} *)

let molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol = function
  | Mas_t.Molecule_aminoacid_segmented_symbol smb_mas -> smb_mas
  | s ->  print_fatal_error
      "molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol"
      "Molecule_aminoacid_segmented_symbol" (name s)
;;

(** {9 Extracting Glycine from Molecule_aminoacid_segmented from Molecule_aminoacid.} *)

(* No Extraction from glycine 0. *)

(** {6 Extracting Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

let molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol = function
  | Mas_t.Molecule_aminoacid_fragmented_symbol smb_maf -> smb_maf
  | s ->  print_fatal_error
      "molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol"
      "Molecule_aminoacid_fragmented_symbol" (name s)
;;

(** {9 Extracting Proline from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from proline 0. *)

(** {9 Extracting Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

let molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol smb_mam =
  let smb_maf = molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_mam in
    Mafs_v.molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol smb_maf
;;

(** {12 Extracting Alanine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Alanine 0. *)

(** {12 Extracting Arginine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Arginine 0. *)

(** {12 Extracting Asparagine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Asparagine 0. *)

(** {12 Extracting Aspartic from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Aspartic 0. *)

(** {12 Extracting Cysteine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Cysteine 0. *)

(** {12 Extracting Glutamine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Glutamine 0. *)

(** {12 Extracting Glutamic from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Glutamic 0. *)

(** {12 Extracting Histidine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Histidine 0. *)

(** {12 Extracting Isoleucine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Isoleucine 0. *)

(** {12 Extracting Leucine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Leucine 0. *)

(** {12 Extracting Lysine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Lysine 0. *)

(** {12 Extracting Methionine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Methionine 0. *)

(** {12 Extracting Phenylalanine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Phenylalanine 0. *)

(** {12 Extracting Serine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Serine 0. *)

(** {12 Extracting Threonine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Threonine 0. *)

(** {12 Extracting Tryptophan from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Tryptophan 0. *)

(** {12 Extracting Tyrosine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Tyrosine 0. *)

(** {12 Extracting Valine from Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid.} *)

(* No Extraction from Valine 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid_segmented in Molecule_aminoacid.} *)

let is_molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol = function
  | Mas_t.Molecule_aminoacid_segmented_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Glycine in Molecule_aminoacid_segmented in Molecule_aminoacid.} *)

(* No Query from glycine 0. *)


(** {6 Querying Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

let is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol = function
  | Mas_t.Molecule_aminoacid_fragmented_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Proline in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from proline 0. *)


(** {9 Querying Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

let is_molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol smb_mam =
  if not (is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_mam)
  then false
  else
    begin
      let smb_maf = molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_mam in
      Mafs_v.is_molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol smb_maf
    end
;;

(** {12 Querying Alanine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Alanine 0. *)

(** {12 Querying Arginine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Arginine 0. *)

(** {12 Querying Asparagine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Asparagine 0. *)

(** {12 Querying Aspartic in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Aspartic 0. *)

(** {12 Querying Cysteine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Cysteine 0. *)

(** {12 Querying Glutamine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Glutamine 0. *)

(** {12 Querying Glutamic in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Glutamic 0. *)

(** {12 Querying Histidine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Histidine 0. *)

(** {12 Querying Isoleucine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Isoleucine 0. *)

(** {12 Querying Leucine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Leucine 0. *)

(** {12 Querying Lysine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Lysine 0. *)

(** {12 Querying Methionine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Methionine 0. *)

(** {12 Querying Phenylalanine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Phenylalanine 0. *)

(** {12 Querying Serine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Serine 0. *)

(** {12 Querying Threonine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Threonine 0. *)

(** {12 Querying Tryptophan in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Tryptophan 0. *)

(** {12 Querying Tyrosine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Tyrosine 0. *)

(** {12 Querying Valine in Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid.} *)

(* No Query from Valine 0. *)

(** {6 Upgrading from Molecule_aminoacid_segmented to Molecule_aminoacid.} *)

let molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol smb_mas =
  Mas_t.Molecule_aminoacid_segmented_symbol smb_mas
;;

(** {9 Upgrading from Glycine through Molecule_aminoacid_segmented to Molecule_aminoacid.} *)

let glycine = molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol Mass_t.Glycine;;

(** {6 Upgrading from Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
  Mas_t.Molecule_aminoacid_fragmented_symbol smb_maf
;;

(** {9 Upgrading from Proline through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let proline = molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol Mafs_t.Proline;;

(** {9 Upgrading from Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_maf = Mafs_v.molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
  molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf
;;

(** {12 Upgrading from Alanine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let alanine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;

(** {12 Upgrading from Arginine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let arginine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;

(** {12 Upgrading from Asparagine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let asparagine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;

(** {12 Upgrading from Aspartic through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let aspartic = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;

(** {12 Upgrading from Cysteine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let cysteine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;

(** {12 Upgrading from Glutamine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let glutamine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;

(** {12 Upgrading from Glutamic through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let glutamic = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;

(** {12 Upgrading from Histidine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let histidine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;

(** {12 Upgrading from Isoleucine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let isoleucine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;

(** {12 Upgrading from Leucine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let leucine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;

(** {12 Upgrading from Lysine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let lysine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;

(** {12 Upgrading from Methionine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let methionine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;

(** {12 Upgrading from Phenylalanine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let phenylalanine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;

(** {12 Upgrading from Serine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let serine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;

(** {12 Upgrading from Threonine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let threonine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;

(** {12 Upgrading from Tryptophan through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let tryptophan = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;

(** {12 Upgrading from Tyrosine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let tyrosine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;

(** {12 Upgrading from Valine through Molecule_aminoacid_regular through Molecule_aminoacid_fragmented to Molecule_aminoacid.} *)

let valine = molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;

(** {6 Including. *)

module Maos_v = Molecule_aminoacid_olc_symbol_v
module Mats_v = Molecule_aminoacid_tlc_symbol_v

let molecule_aminoacid_symbol_of_string str = 
  let str_len = String.length str in
  match str_len with
  | 1 -> 
      let smb_amo = Maos_v.molecule_aminoacid_olc_symbol_of_string str in
      Maos_v.molecule_aminoacid_symbol_of_molecule_aminoacid_olc_symbol smb_amo  
  | 3 -> 
      let smb_amt = Mats_v.molecule_aminoacid_tlc_symbol_of_string str in
      Mats_v.molecule_aminoacid_symbol_of_molecule_aminoacid_tlc_symbol smb_amt  
  | _ ->
      let stc = String.capitalize (String.lowercase str) in
      match stc with
      | "Glycine" -> glycine
      | "Proline" -> proline
      | s -> 
	  molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol 
	    (Mars_v.molecule_aminoacid_regular_symbol_of_string s)
;;

let read ib =
  let str = Scanf.bscanf ib "%s" (fun s -> s) in
  Scanf.sscanf str "%s" molecule_aminoacid_symbol_of_string
;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_aminoacid 12 January 2011. *)

