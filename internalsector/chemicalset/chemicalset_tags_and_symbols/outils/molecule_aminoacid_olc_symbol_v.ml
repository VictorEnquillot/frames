(** {3 A Symbol for a Molecule_aminoacid_olc.} *)

let nam_cod = "molecule_aminoacid_olc_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Masos_v = Molecule_aminoacid_segmented_olc_symbol_v
module Mafos_v = Molecule_aminoacid_fragmented_olc_symbol_v


let name = function
  | Maos_v smb_aso ->
      Masos_v.name smb_aso
  | Maos_v smb_afo ->
      Mafos_v.name smb_afo
;;


let print ppf = function
  | Maos_v smb_aso ->
      Masos_v.print ppf smb_aso
  | Maos_v smb_afo ->
      Mafos_v.print ppf smb_afo
;;


(** {6 Extracting.} *)

let molecule_aminoacid_segmented_olc_symbol_off_molecule_aminoacid_olc_symbol = function
  | Maos_v smb_aso -> smb_aso
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_segmented_olc_symbol_off_molecule_aminoacid_olc_symbol"
     "Molecule_aminoacid_segmented_olc_symbol"
     (name s)
    "check"
;;

let molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol = function
  | Maos_v smb_afo -> smb_afo
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol"
     "Molecule_aminoacid_fragmented_olc_symbol"
     (name s)
    "check"
;;

let molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_olc_symbol smb_mao =
  let smb_afo = molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol smb_mao in
    Mafos_v_off_molecule_aminoacid_fragmented_olc_symbol smb_afo
;;


(** {6 Querying.} *)

let is_molecule_aminoacid_segmented_olc_symbol_off_molecule_aminoacid_olc_symbol = function
  | Molecule_aminoacid_olc_symbol_t.Molecule_aminoacid_segmented_olc_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol = function
  | Molecule_aminoacid_olc_symbol_t.Molecule_aminoacid_fragmented_olc_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_olc_symbol smb_mao =
  if not (is_molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol smb_mao)
  then false
  else
    begin
  let smb_afo = molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol smb_mao in
      Mafos_v.is_molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_fragmented_olc_symbol smb_afo
    end
;;


(** {6 Upgrading.} *)

let molecule_aminoacid_olc_symbol_of_molecule_aminoacid_segmented_olc_symbol smb_aso =
Maos_v.molecule_aminoacid_segmented_olc_symbol smb_aso
;;

let molecule_aminoacid_segmented_olc_symbol_of_molecule_aminoacid_segmented_olc_symbol smb_aso =
Masos_v.molecule_aminoacid_segmented_olc_symbol smb_aso
;;

let molecule_aminoacid_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maos_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Mafos_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro =
  let smb_afo = Mafos_v.molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aro in
molecule_aminoacid_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;

let molecule_aminoacid_regular_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_afo =
Maros_v.molecule_aminoacid_fragmented_olc_symbol smb_afo
;;



(** created by ./generator molecule_aminoacid_olc v symbol at 11:8 26 Apr 2011. *)



