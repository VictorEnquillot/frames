(** {3 The Marker for a Residue in Pdb Pack} *)


type residue_packpdb_markerpdb = (string, int, char) Triplet_t.triplet
;;
(** Residue Marker : 
     Atom_residue_name             18-20
     Atom_residue_sequence_number  23-26
     Atom_insertion_code           27-27

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
                 |||  |||||               
                 vvv  vvvvv
ATOM     51  NH1BARG A  45      14.338  86.056  88.706  0.50 40.23           N
ATOM     33  N  BARG A  -3      11.296  86.721  94.521  0.50 35.60           N
*)
