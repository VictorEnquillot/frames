(** {3 A Symbol for a Residue_buried.} *)

let nam_cod = "residue_buried_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Rbss_v = Residue_buried_segmented_symbol_v
module Rbfs_v = Residue_buried_fragmented_symbol_v


let name = function
  | Rbs_v smb_rbs ->
      Rbss_v.name smb_rbs
  | Rbs_v smb_rbf ->
      Rbfs_v.name smb_rbf
;;


let print ppf = function
  | Rbs_v smb_rbs ->
      Rbss_v.print ppf smb_rbs
  | Rbs_v smb_rbf ->
      Rbfs_v.print ppf smb_rbf
;;


(** {6 Extracting.} *)

let residue_buried_segmented_symbol_off_residue_buried_symbol = function
  | Rbs_v smb_rbs -> smb_rbs
  | s -> Erm_v.print_fatal_error nam_cod
     "residue_buried_segmented_symbol_off_residue_buried_symbol"
     "Residue_buried_segmented_symbol"
     (name s)
    "check"
;;

let residue_buried_fragmented_symbol_off_residue_buried_symbol = function
  | Rbs_v smb_rbf -> smb_rbf
  | s -> Erm_v.print_fatal_error nam_cod
     "residue_buried_fragmented_symbol_off_residue_buried_symbol"
     "Residue_buried_fragmented_symbol"
     (name s)
    "check"
;;

let molecule_aminoacid_regular_symbol_off_residue_buried_symbol smb_reb =
  let smb_rbf = residue_buried_fragmented_symbol_off_residue_buried_symbol smb_reb in
    Rbfs_v_off_residue_buried_fragmented_symbol smb_rbf
;;


(** {6 Querying.} *)

let is_residue_buried_segmented_symbol_off_residue_buried_symbol = function
  | Residue_buried_symbol_t.Residue_buried_segmented_symbol _ -> true
  | _ -> false
;;

let is_residue_buried_fragmented_symbol_off_residue_buried_symbol = function
  | Residue_buried_symbol_t.Residue_buried_fragmented_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_regular_symbol_off_residue_buried_symbol smb_reb =
  if not (is_residue_buried_fragmented_symbol_off_residue_buried_symbol smb_reb)
  then false
  else
    begin
  let smb_rbf = residue_buried_fragmented_symbol_off_residue_buried_symbol smb_reb in
      Rbfs_v.is_molecule_aminoacid_regular_symbol_off_residue_buried_fragmented_symbol smb_rbf
    end
;;


(** {6 Upgrading.} *)

let residue_buried_symbol_of_residue_buried_segmented_symbol smb_rbs =
Rbs_v.residue_buried_segmented_symbol smb_rbs
;;

let residue_buried_segmented_symbol_of_residue_buried_segmented_symbol smb_rbs =
Rbss_v.residue_buried_segmented_symbol smb_rbs
;;

let residue_buried_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Rbs_v.residue_buried_fragmented_symbol smb_rbf
;;

let residue_buried_fragmented_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Rbfs_v.residue_buried_fragmented_symbol smb_rbf
;;

let residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_rbf = Rbfs_v.residue_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
residue_buried_symbol_of_residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;

let molecule_aminoacid_regular_symbol_of_residue_buried_fragmented_symbol smb_rbf =
Mars_v.residue_buried_fragmented_symbol smb_rbf
;;



(** created by ./generator residue_buried v symbol at 11:8 26 Apr 2011. *)



