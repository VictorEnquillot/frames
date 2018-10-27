(* $Id: Exp $ *)

(** {3 An Index used in Pdb ATOM and HETATM records} *)

(** Defines any of the one-digit index found in the PDB 
    record ATOM or HETATM characters 13, 16, 17 and 22. *) 

(** {6 Type} *)

(** Defines any one digit index found in the PDB 
    record ATOM characters 13, 16, 17, 22 and 27. *) 
type index_pdb =
  | Altloc of alternate_location_index_pdb
  | Branch of branch_index_pdb
  | Chain of chain_index_pdb
  | Hydrogen of h_index_pdb
  | Insertion of insertion_index_pdb
  | Remote of remote_index_pdb

and h_index_pdb = | H_blank | H_one | H_two | H_three 
(** Defines a one digit index for H atoms found in the PDB 
    record ATOM character 13. *) 

and branch_index_pdb =
  | Branch_blank | Branch_one | Branch_two | Branch_three | Branch_four 
  | Branch_five | Branch_six | Branch_t 
(** Defines a one digit index found in the PDB 
    record ATOM character 16. *) 

and alternate_location_index_pdb = | Alternate_blank | Alternate_A | Alternate_B 
  | Alternate_C 
(** Defines a one digit index for Alternate Location Indicator found in the PDB 
    record ATOM character 17. *) 

and chain_index_pdb = Polypeptide_identifier_t.chain_index 
(*
| Chain_Blank | Chain_A | Chain_B | Chain_C | Chain_D 
  | Chain_E | Chain_F | Chain_G | Chain_H
(** Defines a one digit symbol for Chain ID found in the PDB 
    record ATOM character 22.
    Chain_blank, Chain_A, ... .*)
*)

and insertion_index_pdb =
  | Insertion_blank | Insertion_A | Insertion_B | Insertion_C | Insertion_D 
  | Insertion_E | Insertion_F | Insertion_G | Insertion_H | Insertion_one
  | Insertion_two | Insertion_three
(** Defines a one digit index for Residue insertion code found in the PDB 
    record ATOM character 23. *) 

and remote_index_pdb = | Remote_blank | Remote_A | Remote_B | Remote_G 
  | Remote_D | Remote_E | Remote_H | Remote_Z 
(** Defines a one digit index for Remoteness Indicator found in the PDB 
    record ATOM character 27. *) 

;;

