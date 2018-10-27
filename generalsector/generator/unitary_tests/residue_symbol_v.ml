(** {3 A Symbol for a Residue.} *)

let nam_cod = "residue_symbol_v.ml";;


(** {6 Modules.} *)

module Mars_v = Molecule_aminoacid_regular_symbol_v
module Rbfs_v = Residue_buried_fragmented_symbol_v
module Rbss_v = Residue_buried_segmented_symbol_v
module Rbs_v = Residue_buried_symbol_v
module Rnfs_v = Residue_nterminal_fragmented_symbol_v
module Rnss_v = Residue_nterminal_segmented_symbol_v
module Rns_v = Residue_nterminal_symbol_v

module Mars_t = Molecule_aminoacid_regular_symbol_t
module Rbfs_t = Residue_buried_fragmented_symbol_t
module Rbss_t = Residue_buried_segmented_symbol_t
module Rnfs_t = Residue_nterminal_fragmented_symbol_t
module Rnss_t = Residue_nterminal_segmented_symbol_t
module Rbs_t = Residue_buried_symbol_t
module Rns_t = Residue_nterminal_symbol_t
module Res_t = Residue_symbol_t



(** {6 Naming.} *)

let name = function
  | Res_t.Residue_nterminal_symbol smb_ren ->
      Rns_v.name smb_ren
  | Res_t.Residue_buried_symbol smb_reb ->
      Rbs_v.name smb_reb
;;


(** {6 Printing.} *)

let print ppf = function
  | Res_t.Residue_nterminal_symbol smb_ren ->
      Rns_v.print ppf smb_ren
  | Res_t.Residue_buried_symbol smb_reb ->
      Rbs_v.print ppf smb_reb
;;


(** {6 Extracting.} *)


let residue_nterminal_symbol_off_residue_symbol = function
  | Res_t.Residue_nterminal_symbol smb_ren -> smb_ren
  | s -> Erm_v.print_fatal_error nam_cod
     "residue_nterminal_symbol_off_residue_symbol"
     "Residue_nterminal_symbol"
     (name s)
    "check"
;;

let residue_nterminal_segmented_symbol_off_residue_symbol smb_ree =
  let smb_ren = residue_nterminal_symbol_off_residue_symbol smb_ree in
    Rns_v_off_residue_nterminal_symbol smb_ren
;;

let residue_nterminal_fragmented_symbol_off_residue_symbol smb_ree =
  let smb_ren = residue_nterminal_symbol_off_residue_symbol smb_ree in
    Rns_v_off_residue_nterminal_symbol smb_ren
;;

let molecule_aminoacid_regular_symbol_off_residue_symbol smb_ree =
  let smb_rnf = residue_nterminal_fragmented_symbol_off_residue_symbol smb_ree in
    Rnfs_v_off_residue_nterminal_fragmented_symbol smb_rnf
;;

let residue_buried_symbol_off_residue_symbol = function
  | Res_t.Residue_buried_symbol smb_reb -> smb_reb
  | s -> Erm_v.print_fatal_error nam_cod
     "residue_buried_symbol_off_residue_symbol"
     "Residue_buried_symbol"
     (name s)
    "check"
;;

let residue_buried_segmented_symbol_off_residue_symbol smb_ree =
  let smb_reb = residue_buried_symbol_off_residue_symbol smb_ree in
    Rbs_v_off_residue_buried_symbol smb_reb
;;

let residue_buried_fragmented_symbol_off_residue_symbol smb_ree =
  let smb_reb = residue_buried_symbol_off_residue_symbol smb_ree in
    Rbs_v_off_residue_buried_symbol smb_reb
;;

let molecule_aminoacid_regular_symbol_off_residue_symbol smb_ree =
  let smb_rbf = residue_buried_fragmented_symbol_off_residue_symbol smb_ree in
    Rbfs_v_off_residue_buried_fragmented_symbol smb_rbf
;;


(** {6 Querying.} *)


let is_residue_nterminal_symbol_off_residue_symbol = function
  | Res_t.Residue_nterminal_symbol _ -> true
  | _ -> false
;;

let is_residue_nterminal_segmented_symbol_off_residue_symbol smb_ree =
  if not (is_residue_nterminal_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_ren = residue_nterminal_symbol_off_residue_symbol smb_ree in
      Rns_v.is_residue_nterminal_segmented_symbol_off_residue_nterminal_symbol smb_ren
    end
;;

let is_residue_nterminal_fragmented_symbol_off_residue_symbol smb_ree =
  if not (is_residue_nterminal_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_ren = residue_nterminal_symbol_off_residue_symbol smb_ree in
      Rns_v.is_residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_ren
    end
;;

let is_molecule_aminoacid_regular_symbol_off_residue_symbol smb_ree =
  if not (is_residue_nterminal_fragmented_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_rnf = residue_nterminal_fragmented_symbol_off_residue_symbol smb_ree in
      Rnfs_v.is_molecule_aminoacid_regular_symbol_off_residue_nterminal_fragmented_symbol smb_rnf
    end
;;

let is_residue_buried_symbol_off_residue_symbol = function
  | Res_t.Residue_buried_symbol _ -> true
  | _ -> false
;;

let is_residue_buried_segmented_symbol_off_residue_symbol smb_ree =
  if not (is_residue_buried_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_reb = residue_buried_symbol_off_residue_symbol smb_ree in
      Rbs_v.is_residue_buried_segmented_symbol_off_residue_buried_symbol smb_reb
    end
;;

let is_residue_buried_fragmented_symbol_off_residue_symbol smb_ree =
  if not (is_residue_buried_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_reb = residue_buried_symbol_off_residue_symbol smb_ree in
      Rbs_v.is_residue_buried_fragmented_symbol_off_residue_buried_symbol smb_reb
    end
;;

let is_molecule_aminoacid_regular_symbol_off_residue_symbol smb_ree =
  if not (is_residue_buried_fragmented_symbol_off_residue_symbol smb_ree)
  then false
  else
    begin
  let smb_rbf = residue_buried_fragmented_symbol_off_residue_symbol smb_ree in
      Rbfs_v.is_molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol smb_rbf
    end
;;


(** {6 Upgrading.} *)


let residue_symbol_of_residue_nterminal_symbol smb_ren =
Res_t.Residue_nterminal_symbol smb_ren
;;

let residue_nterminal_symbol_of_residue_nterminal_segmented_symbol smb_rns =
  let smb_ren = Rns_v.residue_nterminal_symbol_of_residue_nterminal_segmented_symbol smb_rns in
residue_symbol_of_residue_nterminal_symbol smb_ren
;;

let molecule_aminoacid_glycine = residue_symbol_of_residue_nterminal_segmented_symbol Rnss_t.Molecule_aminoacid_glycine;;

let residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
  let smb_ren = Rns_v.residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol smb_rnf in
residue_symbol_of_residue_nterminal_symbol smb_ren
;;

let molecule_aminoacid_proline = residue_symbol_of_residue_nterminal_fragmented_symbol Rnfs_t.Molecule_aminoacid_proline;;

let residue_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_rnf = Rnfs_v.residue_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
residue_symbol_of_residue_nterminal_fragmented_symbol smb_rnf
;;

let alanine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;

let arginine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;

let asparagine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;

let aspartic = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;

let cysteine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;

let glutamine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;

let glutamic = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;

let histidine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;

let isoleucine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;

let leucine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;

let lysine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;

let methionine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;

let phenylalanine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;

let serine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;

let threonine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;

let tryptophan = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;

let tyrosine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;

let valine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;

let residue_symbol_of_residue_buried_symbol smb_reb =
Res_t.Residue_buried_symbol smb_reb
;;

let residue_buried_symbol_of_residue_buried_segmented_symbol smb_rbs =
  let smb_reb = Rbs_v.residue_buried_symbol_of_residue_buried_segmented_symbol smb_rbs in
residue_symbol_of_residue_buried_symbol smb_reb
;;

let molecule_aminoacid_glycine = residue_symbol_of_residue_buried_segmented_symbol Rbss_t.Molecule_aminoacid_glycine;;

let residue_buried_symbol_of_residue_buried_fragmented_symbol smb_rbf =
  let smb_reb = Rbs_v.residue_buried_symbol_of_residue_buried_fragmented_symbol smb_rbf in
residue_symbol_of_residue_buried_symbol smb_reb
;;

let molecule_aminoacid_proline = residue_symbol_of_residue_buried_fragmented_symbol Rbfs_t.Molecule_aminoacid_proline;;

let residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_rbf = Rbfs_v.residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
residue_symbol_of_residue_buried_fragmented_symbol smb_rbf
;;

let alanine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Alanine;;

let arginine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Arginine;;

let asparagine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Asparagine;;

let aspartic = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Aspartic;;

let cysteine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Cysteine;;

let glutamine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamine;;

let glutamic = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Glutamic;;

let histidine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Histidine;;

let isoleucine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Isoleucine;;

let leucine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Leucine;;

let lysine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Lysine;;

let methionine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Methionine;;

let phenylalanine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Phenylalanine;;

let serine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Serine;;

let threonine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Threonine;;

let tryptophan = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tryptophan;;

let tyrosine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Tyrosine;;

let valine = residue_symbol_of_molecule_aminoacid_regular_symbol Mars_t.Valine;;



(** created by ./generator residue v symbol at 18:46 11 May 2011. *)



