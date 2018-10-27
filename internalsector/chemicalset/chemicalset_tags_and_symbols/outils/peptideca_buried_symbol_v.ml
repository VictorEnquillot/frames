(** {3 A Symbol for a Peptideca_buried.} *)

let nam_cod = "peptideca_buried_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Pbss_v = Peptideca_buried_segmented_symbol_v
module Pbfs_v = Peptideca_buried_fragmented_symbol_v


let name = function
  | Pbs_v smb_pbs ->
      Pbss_v.name smb_pbs
  | Pbs_v smb_pbf ->
      Pbfs_v.name smb_pbf
;;


let print ppf = function
  | Pbs_v smb_pbs ->
      Pbss_v.print ppf smb_pbs
  | Pbs_v smb_pbf ->
      Pbfs_v.print ppf smb_pbf
;;


(** {6 Extracting.} *)

let peptideca_buried_segmented_symbol_off_peptideca_buried_symbol = function
  | Pbs_v smb_pbs -> smb_pbs
  | s -> Erm_v.print_fatal_error nam_cod
     "peptideca_buried_segmented_symbol_off_peptideca_buried_symbol"
     "Peptideca_buried_segmented_symbol"
     (name s)
    "check"
;;

let peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol = function
  | Pbs_v smb_pbf -> smb_pbf
  | s -> Erm_v.print_fatal_error nam_cod
     "peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol"
     "Peptideca_buried_fragmented_symbol"
     (name s)
    "check"
;;

let molecule_aminoacid_regular_symbol_off_peptideca_buried_symbol smb_peb =
  let smb_pbf = peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol smb_peb in
    Pbfs_v_off_peptideca_buried_fragmented_symbol smb_pbf
;;


(** {6 Querying.} *)

let is_peptideca_buried_segmented_symbol_off_peptideca_buried_symbol = function
  | Peptideca_buried_symbol_t.Peptideca_buried_segmented_symbol _ -> true
  | _ -> false
;;

let is_peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol = function
  | Peptideca_buried_symbol_t.Peptideca_buried_fragmented_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_regular_symbol_off_peptideca_buried_symbol smb_peb =
  if not (is_peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol smb_peb)
  then false
  else
    begin
  let smb_pbf = peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol smb_peb in
      Pbfs_v.is_molecule_aminoacid_regular_symbol_off_peptideca_buried_fragmented_symbol smb_pbf
    end
;;


(** {6 Upgrading.} *)

let peptideca_buried_symbol_of_peptideca_buried_segmented_symbol smb_pbs =
Pbs_v.peptideca_buried_segmented_symbol smb_pbs
;;

let peptideca_buried_segmented_symbol_of_peptideca_buried_segmented_symbol smb_pbs =
Pbss_v.peptideca_buried_segmented_symbol smb_pbs
;;

let peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Pbs_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let peptideca_buried_fragmented_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Pbfs_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_pbf = Pbfs_v.peptideca_buried_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
Mars_v.peptideca_buried_fragmented_symbol smb_pbf
;;



(** created by ./generator peptideca_buried v symbol at 11:8 26 Apr 2011. *)



