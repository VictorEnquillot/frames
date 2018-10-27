(** {3 A Symbol for a Peptideca.} *)

let nam_mod = "Peptideca_symbol_v";;

(** {6 Modules.} *)

module Mars_t = Molecule_aminoacid_regular_symbol_t
module Mars_v = Molecule_aminoacid_regular_symbol_v
module Pas_t = Peptideca_symbol_t
module Pbfs_t = Peptideca_buried_fragmented_symbol_t
module Pbfs_v = Peptideca_buried_fragmented_symbol_v
module Pbss_t = Peptideca_buried_segmented_symbol_t
module Pbss_v = Peptideca_buried_segmented_symbol_v
module Pbs_t = Peptideca_buried_symbol_t
module Pbs_v = Peptideca_buried_symbol_v
module Pnfs_t = Peptideca_nterminal_fragmented_symbol_t
module Pnfs_v = Peptideca_nterminal_fragmented_symbol_v
module Pnss_t = Peptideca_nterminal_segmented_symbol_t
module Pnss_v = Peptideca_nterminal_segmented_symbol_v
module Pns_t = Peptideca_nterminal_symbol_t
module Pns_v = Peptideca_nterminal_symbol_v

(** {6 Displaying.} *)

let name = function
  | Pas_t.Peptideca_buried_symbol smb_pcb -> 
      Pbs_v.name smb_pcb
  | Pas_t.Peptideca_nterminal_symbol smb_pcn -> 
      Pns_v.name smb_pcn
;;

let print ppf = function
  | Pas_t.Peptideca_buried_symbol smb_pcb -> 
      Pbs_v.print ppf smb_pcb
  | Pas_t.Peptideca_nterminal_symbol smb_pcn -> 
      Pns_v.print ppf smb_pcn
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found peptideca_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Peptideca_buried from Peptideca.} *)

let peptideca_buried_symbol_off_peptideca_symbol = function
  | Pas_t.Peptideca_buried_symbol smb_pcb -> smb_pcb
  | s ->  print_fatal_error
      "peptideca_buried_symbol_off_peptideca_symbol"
      "Peptideca_buried_symbol" (name s)
;;

(** {9 Extracting Peptideca_buried_segmented from Peptideca_buried from Peptideca.} *)

let peptideca_buried_segmented_symbol_off_peptideca_symbol smb_pca =
  let smb_pcb = peptideca_buried_symbol_off_peptideca_symbol smb_pca in
    Pbs_v.peptideca_buried_segmented_symbol_off_peptideca_buried_symbol smb_pcb
;;

(** {12 Extracting Molecule_aminoacid_glycine from Peptideca_buried_segmented from Peptideca_buried from Peptideca.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {9 Extracting Peptideca_buried_fragmented from Peptideca_buried from Peptideca.} *)

let peptideca_buried_fragmented_symbol_off_peptideca_symbol smb_pca =
  let smb_pcb = peptideca_buried_symbol_off_peptideca_symbol smb_pca in
    Pbs_v.peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol smb_pcb
;;

(** {12 Extracting Molecule_aminoacid_proline from Peptideca_buried_fragmented from Peptideca_buried from Peptideca.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Peptideca_buried_fragmented from Peptideca_buried from Peptideca.} *)

let molecule_aminoacid_regular_symbol_off_peptideca_symbol smb_pca =
  let smb_pbf = peptideca_buried_fragmented_symbol_off_peptideca_symbol smb_pca in
    Pbfs_v.molecule_aminoacid_regular_symbol_off_peptideca_buried_fragmented_symbol smb_pbf
;;

(** {6 Extracting Peptideca_nterminal from Peptideca.} *)

let peptideca_nterminal_symbol_off_peptideca_symbol = function
  | Pas_t.Peptideca_nterminal_symbol smb_pcn -> smb_pcn
  | s ->  print_fatal_error
      "peptideca_nterminal_symbol_off_peptideca_symbol"
      "Peptideca_nterminal_symbol" (name s)
;;

(** {9 Extracting Peptideca_nterminal_segmented from Peptideca_nterminal from Peptideca.} *)

let peptideca_nterminal_segmented_symbol_off_peptideca_symbol smb_pca =
  let smb_pcn = peptideca_nterminal_symbol_off_peptideca_symbol smb_pca in
    Pns_v.peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol smb_pcn
;;

(** {12 Extracting Molecule_aminoacid_glycine from Peptideca_nterminal_segmented from Peptideca_nterminal from Peptideca.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {9 Extracting Peptideca_nterminal_fragmented from Peptideca_nterminal from Peptideca.} *)

let peptideca_nterminal_fragmented_symbol_off_peptideca_symbol smb_pca =
  let smb_pcn = peptideca_nterminal_symbol_off_peptideca_symbol smb_pca in
    Pns_v.peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol smb_pcn
;;

(** {12 Extracting Molecule_aminoacid_proline from Peptideca_nterminal_fragmented from Peptideca_nterminal from Peptideca.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Peptideca_nterminal_fragmented from Peptideca_nterminal from Peptideca.} *)

let molecule_aminoacid_regular_symbol_off_peptideca_symbol smb_pca =
  let smb_pnf = peptideca_nterminal_fragmented_symbol_off_peptideca_symbol smb_pca in
    Pnfs_v.molecule_aminoacid_regular_symbol_off_peptideca_nterminal_fragmented_symbol smb_pnf
;;

(** {6 Querying.} *)

(** {6 Querying Peptideca_buried in Peptideca.} *)

let is_peptideca_buried_symbol_off_peptideca_symbol = function
  | Pas_t.Peptideca_buried_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Peptideca_buried_segmented in Peptideca_buried in Peptideca.} *)

let is_peptideca_buried_segmented_symbol_off_peptideca_symbol smb_pca =
  if not (is_peptideca_buried_symbol_off_peptideca_symbol smb_pca)
  then false
  else
    begin
      let smb_pcb = peptideca_buried_symbol_off_peptideca_symbol smb_pca in
      Pbs_v.is_peptideca_buried_segmented_symbol_off_peptideca_buried_symbol smb_pcb
    end
;;

(** {12 Querying Molecule_aminoacid_glycine in Peptideca_buried_segmented in Peptideca_buried in Peptideca.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {9 Querying Peptideca_buried_fragmented in Peptideca_buried in Peptideca.} *)

let is_peptideca_buried_fragmented_symbol_off_peptideca_symbol smb_pca =
  if not (is_peptideca_buried_symbol_off_peptideca_symbol smb_pca)
  then false
  else
    begin
      let smb_pcb = peptideca_buried_symbol_off_peptideca_symbol smb_pca in
      Pbs_v.is_peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol smb_pcb
    end
;;

(** {12 Querying Molecule_aminoacid_proline in Peptideca_buried_fragmented in Peptideca_buried in Peptideca.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {12 Querying Molecule_aminoacid_regular in Peptideca_buried_fragmented in Peptideca_buried in Peptideca.} *)

let is_molecule_aminoacid_regular_symbol_off_peptideca_symbol smb_pca =
  if not (is_peptideca_buried_fragmented_symbol_off_peptideca_symbol smb_pca)
  then false
  else
    begin
      let smb_pbf = peptideca_buried_fragmented_symbol_off_peptideca_symbol smb_pca in
      Pbfs_v.is_molecule_aminoacid_regular_symbol_off_peptideca_buried_fragmented_symbol smb_pbf
    end
;;

(** {6 Querying Peptideca_nterminal in Peptideca.} *)

let is_peptideca_nterminal_symbol_off_peptideca_symbol = function
  | Pas_t.Peptideca_nterminal_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Peptideca_nterminal_segmented in Peptideca_nterminal in Peptideca.} *)

let is_peptideca_nterminal_segmented_symbol_off_peptideca_symbol smb_pca =
  if not (is_peptideca_nterminal_symbol_off_peptideca_symbol smb_pca)
  then false
  else
    begin
      let smb_pcn = peptideca_nterminal_symbol_off_peptideca_symbol smb_pca in
      Pns_v.is_peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol smb_pcn
    end
;;

(** {12 Querying Molecule_aminoacid_glycine in Peptideca_nterminal_segmented in Peptideca_nterminal in Peptideca.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {9 Querying Peptideca_nterminal_fragmented in Peptideca_nterminal in Peptideca.} *)

let is_peptideca_nterminal_fragmented_symbol_off_peptideca_symbol smb_pca =
  if not (is_peptideca_nterminal_symbol_off_peptideca_symbol smb_pca)
  then false
  else
    begin
      let smb_pcn = peptideca_nterminal_symbol_off_peptideca_symbol smb_pca in
      Pns_v.is_peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol smb_pcn
    end
;;

(** {12 Querying Molecule_aminoacid_proline in Peptideca_nterminal_fragmented in Peptideca_nterminal in Peptideca.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {12 Querying Molecule_aminoacid_regular in Peptideca_nterminal_fragmented in Peptideca_nterminal in Peptideca.} *)

let is_molecule_aminoacid_regular_symbol_off_peptideca_symbol smb_pca =
  if not (is_peptideca_nterminal_fragmented_symbol_off_peptideca_symbol smb_pca)
  then false
  else
    begin
      let smb_pnf = peptideca_nterminal_fragmented_symbol_off_peptideca_symbol smb_pca in
      Pnfs_v.is_molecule_aminoacid_regular_symbol_off_peptideca_nterminal_fragmented_symbol smb_pnf
    end
;;

(** {6 Upgrading from Peptideca_buried to Peptideca.} *)

let peptideca_symbol_of_peptideca_buried_symbol smb_pcb =
  Pas_t.Peptideca_buried_symbol smb_pcb
;;

(** {9 Upgrading from Peptideca_buried_segmented through Peptideca_buried to Peptideca.} *)

let peptideca_symbol_of_peptideca_buried_segmented_symbol smb_pbs =
  let smb_pcb = Pbs_v.peptideca_buried_symbol_of_peptideca_buried_segmented_symbol smb_pbs in
  peptideca_symbol_of_peptideca_buried_symbol smb_pcb
;;

(** {12 Upgrading from Molecule_aminoacid_glycine through Peptideca_buried_segmented through Peptideca_buried to Peptideca.} *)

let molecule_aminoacid_glycine = peptideca_symbol_of_peptideca_buried_segmented_symbol Pbss_t.Molecule_aminoacid_glycine;;

(** {9 Upgrading from Peptideca_buried_fragmented through Peptideca_buried to Peptideca.} *)

let peptideca_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
  let smb_pcb = Pbs_v.peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol smb_pbf in
  peptideca_symbol_of_peptideca_buried_symbol smb_pcb
;;

(** {12 Upgrading from Molecule_aminoacid_proline through Peptideca_buried_fragmented through Peptideca_buried to Peptideca.} *)

let molecule_aminoacid_proline = peptideca_symbol_of_peptideca_buried_fragmented_symbol Pbfs_t.Molecule_aminoacid_proline;;

(** {12 Upgrading from Molecule_aminoacid_regular through Peptideca_buried_fragmented through Peptideca_buried to Peptideca.} *)

let peptideca_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_pbf = Pbfs_v.peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
    peptideca_symbol_of_peptideca_buried_fragmented_symbol smb_pbf
;;

(** {6 Upgrading from Peptideca_nterminal to Peptideca.} *)

let peptideca_symbol_of_peptideca_nterminal_symbol smb_pcn =
  Pas_t.Peptideca_nterminal_symbol smb_pcn
;;

(** {9 Upgrading from Peptideca_nterminal_segmented through Peptideca_nterminal to Peptideca.} *)

let peptideca_symbol_of_peptideca_nterminal_segmented_symbol smb_pns =
  let smb_pcn = Pns_v.peptideca_nterminal_symbol_of_peptideca_nterminal_segmented_symbol smb_pns in
  peptideca_symbol_of_peptideca_nterminal_symbol smb_pcn
;;

(** {12 Upgrading from Molecule_aminoacid_glycine through Peptideca_nterminal_segmented through Peptideca_nterminal to Peptideca.} *)

let molecule_aminoacid_glycine = peptideca_symbol_of_peptideca_nterminal_segmented_symbol Pnss_t.Molecule_aminoacid_glycine;;

(** {9 Upgrading from Peptideca_nterminal_fragmented through Peptideca_nterminal to Peptideca.} *)

let peptideca_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
  let smb_pcn = Pns_v.peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf in
  peptideca_symbol_of_peptideca_nterminal_symbol smb_pcn
;;

(** {12 Upgrading from Molecule_aminoacid_proline through Peptideca_nterminal_fragmented through Peptideca_nterminal to Peptideca.} *)

let molecule_aminoacid_proline = peptideca_symbol_of_peptideca_nterminal_fragmented_symbol Pnfs_t.Molecule_aminoacid_proline;;

(** {12 Upgrading from Molecule_aminoacid_regular through Peptideca_nterminal_fragmented through Peptideca_nterminal to Peptideca.} *)

let peptideca_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_pnf = Pnfs_v.peptideca_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
    peptideca_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf
;;

(** created by ./do_entitysum_symbol_v_ml.sh peptideca 12 January 2011. *)

