(** {3 A Symbol for a Peptideca_nterminal_fragmented.} *)

let nam_cod = "peptideca_nterminal_fragmented_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Mars_v = Molecule_aminoacid_regular_symbol_v


let name = function
  | Pnfs_t.Molecule_aminoacid_proline -> "molecule_aminoacid_proline"
  | Pnfs_v smb_mar ->
      Mars_v.name smb_mar
;;


let print ppf = function
  | Pnfs_v  ->
      .print ppf 
  | Pnfs_v smb_mar ->
      Mars_v.print ppf smb_mar
;;


(** {6 Extracting.} *)

let molecule_aminoacid_regular_symbol_off_peptideca_nterminal_fragmented_symbol = function
  | Pnfs_v smb_mar -> smb_mar
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_regular_symbol_off_peptideca_nterminal_fragmented_symbol"
     "Molecule_aminoacid_regular_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_molecule_aminoacid_regular_symbol_off_peptideca_nterminal_fragmented_symbol = function
  | Peptideca_nterminal_fragmented_symbol_t.Molecule_aminoacid_regular_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let molecule_aminoacid_proline = Pnfs_t.Molecule_aminoacid_proline;;

let peptideca_nterminal_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Pnfs_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mars_v.molecule_aminoacid_regular_symbol smb_mar
;;



(** created by ./generator peptideca_nterminal_fragmented v symbol at 11:8 26 Apr 2011. *)



