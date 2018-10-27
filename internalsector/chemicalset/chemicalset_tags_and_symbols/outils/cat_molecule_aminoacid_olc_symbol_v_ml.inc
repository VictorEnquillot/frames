(** {6 Including.} *)

module Mas_t = Molecule_aminoacid_symbol_t

let molecule_aminoacid_symbol_of_molecule_aminoacid_olc_symbol = function
  | Maos_t.Molecule_aminoacid_segmented_olc_symbol smb -> 
      Mas_t.Molecule_aminoacid_segmented_symbol
	(Masos_v.molecule_aminoacid_segmented_symbol_of_molecule_aminoacid_segmented_olc_symbol smb)

  | Maos_t.Molecule_aminoacid_fragmented_olc_symbol smb_aon ->
      Mas_t.Molecule_aminoacid_fragmented_symbol
	(Mafos_v.molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_aon)
;;

let char_of_molecule_aminoacid_olc_symbol smb_amo =
  let str = name smb_amo in
  String.get str 0  
;;

let molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aor =
  Maos_t.Molecule_aminoacid_fragmented_olc_symbol
    (Mafos_t.Molecule_aminoacid_regular_olc_symbol smb_aor)
;;

let molecule_aminoacid_olc_symbol_of_char = function
  | 'g'
  | 'G' -> g
  | 'p'
  | 'P' -> p
  | chr -> 
      molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol 
	(Maros_v.molecule_aminoacid_regular_olc_symbol_of_char chr)
;;
	
let molecule_aminoacid_olc_symbol_of_string str =
  if String.length str = 1 
  then
    begin
      let c = String.get str 1 in
      molecule_aminoacid_olc_symbol_of_char c
    end
  else
    failwith "Not_character:Maos_v.molecule_aminoacid_olc_symbol_of_string"
;;

let read ib =
  let str = Scanf.bscanf ib "%s" (fun s -> s) in
  Scanf.sscanf str "%0c" molecule_aminoacid_olc_symbol_of_char
;;
