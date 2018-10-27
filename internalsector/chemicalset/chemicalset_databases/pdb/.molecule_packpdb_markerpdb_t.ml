(** {3 The Marker for a Molecule in Pdb Pack} *)

module Trp_t = Triplet_t

type molecule_packpdb_markerpdb = (string, int, char) Trp_t.triplet
;;
(** Molecule Marker : 
     Atom_molecule_name             18-20
     Atom_molecule_sequence_number  23-26
     Atom_insertion_code            27-27

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
                 |||  |||||               
                 vvv  ||||v
                      vvvvv
HETATM 8237 MG    MG A1001      13.872  -2.555 -29.045  1.00 27.36          MG 
HETATM 3835 FE   HEM A   1      17.140   3.115  15.066  1.00 14.14          FE
HETATM 8238  S   SO4 A2001      10.885 -15.746 -14.404  1.00 47.84           S  
HETATM 8239  O1  SO4 A2001      11.191 -14.833 -15.531  1.00 50.12           O  

ATOM     33  N  BARG A  -3      11.296  86.721  94.521  0.50 35.60           N
*)
