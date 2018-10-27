(** {3 A Symbol for a Molecule_aminoacid_fragmented.} *)

let nam_cod = "molecule_aminoacid_fragmented_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Mars_v = Molecule_aminoacid_regular_symbol_v


let name = function
  | Mafs_t.Proline -> "proline"
  | Mafs_v smb_mar ->
      Mars_v.name smb_mar
;;


let print ppf = function
  | Mafs_v  ->
      .print ppf 
  | Mafs_v smb_mar ->
      Mars_v.print ppf smb_mar
;;


(** {6 Extracting.} *)

let molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol = function
  | Mafs_v smb_mar -> smb_mar
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol"
     "Molecule_aminoacid_regular_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol = function
  | Molecule_aminoacid_fragmented_symbol_t.Molecule_aminoacid_regular_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let proline = Mafs_t.Proline;;

let molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
Mafs_v.molecule_aminoacid_regular_symbol smb_mar
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



(** created by ./generator molecule_aminoacid_fragmented v symbol at 11:8 26 Apr 2011. *)



