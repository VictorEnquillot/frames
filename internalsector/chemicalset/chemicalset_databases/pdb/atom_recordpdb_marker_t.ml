(** {3 The Marker for a Atom in Pdb Record} *)


type atom_recordpdb_markerpdb = (Atom_symbol_t.atom_symbol, int, char) Triplet_t.triplet
;;
(** Atom Marker : 
     Atom_serial_number           7-11
     Atom_alternate_location_id  17-17
     Atom_name                   18-20

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
      |||||     ||||               
      vvvvv     vvvv
ATOM     51  NH1BARG A  45      14.338  86.056  88.706  0.50 40.23           N
ATOM     33  N  BARG A  -3      11.296  86.721  94.521  0.50 35.60           N
*)
