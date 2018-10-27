(** {3 A Polypeptide_sequence.} *)


type polypeptide_sequence = Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol list
;;
(** It is NOT a Symbol it is a kind of Formula expresses in 
    Non-Frames entities : molecule_aminoacid_symbol.

 e.g. Pti is [Molecule_aminoacid_symbol_v.arginine; Molecule_aminoacid_symbol_v.glutamine; Molecule_aminoacid_symbol_v.phenylalanine; ... ]

The existence of Glycine which is a segment and not a fragment imposes the
    concept of polypeptide_subunit_symbol.

The sequence exists in three states :

  Aminoacid  -> Polypeptide_subunit -> Polypeptide_subunit_protonated 

   sym_ama           sym_aml                    sym_alp

  The default protonation state is neutral
  For His its ia ???

*)
