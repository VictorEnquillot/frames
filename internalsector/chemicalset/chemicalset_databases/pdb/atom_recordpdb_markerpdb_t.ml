(** {3 The Marker for a Atom in Pdb Record} *)


type atom_recordpdb_markerpdb = (string, char) Doublet_t.doublet
;;
(** Atom Marker : 
     Atom_name                   13-16
     Atom_alternate_location_id  17-17

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
            |||||               
            vvvvv
ATOM     51  NH1BARG A  45      14.338  86.056  88.706  0.50 40.23           N
ATOM     33  N  BARG A  -3      11.296  86.721  94.521  0.50 35.60           N
*)
