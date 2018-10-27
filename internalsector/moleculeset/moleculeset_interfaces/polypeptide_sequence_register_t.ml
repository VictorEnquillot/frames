(** {3 The Register for aany Polypeptide Sequence.} *)

(** {6 Modules.} *)


(** {6 Register.} *)

type polypeptide_sequence_register = (Polypeptide_symbol_t.polypeptide_symbol, Polypeptide_sequence_t.polypeptide_sequence) Register_t.register
;;
(** Example: 0tab pdb file
    (tab_a, [valine; alanine; alanine; tryptophane; glycine])
    (tab_b, [glycine; proline]) 
    (tab_c, [alanine; glycine; glycine]) 
    (tab_d, [alanine; glycine; proline; glycine; alanine]) 

A Polypeptide_sequence is a Molecule_aminoacid_symbol list
*)
                   

