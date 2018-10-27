(** {3 A Symbol for a Molecule_aminoacid_fragmented_olc.} *)

let nam_cod = "molecule_aminoacid_fragmented_olc_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Maros_v = Molecule_aminoacid_regular_olc_symbol_v


let name = function
  | Mafos_t.P -> "p"
  | Mafos_v smb_aro ->
      Maros_v.name smb_aro
;;


let print ppf = function
  | Mafos_v  ->
      .print ppf 
  | Mafos_v smb_aro ->
      Maros_v.print ppf smb_aro
;;


(** {6 Extracting.} *)

let molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_fragmented_olc_symbol = function
  | Mafos_v smb_aro -> smb_aro
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_fragmented_olc_symbol"
     "Molecule_aminoacid_regular_olc_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_fragmented_olc_symbol = function
  | Molecule_aminoacid_fragmented_olc_symbol_t.Molecule_aminoacid_regular_olc_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let p = Mafos_t.P;;

let molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Mafos_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
Maros_v.molecule_aminoacid_regular_olc_symbol smb_aro
;;



(** created by ./generator molecule_aminoacid_fragmented_olc v symbol at 11:8 26 Apr 2011. *)



