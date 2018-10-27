(** {3 A Symbol for a Molecule_aminoacid.} *)

let nam_cod = "molecule_aminoacid_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Mass_v = Molecule_aminoacid_segmented_symbol_v
module Mafs_v = Molecule_aminoacid_fragmented_symbol_v


let name = function
  | Mas_v smb_mas ->
      Mass_v.name smb_mas
  | Mas_v smb_maf ->
      Mafs_v.name smb_maf
;;


let print ppf = function
  | Mas_v smb_mas ->
      Mass_v.print ppf smb_mas
  | Mas_v smb_maf ->
      Mafs_v.print ppf smb_maf
;;


(** {6 Extracting.} *)

let molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol = function
  | Mas_v smb_mas -> smb_mas
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol"
     "Molecule_aminoacid_segmented_symbol"
     (name s)
    "check"
;;

let molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol = function
  | Mas_v smb_maf -> smb_maf
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol"
     "Molecule_aminoacid_fragmented_symbol"
     (name s)
    "check"
;;

let molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol smb_moa =
  let smb_maf = molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_moa in
    Mafs_v_off_molecule_aminoacid_fragmented_symbol smb_maf
;;


(** {6 Querying.} *)

let is_molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol = function
  | Molecule_aminoacid_symbol_t.Molecule_aminoacid_segmented_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol = function
  | Molecule_aminoacid_symbol_t.Molecule_aminoacid_fragmented_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_regular_symbol_off_molecule_aminoacid_symbol smb_moa =
  if not (is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_moa)
  then false
  else
    begin
  let smb_maf = molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_moa in
      Mafs_v.is_molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol smb_maf
    end
;;


(** {6 Upgrading.} *)

let molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol smb_mas =
Mas_v.molecule_aminoacid_segmented_symbol smb_mas
;;

let molecule_aminoacid_segmented_symbol_of_molecule_aminoacid_segmented_symbol smb_mas =
Mass_v.molecule_aminoacid_segmented_symbol smb_mas
;;

let molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mas_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mafs_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_maf = Mafs_v.molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
Mars_v.molecule_aminoacid_fragmented_symbol smb_maf
;;



(** created by ./generator molecule_aminoacid v symbol at 11:8 26 Apr 2011. *)



