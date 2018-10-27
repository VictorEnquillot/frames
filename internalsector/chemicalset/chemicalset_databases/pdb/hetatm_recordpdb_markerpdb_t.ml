(** {3 The Marker for a Hetatm in Pdb Record} *)


type hetatm_recordpdb_markerpdb = (string, char) Doublet_t.doublet
;;
(** Hetatm Marker : 
    Hetatm_name                   13-16
    Hetatm_alternate_location_id  17-17

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
            |||||               
            vvvv|
                v
HETATM 8238  S   SO4 A2001      10.885 -15.746 -14.404  1.00 47.84           S  
HETATM 8239  O1  SO4 A2001      11.191 -14.833 -15.531  1.00 50.12           O  
HETATM 8240  O2  SO4 A2001       9.576 -16.338 -14.706  1.00 48.55           O  
HETATM 8241  O3  SO4 A2001      11.995 -16.703 -14.431  1.00 49.88           O  
HETATM 8242  O4  SO4 A2001      10.932 -15.073 -13.100  1.00 49.91           O  
*)
