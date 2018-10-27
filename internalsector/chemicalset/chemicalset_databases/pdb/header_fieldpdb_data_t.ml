(** {3 A Value for a field in a HEADER Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect2.html#HEADER}
        http://www.wwpdb.org/documentation/format32/sect2.html#HEADER}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
HEADER    PHOTOSYNTHESIS                          28-MAR-07   2UXK              
HEADER    TRANSFERASE/TRANSFERASE INHIBITOR       17-SEP-04   1XH6              
HEADER    MEMBRANE PROTEIN, TRANSPORT PROTEIN     20-JUL-06   2HRT        
*)

type header_fieldpdb_data =
   | Empty_1 of string              (*  7-10  4 *)
   | Chemical_species of string     (* 11-50 40 *)
   | Deposition_date of string      (* 51-59  9 *)
   | Empty_2 of string              (* 60-62  3 *)
   | PdbID of string                (* 63-66  4 *)
   | Empty_3 of string              (* 67-80 14 *)
;;
