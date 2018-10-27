(** {6 Upgrading.} *)

module Mas_t = Molecule_aminoacid_symbol_t

let molecule_aminoacid_symbol_of_molecule_aminoacid_tlc_symbol = function
  | Mats_t.Molecule_aminoacid_segmented_tlc_symbol smb -> 
      Mas_t.Molecule_aminoacid_segmented_symbol
	(Masts_v.molecule_aminoacid_segmented_symbol_of_molecule_aminoacid_segmented_tlc_symbol smb)

  | Mats_t.Molecule_aminoacid_fragmented_tlc_symbol smb_atn ->
      Mas_t.Molecule_aminoacid_fragmented_symbol
	(Mafts_v.molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_atn)
;;

let molecule_aminoacid_tlc_symbol_of_string str = 
  let stc = String.capitalize (String.lowercase str) in
  match stc with
  | "Gly" -> gly
  | "Pro" -> pro
  | _ ->  
      molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol 
	(Marts_v.molecule_aminoacid_regular_tlc_symbol_of_string stc)
;;
	
let read ib =
  let str = Scanf.bscanf ib "%s" (fun s -> s) in
  Scanf.sscanf str "%3s" molecule_aminoacid_tlc_symbol_of_string
;;
