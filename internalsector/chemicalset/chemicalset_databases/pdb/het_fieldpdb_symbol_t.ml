(** {3 A Symbol for an HET field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect9.html#HET}
        http://www.wwpdb.org/documentation/format32/sect9.html#HET}

HET records are used to describe non-standard residues, such as prosthetic groups, inhibitors, solvent molecules, and ions for which coordinates are supplied. Groups are considered HET if they are not part of a biological polymer described in SEQRES and considered to be a molecule bound to the polymer, or they are a chemical species that constitute part of a biological polymer and is not one of the following:

    * standard amino acids, or
    * standard nucleic acids (C, G, A, U, I, DC, DG, DA, DU, DT and DI), or
    * unknown amino acid (UNK) or nucleic acid (N) where UNK and N are used to indicate the unknown residue name.

HET records also describe chemical components for which the chemical identity is unknown, in which case the group is assigned the hetID UNL (Unknown Ligand).

The heterogen section of a PDB formatted file contains the complete description of non-standard residues in the entry.

Record Format
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
HET    TRS    975       8

HET    UDP  A1457      25                                                       
HET    B3P  A1458      19  

*)

type het_fieldpdb_symbol =
  | Empty_1                        (*  7- 7 string *)
  | Het_id                         (*  8-10 string *) 
  | Empty_2                        (* 11-12 string *)
  | Het_chain_id                   (* 13-13 char *)
  | Het_sequence_number            (* 14-17 int *)
  | Het_insertion_code             (* 18-18 char *)
  | Empty_3                        (* 19-20 string *)
  | Het_HETATM_record_number       (* 21-25 int *)
  | Empty_4                        (* 26-30 string *)
  | Het_description                (* 31-70 string *)
  | Empty_5                        (* 71-80 string *)
;;
