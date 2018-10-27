(** {3 A Symbol for a Residue.} *)

let nam_mod = "Residue_symbol_v";;

(** {6 Modules.} *)

module Mars_t = Molecule_aminoacid_regular_symbol_t
module Mars_v = Molecule_aminoacid_regular_symbol_v
module Rbfs_t = Residue_buried_fragmented_symbol_t
module Rbfs_v = Residue_buried_fragmented_symbol_v
module Rbss_t = Residue_buried_segmented_symbol_t
module Rbss_v = Residue_buried_segmented_symbol_v
module Rbs_t = Residue_buried_symbol_t
module Rbs_v = Residue_buried_symbol_v
module Rnfs_t = Residue_nterminal_fragmented_symbol_t
module Rnfs_v = Residue_nterminal_fragmented_symbol_v
module Rnss_t = Residue_nterminal_segmented_symbol_t
module Rnss_v = Residue_nterminal_segmented_symbol_v
module Rns_t = Residue_nterminal_symbol_t
module Rns_v = Residue_nterminal_symbol_v
module Rss_t = Residue_symbol_t

(** {6 Displaying.} *)

let name = function
  | Rss_t.Residue_nterminal_symbol smb_rsn -> 
      Rns_v.name smb_rsn
  | Rss_t.Residue_buried_symbol smb_rse -> 
      Rbs_v.name smb_rse
;;

let print ppf = function
  | Rss_t.Residue_nterminal_symbol smb_rsn -> 
      Rns_v.print ppf smb_rsn
  | Rss_t.Residue_buried_symbol smb_rse -> 
      Rbs_v.print ppf smb_rse
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found residue_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Residue_nterminal from Residue.} *)

let residue_nterminal_symbol_off_residue_symbol = function
  | Rss_t.Residue_nterminal_symbol smb_rsn -> smb_rsn
  | s ->  print_fatal_error
      "residue_nterminal_symbol_off_residue_symbol"
      "Residue_nterminal_symbol" (name s)
;;

(** {9 Extracting Residue_nterminal_segmented from Residue_nterminal from Residue.} *)

let residue_nterminal_segmented_symbol_off_residue_symbol smb_res =
  let smb_rsn = residue_nterminal_symbol_off_residue_symbol smb_res in
    Rns_v.residue_nterminal_segmented_symbol_off_residue_nterminal_symbol smb_rsn
;;

(** {12 Extracting Molecule_aminoacid_glycine from Residue_nterminal_segmented from Residue_nterminal from Residue.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {9 Extracting Residue_nterminal_fragmented from Residue_nterminal from Residue.} *)

let residue_nterminal_fragmented_symbol_off_residue_symbol smb_res =
  let smb_rsn = residue_nterminal_symbol_off_residue_symbol smb_res in
    Rns_v.residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_rsn
;;

(** {12 Extracting Molecule_aminoacid_proline from Residue_nterminal_fragmented from Residue_nterminal from Residue.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Residue_nterminal_fragmented from Residue_nterminal from Residue.} *)

let molecule_aminoacid_regular_symbol_off_residue_symbol smb_res =
  let smb_rnf = residue_nterminal_fragmented_symbol_off_residue_symbol smb_res in
    Rnfs_v.molecule_aminoacid_regular_symbol_off_residue_nterminal_fragmented_symbol smb_rnf
;;

(** {6 Extracting Residue_buried from Residue.} *)

let residue_buried_symbol_off_residue_symbol = function
  | Rss_t.Residue_buried_symbol smb_rse -> smb_rse
  | s ->  print_fatal_error
      "residue_buried_symbol_off_residue_symbol"
      "Residue_buried_symbol" (name s)
;;

(** {9 Extracting Residue_buried_segmented from Residue_buried from Residue.} *)

let residue_buried_segmented_symbol_off_residue_symbol smb_res =
  let smb_rse = residue_buried_symbol_off_residue_symbol smb_res in
    Rbs_v.residue_buried_segmented_symbol_off_residue_buried_symbol smb_rse
;;

(** {12 Extracting Molecule_aminoacid_glycine from Residue_buried_segmented from Residue_buried from Residue.} *)

(* No Extraction from molecule_aminoacid_glycine 0. *)

(** {9 Extracting Residue_buried_fragmented from Residue_buried from Residue.} *)

let residue_buried_fragmented_symbol_off_residue_symbol smb_res =
  let smb_rse = residue_buried_symbol_off_residue_symbol smb_res in
    Rbs_v.residue_buried_fragmented_symbol_off_residue_buried_symbol smb_rse
;;

(** {12 Extracting Molecule_aminoacid_proline from Residue_buried_fragmented from Residue_buried from Residue.} *)

(* No Extraction from molecule_aminoacid_proline 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Residue_buried_fragmented from Residue_buried from Residue.} *)

let molecule_aminoacid_regular_symbol_off_residue_symbol smb_res =
  let smb_rbf = residue_buried_fragmented_symbol_off_residue_symbol smb_res in
    Rbfs_v.molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol smb_rbf
;;

(** {6 Querying.} *)

(** {6 Querying Residue_nterminal in Residue.} *)

let is_residue_nterminal_symbol_off_residue_symbol = function
  | Rss_t.Residue_nterminal_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Residue_nterminal_segmented in Residue_nterminal in Residue.} *)

let is_residue_nterminal_segmented_symbol_off_residue_symbol smb_res =
  if not (is_residue_nterminal_symbol_off_residue_symbol smb_res)
  then false
  else
    begin
      let smb_rsn = residue_nterminal_symbol_off_residue_symbol smb_res in
      Rns_v.is_residue_nterminal_segmented_symbol_off_residue_nterminal_symbol smb_rsn
    end
;;

(** {12 Querying Molecule_aminoacid_glycine in Residue_nterminal_segmented in Residue_nterminal in Residue.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {9 Querying Residue_nterminal_fragmented in Residue_nterminal in Residue.} *)

let is_residue_nterminal_fragmented_symbol_off_residue_symbol smb_res =
  if not (is_residue_nterminal_symbol_off_residue_symbol smb_res)
  then false
  else
    begin
      let smb_rsn = residue_nterminal_symbol_off_residue_symbol smb_res in
      Rns_v.is_residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_rsn
    end
;;

(** {12 Querying Molecule_aminoacid_proline in Residue_nterminal_fragmented in Residue_nterminal in Residue.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {12 Querying Molecule_aminoacid_regular in Residue_nterminal_fragmented in Residue_nterminal in Residue.} *)

let is_molecule_aminoacid_regular_symbol_off_residue_symbol smb_res =
  if not (is_residue_nterminal_fragmented_symbol_off_residue_symbol smb_res)
  then false
  else
    begin
      let smb_rnf = residue_nterminal_fragmented_symbol_off_residue_symbol smb_res in
      Rnfs_v.is_molecule_aminoacid_regular_symbol_off_residue_nterminal_fragmented_symbol smb_rnf
    end
;;

(** {6 Querying Residue_buried in Residue.} *)

let is_residue_buried_symbol_off_residue_symbol = function
  | Rss_t.Residue_buried_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Residue_buried_segmented in Residue_buried in Residue.} *)

let is_residue_buried_segmented_symbol_off_residue_symbol smb_res =
  if not (is_residue_buried_symbol_off_residue_symbol smb_res)
  then false
  else
    begin
      let smb_rse = residue_buried_symbol_off_residue_symbol smb_res in
      Rbs_v.is_residue_buried_segmented_symbol_off_residue_buried_symbol smb_rse
    end
;;

(** {12 Querying Molecule_aminoacid_glycine in Residue_buried_segmented in Residue_buried in Residue.} *)

(* No Query from molecule_aminoacid_glycine 0. *)

(** {9 Querying Residue_buried_fragmented in Residue_buried in Residue.} *)

let is_residue_buried_fragmented_symbol_off_residue_symbol smb_res =
  if not (is_residue_buried_symbol_off_residue_symbol smb_res)
  then false
  else
    begin
      let smb_rse = residue_buried_symbol_off_residue_symbol smb_res in
      Rbs_v.is_residue_buried_fragmented_symbol_off_residue_buried_symbol smb_rse
    end
;;

(** {12 Querying Molecule_aminoacid_proline in Residue_buried_fragmented in Residue_buried in Residue.} *)

(* No Query from molecule_aminoacid_proline 0. *)

(** {12 Querying Molecule_aminoacid_regular in Residue_buried_fragmented in Residue_buried in Residue.} *)

let is_molecule_aminoacid_regular_symbol_off_residue_symbol smb_res =
  if not (is_residue_buried_fragmented_symbol_off_residue_symbol smb_res)
  then false
  else
    begin
      let smb_rbf = residue_buried_fragmented_symbol_off_residue_symbol smb_res in
      Rbfs_v.is_molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol smb_rbf
    end
;;

(** {6 Upgrading from Residue_nterminal to Residue.} *)

let residue_symbol_of_residue_nterminal_symbol smb_rsn =
  Rss_t.Residue_nterminal_symbol smb_rsn
;;

(** {9 Upgrading from Residue_nterminal_segmented through Residue_nterminal to Residue.} *)

let residue_symbol_of_residue_nterminal_segmented_symbol smb_rns =
  let smb_rsn = Rns_v.residue_nterminal_symbol_of_residue_nterminal_segmented_symbol smb_rns in
  residue_symbol_of_residue_nterminal_symbol smb_rsn
;;

(** {12 Upgrading from Molecule_aminoacid_glycine through Residue_nterminal_segmented through Residue_nterminal to Residue.} *)

let molecule_aminoacid_glycine = residue_symbol_of_residue_nterminal_segmented_symbol Rnss_t.Molecule_aminoacid_glycine;;

(** {9 Upgrading from Residue_nterminal_fragmented through Residue_nterminal to Residue.} *)

let residue_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
  let smb_rsn = Rns_v.residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol smb_rnf in
  residue_symbol_of_residue_nterminal_symbol smb_rsn
;;

(** {12 Upgrading from Molecule_aminoacid_proline through Residue_nterminal_fragmented through Residue_nterminal to Residue.} *)

let molecule_aminoacid_proline = residue_symbol_of_residue_nterminal_fragmented_symbol Rnfs_t.Molecule_aminoacid_proline;;

(** {12 Upgrading from Molecule_aminoacid_regular through Residue_nterminal_fragmented through Residue_nterminal to Residue.} *)

let residue_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_rnf = Rnfs_v.residue_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
    residue_symbol_of_residue_nterminal_fragmented_symbol smb_rnf
;;

(** {6 Upgrading from Residue_buried to Residue.} *)

let residue_symbol_of_residue_buried_symbol smb_rse =
  Rss_t.Residue_buried_symbol smb_rse
;;

(** {9 Upgrading from Residue_buried_segmented through Residue_buried to Residue.} *)

let residue_symbol_of_residue_buried_segmented_symbol smb_rbs =
  let smb_rse = Rbs_v.residue_buried_symbol_of_residue_buried_segmented_symbol smb_rbs in
  residue_symbol_of_residue_buried_symbol smb_rse
;;

(** {12 Upgrading from Molecule_aminoacid_glycine through Residue_buried_segmented through Residue_buried to Residue.} *)

let molecule_aminoacid_glycine = residue_symbol_of_residue_buried_segmented_symbol Rbss_t.Molecule_aminoacid_glycine;;

(** {9 Upgrading from Residue_buried_fragmented through Residue_buried to Residue.} *)

let residue_symbol_of_residue_buried_fragmented_symbol smb_rbf =
  let smb_rse = Rbs_v.residue_buried_symbol_of_residue_buried_fragmented_symbol smb_rbf in
  residue_symbol_of_residue_buried_symbol smb_rse
;;

(** {12 Upgrading from Molecule_aminoacid_proline through Residue_buried_fragmented through Residue_buried to Residue.} *)

let molecule_aminoacid_proline = residue_symbol_of_residue_buried_fragmented_symbol Rbfs_t.Molecule_aminoacid_proline;;

(** {12 Upgrading from Molecule_aminoacid_regular through Residue_buried_fragmented through Residue_buried to Residue.} *)

let residue_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_rbf = Rbfs_v.residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
    residue_symbol_of_residue_buried_fragmented_symbol smb_rbf
;;

(** created by ./do_entitysum_symbol_v_ml.sh residue 12 January 2011. *)

