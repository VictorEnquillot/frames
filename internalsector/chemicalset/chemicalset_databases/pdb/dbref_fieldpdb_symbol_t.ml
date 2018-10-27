(** {3 A Symbol for an DBREF field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect3.html#DBREF}
        http://www.wwpdb.org/documentation/format32/sect3.html#DBREF}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
DBREF  2JHQ A    1   226  UNP    Q9KPK8   UNG_VIBCH        1    226 
           
DBREF  3AKY A    1   219  UNP    P07170   KAD1_YEAST       3    221     

DBREF  1HAN A    2   298  UNP    P47228   BPHC_BURCE       1    297 

DBREF  3D3I A    0   760  UNP    P42592   YGJK_ECOLI      23    783             
DBREF  3D3I B    0   760  UNP    P42592   YGJK_ECOLI      23    783        

DBREF  3C2J A    1     8  PDB    3C2J     3C2J             1      8             
DBREF  3C2J B  101   108  PDB    3C2J     3C2J           101    108             

DBREF  1FFK 0    2  2923  GB     3377779  AF034620      2597   5518             
DBREF  1FFK 9    1   122  GB     3377779  AF034620      5658   5779      
DBREF  1UNJ X    6    11  NORINE NOR00228 NOR00228         6     11 
*)

type dbref_fieldpdb_symbol =
  | Empty_1                                             (*  7- 7 string *)
  | Dbref_id                                            (*  8-11 string *)
  | Empty_2                                             (* 12-12 string *) 
  | Dbref_chain_id                                       (* 13-13 char   *)
  | Empty_3                                             (* 14-14 string *) 
  | Dbref_pdb_sequence_segment_initial_sequence_number  (* 15-18 int    *)
  | Dbref_pdb_sequence_segment_initial_insertion_code   (* 19-19 char   *)
  | Empty_4                                             (* 20-20 string *) 
  | Dbref_pdb_sequence_segment_final_sequence_number    (* 21-24 int    *)
  | Dbref_pdb_sequence_segment_final_insertion_code     (* 25-25 char   *)
  | Empty_5                                             (* 26-26 string *) 
  | Dbref_sequence_database_name                        (* 27-32 string *)
  | Empty_6                                             (* 33-33 string *) 
  | Dbref_sequence_database_accession_code              (* 34-41 string *)
  | Empty_7                                             (* 42-42 string *) 
  | Dbref_sequence_database_identification_code         (* 43-54 string *)
  | Empty_8                                             (* 55-55 string *) 
  | Dbref_database_segment_initial_sequence_number      (* 56-60 int    *)
  | Dbref_database_segment_initial_insertion_code       (* 61-61 char   *)
  | Empty_9                                             (* 62-62 string *) 
  | Dbref_database_segment_final_sequence_number        (* 63-67 int    *)
  | Dbref_database_segment_final_residue_insertion_code (* 68-68 char   *)
  | Empty_10                                            (* 68-80 string *) 
;;
