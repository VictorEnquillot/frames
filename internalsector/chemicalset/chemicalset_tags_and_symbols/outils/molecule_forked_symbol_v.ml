(** {3 A Symbol for a Molecule_forked.} *)

let nam_cod = "molecule_forked_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Mf1s_v = Molecule_forked_oneforked_symbol_v
module Mf2s_v = Molecule_forked_twoforked_symbol_v
module Mf3s_v = Molecule_forked_threeforked_symbol_v
module Mfms_v = Molecule_forked_moreforked_symbol_v


let name = function
  | Mfs_v smb_mf1 ->
      Mf1s_v.name smb_mf1
  | Mfs_v smb_mf2 ->
      Mf2s_v.name smb_mf2
  | Mfs_v smb_mf3 ->
      Mf3s_v.name smb_mf3
  | Mfs_v smb_mfm ->
      Mfms_v.name smb_mfm
;;


let print ppf = function
  | Mfs_v smb_mf1 ->
      Mf1s_v.print ppf smb_mf1
  | Mfs_v smb_mf2 ->
      Mf2s_v.print ppf smb_mf2
  | Mfs_v smb_mf3 ->
      Mf3s_v.print ppf smb_mf3
  | Mfs_v smb_mfm ->
      Mfms_v.print ppf smb_mfm
;;


(** {6 Extracting.} *)

let molecule_forked_oneforked_symbol_off_molecule_forked_symbol = function
  | Mfs_v smb_mf1 -> smb_mf1
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_forked_oneforked_symbol_off_molecule_forked_symbol"
     "Molecule_forked_oneforked_symbol"
     (name s)
    "check"
;;

let molecule_forked_twoforked_symbol_off_molecule_forked_symbol = function
  | Mfs_v smb_mf2 -> smb_mf2
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_forked_twoforked_symbol_off_molecule_forked_symbol"
     "Molecule_forked_twoforked_symbol"
     (name s)
    "check"
;;

let molecule_forked_threeforked_symbol_off_molecule_forked_symbol = function
  | Mfs_v smb_mf3 -> smb_mf3
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_forked_threeforked_symbol_off_molecule_forked_symbol"
     "Molecule_forked_threeforked_symbol"
     (name s)
    "check"
;;

let molecule_forked_moreforked_symbol_off_molecule_forked_symbol = function
  | Mfs_v smb_mfm -> smb_mfm
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_forked_moreforked_symbol_off_molecule_forked_symbol"
     "Molecule_forked_moreforked_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_molecule_forked_oneforked_symbol_off_molecule_forked_symbol = function
  | Molecule_forked_symbol_t.Molecule_forked_oneforked_symbol _ -> true
  | _ -> false
;;

let is_molecule_forked_twoforked_symbol_off_molecule_forked_symbol = function
  | Molecule_forked_symbol_t.Molecule_forked_twoforked_symbol _ -> true
  | _ -> false
;;

let is_molecule_forked_threeforked_symbol_off_molecule_forked_symbol = function
  | Molecule_forked_symbol_t.Molecule_forked_threeforked_symbol _ -> true
  | _ -> false
;;

let is_molecule_forked_moreforked_symbol_off_molecule_forked_symbol = function
  | Molecule_forked_symbol_t.Molecule_forked_moreforked_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let molecule_forked_symbol_of_molecule_forked_oneforked_symbol smb_mf1 =
Mfs_v.molecule_forked_oneforked_symbol smb_mf1
;;

let molecule_forked_oneforked_symbol_of_molecule_forked_oneforked_symbol smb_mf1 =
Mf1s_v.molecule_forked_oneforked_symbol smb_mf1
;;

let molecule_forked_symbol_of_molecule_forked_twoforked_symbol smb_mf2 =
Mfs_v.molecule_forked_twoforked_symbol smb_mf2
;;

let molecule_forked_twoforked_symbol_of_molecule_forked_twoforked_symbol smb_mf2 =
Mf2s_v.molecule_forked_twoforked_symbol smb_mf2
;;

let molecule_forked_symbol_of_molecule_forked_threeforked_symbol smb_mf3 =
Mfs_v.molecule_forked_threeforked_symbol smb_mf3
;;

let molecule_forked_threeforked_symbol_of_molecule_forked_threeforked_symbol smb_mf3 =
Mf3s_v.molecule_forked_threeforked_symbol smb_mf3
;;

let molecule_forked_symbol_of_molecule_forked_moreforked_symbol smb_mfm =
Mfs_v.molecule_forked_moreforked_symbol smb_mfm
;;

let molecule_forked_moreforked_symbol_of_molecule_forked_moreforked_symbol smb_mfm =
Mfms_v.molecule_forked_moreforked_symbol smb_mfm
;;



(** created by ./generator molecule_forked v symbol at 11:8 26 Apr 2011. *)



