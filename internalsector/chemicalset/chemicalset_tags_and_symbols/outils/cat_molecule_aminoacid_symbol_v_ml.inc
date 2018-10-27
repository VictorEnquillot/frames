(** {6 Including. *)

module Maos_v = Molecule_aminoacid_olc_symbol_v
module Mats_v = Molecule_aminoacid_tlc_symbol_v

let molecule_aminoacid_symbol_of_string str = 
  let str_len = String.length str in
  match str_len with
  | 1 -> 
      let smb_amo = Maos_v.molecule_aminoacid_olc_symbol_of_string str in
      Maos_v.molecule_aminoacid_symbol_of_molecule_aminoacid_olc_symbol smb_amo  
  | 3 -> 
      let smb_amt = Mats_v.molecule_aminoacid_tlc_symbol_of_string str in
      Mats_v.molecule_aminoacid_symbol_of_molecule_aminoacid_tlc_symbol smb_amt  
  | _ ->
      let stc = String.capitalize (String.lowercase str) in
      match stc with
      | "Glycine" -> glycine
      | "Proline" -> proline
      | s -> 
	  molecule_aminoacid_symbol_of_molecule_aminoacid_regular_symbol 
	    (Mars_v.molecule_aminoacid_regular_symbol_of_string s)
;;

let read ib =
  let str = Scanf.bscanf ib "%s" (fun s -> s) in
  Scanf.sscanf str "%s" molecule_aminoacid_symbol_of_string
;;

