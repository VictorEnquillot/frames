(* $Id: Exp $ *)

(** {3 The symbols naming the amino acids in Pdb.} *)

type aminoacid_symbol_pdb =
  | Standard of standard_aminoacid_symbol_pdb
  | Extra of extra_aminoacid_symbol_pdb

and standard_aminoacid_symbol_pdb = 
    Aminoacid_symbol_t.aminoacid_symbol

and extra_aminoacid_symbol_pdb =
  | Asx
  | Glx
  | Ini
  | Ter
  | Unk
;;

