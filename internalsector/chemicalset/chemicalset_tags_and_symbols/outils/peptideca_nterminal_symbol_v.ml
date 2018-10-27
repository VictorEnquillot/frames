(** {3 A Symbol for a Peptideca_nterminal.} *)

let nam_cod = "peptideca_nterminal_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Pnss_v = Peptideca_nterminal_segmented_symbol_v
module Pnfs_v = Peptideca_nterminal_fragmented_symbol_v


let name = function
  | Pns_v smb_pns ->
      Pnss_v.name smb_pns
  | Pns_v smb_pnf ->
      Pnfs_v.name smb_pnf
;;


let print ppf = function
  | Pns_v smb_pns ->
      Pnss_v.print ppf smb_pns
  | Pns_v smb_pnf ->
      Pnfs_v.print ppf smb_pnf
;;


(** {6 Extracting.} *)

let peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol = function
  | Pns_v smb_pns -> smb_pns
  | s -> Erm_v.print_fatal_error nam_cod
     "peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol"
     "Peptideca_nterminal_segmented_symbol"
     (name s)
    "check"
;;

let peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol = function
  | Pns_v smb_pnf -> smb_pnf
  | s -> Erm_v.print_fatal_error nam_cod
     "peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol"
     "Peptideca_nterminal_fragmented_symbol"
     (name s)
    "check"
;;

let molecule_aminoacid_regular_symbol_off_peptideca_nterminal_symbol smb_pen =
  let smb_pnf = peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol smb_pen in
    Pnfs_v_off_peptideca_nterminal_fragmented_symbol smb_pnf
;;


(** {6 Querying.} *)

let is_peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol = function
  | Peptideca_nterminal_symbol_t.Peptideca_nterminal_segmented_symbol _ -> true
  | _ -> false
;;

let is_peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol = function
  | Peptideca_nterminal_symbol_t.Peptideca_nterminal_fragmented_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_regular_symbol_off_peptideca_nterminal_symbol smb_pen =
  if not (is_peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol smb_pen)
  then false
  else
    begin
  let smb_pnf = peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol smb_pen in
      Pnfs_v.is_molecule_aminoacid_regular_symbol_off_peptideca_nterminal_fragmented_symbol smb_pnf
    end
;;


(** {6 Upgrading.} *)

let peptideca_nterminal_symbol_of_peptideca_nterminal_segmented_symbol smb_pns =
Pns_v.peptideca_nterminal_segmented_symbol smb_pns
;;

let peptideca_nterminal_segmented_symbol_of_peptideca_nterminal_segmented_symbol smb_pns =
Pnss_v.peptideca_nterminal_segmented_symbol smb_pns
;;

let peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Pns_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let peptideca_nterminal_fragmented_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Pnfs_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let peptideca_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_pnf = Pnfs_v.peptideca_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;

let molecule_aminoacid_regular_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
Mars_v.peptideca_nterminal_fragmented_symbol smb_pnf
;;



(** created by ./generator peptideca_nterminal v symbol at 11:8 26 Apr 2011. *)



