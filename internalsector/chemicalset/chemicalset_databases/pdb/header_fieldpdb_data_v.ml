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


let column_and_width_of_header_fieldpdb_symbol = function
  | Header_fieldpdb_symbol_t.Empty_1 -> (Ordinal_p.make 7, Ordinal_p.make 4)               (*  7-10  4 *)
  | Header_fieldpdb_symbol_t.Chemical_species -> (Ordinal_p.make 11, Ordinal_p.make 40)    (* 11-50 40 *)
  | Header_fieldpdb_symbol_t.Deposition_date -> (Ordinal_p.make 51, Ordinal_p.make 9)      (* 51-59  9 *)
  | Header_fieldpdb_symbol_t.Empty_2 -> (Ordinal_p.make 60, Ordinal_p.make 3)              (* 60-62  3 *)
  | Header_fieldpdb_symbol_t.PdbID -> (Ordinal_p.make 63, Ordinal_p.make 4)                (* 63-66  4 *)
  | Header_fieldpdb_symbol_t.Empty_3 -> (Ordinal_p.make 67, Ordinal_p.make 14)             (* 67-80 14 *)
;;

let column_and_width_and_symbol_of_header_fieldpdb_symbol = function
  | Header_fieldpdb_symbol_t.Empty_1 as smb -> (Ordinal_p.make 7, Ordinal_p.make 4, smb)
  | Header_fieldpdb_symbol_t.Chemical_species as smb -> (Ordinal_p.make 11, Ordinal_p.make 40, smb)
  | Header_fieldpdb_symbol_t.Deposition_date as smb -> (Ordinal_p.make 51, Ordinal_p.make 9, smb)
  | Header_fieldpdb_symbol_t.Empty_2 as smb -> (Ordinal_p.make 60, Ordinal_p.make 3, smb) 
  | Header_fieldpdb_symbol_t.PdbID as smb -> (Ordinal_p.make 63, Ordinal_p.make 4, smb)
  | Header_fieldpdb_symbol_t.Empty_3 as smb -> (Ordinal_p.make 67, Ordinal_p.make 14, smb)
;;

let data_of_string_of_header_fieldpdb_symbol str = function
  | Header_fieldpdb_symbol_t.Empty_1 ->
      Header_fieldpdb_data_t.Empty_1 str               (*  7-10 *)
  | Header_fieldpdb_symbol_t.Chemical_species -> 
      Header_fieldpdb_data_t.Chemical_species          (* 11-50 *)
	(Scanf.sscanf str "%40[\000-\255]" (fun s -> s))
  | Header_fieldpdb_symbol_t.Deposition_date -> 
      Header_fieldpdb_data_t.Deposition_date           (* 51-59 *)
	(Scanf.sscanf str "%10[\000-\255]" (fun s -> s))
  | Header_fieldpdb_symbol_t.Empty_2 ->
      Header_fieldpdb_data_t.Empty_2 str               (* 60-62 *)
  | Header_fieldpdb_symbol_t.PdbID -> 
      Header_fieldpdb_data_t.PdbID str                 (* 63-66 *)
  | Header_fieldpdb_symbol_t.Empty_3 -> 
      Header_fieldpdb_data_t.Empty_3 str               (* 67-80 *)
;;
(* if any, conversion string -> typed field value is done here *)
