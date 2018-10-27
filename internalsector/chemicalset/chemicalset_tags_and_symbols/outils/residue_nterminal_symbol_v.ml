(** {3 A Symbol for a Residue_nterminal.} *)

let nam_cod = "residue_nterminal_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Rnss_v = Residue_nterminal_segmented_symbol_v
module Rnfs_v = Residue_nterminal_fragmented_symbol_v


let name = function
  | Rns_v smb_rns ->
      Rnss_v.name smb_rns
  | Rns_v smb_rnf ->
      Rnfs_v.name smb_rnf
;;


let print ppf = function
  | Rns_v smb_rns ->
      Rnss_v.print ppf smb_rns
  | Rns_v smb_rnf ->
      Rnfs_v.print ppf smb_rnf
;;


(** {6 Extracting.} *)

let residue_nterminal_segmented_symbol_off_residue_nterminal_symbol = function
  | Rns_v smb_rns -> smb_rns
  | s -> Erm_v.print_fatal_error nam_cod
     "residue_nterminal_segmented_symbol_off_residue_nterminal_symbol"
     "Residue_nterminal_segmented_symbol"
     (name s)
    "check"
;;

let residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol = function
  | Rns_v smb_rnf -> smb_rnf
  | s -> Erm_v.print_fatal_error nam_cod
     "residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol"
     "Residue_nterminal_fragmented_symbol"
     (name s)
    "check"
;;

let molecule_aminoacid_regular_symbol_off_residue_nterminal_symbol smb_ren =
  let smb_rnf = residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_ren in
    Rnfs_v_off_residue_nterminal_fragmented_symbol smb_rnf
;;


(** {6 Querying.} *)

let is_residue_nterminal_segmented_symbol_off_residue_nterminal_symbol = function
  | Residue_nterminal_symbol_t.Residue_nterminal_segmented_symbol _ -> true
  | _ -> false
;;

let is_residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol = function
  | Residue_nterminal_symbol_t.Residue_nterminal_fragmented_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_regular_symbol_off_residue_nterminal_symbol smb_ren =
  if not (is_residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_ren)
  then false
  else
    begin
  let smb_rnf = residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_ren in
      Rnfs_v.is_molecule_aminoacid_regular_symbol_off_residue_nterminal_fragmented_symbol smb_rnf
    end
;;


(** {6 Upgrading.} *)

let residue_nterminal_symbol_of_residue_nterminal_segmented_symbol smb_rns =
Rns_v.residue_nterminal_segmented_symbol smb_rns
;;

let residue_nterminal_segmented_symbol_of_residue_nterminal_segmented_symbol smb_rns =
Rnss_v.residue_nterminal_segmented_symbol smb_rns
;;

let residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Rns_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let residue_nterminal_fragmented_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Rnfs_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let residue_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_rnf = Rnfs_v.residue_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;

let molecule_aminoacid_regular_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
Mars_v.residue_nterminal_fragmented_symbol smb_rnf
;;



(** created by ./generator residue_nterminal v symbol at 11:8 26 Apr 2011. *)



