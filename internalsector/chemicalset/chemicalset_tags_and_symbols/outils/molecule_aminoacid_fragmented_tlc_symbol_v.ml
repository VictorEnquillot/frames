(** {3 A Symbol for a Molecule_aminoacid_fragmented_tlc.} *)

let nam_cod = "molecule_aminoacid_fragmented_tlc_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Marts_v = Molecule_aminoacid_regular_tlc_symbol_v


let name = function
  | Mafts_t.Pro -> "pro"
  | Mafts_v smb_art ->
      Marts_v.name smb_art
;;


let print ppf = function
  | Mafts_v  ->
      .print ppf 
  | Mafts_v smb_art ->
      Marts_v.print ppf smb_art
;;


(** {6 Extracting.} *)

let molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol = function
  | Mafts_v smb_art -> smb_art
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol"
     "Molecule_aminoacid_regular_tlc_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol = function
  | Molecule_aminoacid_fragmented_tlc_symbol_t.Molecule_aminoacid_regular_tlc_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let pro = Mafts_t.Pro;;

let molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Mafts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
Marts_v.molecule_aminoacid_regular_tlc_symbol smb_art
;;



(** created by ./generator molecule_aminoacid_fragmented_tlc v symbol at 11:8 26 Apr 2011. *)



