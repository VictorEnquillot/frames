(** {3 The functionalities for a Provider for a Polypeptide Sequence.} *)

let nam_cod = "Polypeptide_sequence_provider_v";;

let provide = function 
  | Polypeptide_symbol_t.Polypeptide_frompdbid str as sym_pop ->
      Polypeptide_sequence_provider_from_pdb_v.provide sym_pop
;;
