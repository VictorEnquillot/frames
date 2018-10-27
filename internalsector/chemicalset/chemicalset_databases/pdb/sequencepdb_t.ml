(** {3 All SEQRES Pdb records. The full Aminoacid_symbol_pdb_t sequence.} *)

(*
SEQRES   1     58  ARG PRO ASP PHE CYS LEU GLU PRO PRO TYR THR GLY PRO  
SEQRES   2 B  146  LEU TRP GLY LYS VAL ASN VAL ASP GLU VAL GLY GLY GLU      
*)

type sequencepdb = Aas_t.aminoacid_symbol list
;;
(** The Sequencepdb is an intermediate entity between the Pdb Entry and the
    Sequence Polypeptide_sequence of Frames (Aas_t.aminoacid_symbol list)

    - There is one sequence for each Polypeptide chain
    - Some residue names are specific to Pdb and cannot be translated to Frames.
      They may be included with a "or type" ?
    
    Presently we shall only deal with "good" sequences and fail in other cases.
*)    

