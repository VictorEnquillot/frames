(** {3 A Symbol for a Molecule_aminoacid_tlc.} *)

let nam_cod = "molecule_aminoacid_tlc_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Masts_v = Molecule_aminoacid_segmented_tlc_symbol_v
module Mafts_v = Molecule_aminoacid_fragmented_tlc_symbol_v


let name = function
  | Mats_v smb_ast ->
      Masts_v.name smb_ast
  | Mats_v smb_aft ->
      Mafts_v.name smb_aft
;;


let print ppf = function
  | Mats_v smb_ast ->
      Masts_v.print ppf smb_ast
  | Mats_v smb_aft ->
      Mafts_v.print ppf smb_aft
;;


(** {6 Extracting.} *)

let molecule_aminoacid_segmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol = function
  | Mats_v smb_ast -> smb_ast
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_segmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol"
     "Molecule_aminoacid_segmented_tlc_symbol"
     (name s)
    "check"
;;

let molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol = function
  | Mats_v smb_aft -> smb_aft
  | s -> Erm_v.print_fatal_error nam_cod
     "molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol"
     "Molecule_aminoacid_fragmented_tlc_symbol"
     (name s)
    "check"
;;

let molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_mat =
  let smb_aft = molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_mat in
    Mafts_v_off_molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;


(** {6 Querying.} *)

let is_molecule_aminoacid_segmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol = function
  | Molecule_aminoacid_tlc_symbol_t.Molecule_aminoacid_segmented_tlc_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol = function
  | Molecule_aminoacid_tlc_symbol_t.Molecule_aminoacid_fragmented_tlc_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_mat =
  if not (is_molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_mat)
  then false
  else
    begin
  let smb_aft = molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_mat in
      Mafts_v.is_molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol smb_aft
    end
;;


(** {6 Upgrading.} *)

let molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_segmented_tlc_symbol smb_ast =
Mats_v.molecule_aminoacid_segmented_tlc_symbol smb_ast
;;

let molecule_aminoacid_segmented_tlc_symbol_of_molecule_aminoacid_segmented_tlc_symbol smb_ast =
Masts_v.molecule_aminoacid_segmented_tlc_symbol smb_ast
;;

let molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Mats_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Mafts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
  let smb_aft = Mafts_v.molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art in
molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

let molecule_aminoacid_regular_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
Marts_v.molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;



(** created by ./generator molecule_aminoacid_tlc v symbol at 11:8 26 Apr 2011. *)



