(** {3 The one_letter_code symbols naming the amino acids in Pdb.} *)


type one_letter_code_pdb =
  | Standard of Aminoacid_olc_symbol_t.aminoacid_olc_symbol
  | Extra of pdb_extra_one_letter_code

and pdb_extra_one_letter_code =
  | B | X | J | O | U
;;
