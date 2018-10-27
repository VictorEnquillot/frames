(** {3 A Symbol for an DBREF2 field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect3.html#DBREF2}
        http://www.wwpdb.org/documentation/format32/sect3.html#DBREF2}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
DBREF2 2J83 A   61    322 UNIMES               UPI000148A153                   
DBREF2 2J83 A     MES00005880000                     61         322

*)

type dbref2_fieldpdb_symbol =
  | Empty_1                                              (*  7- 7 string *)
  | Dbref2_id                                            (*  8-11 string *)
  | Empty_2                                              (* 12-12 string *) 
  | Dbref2_chain_id                                      (* 13-13 char *)
  | Empty_3                                              (* 14-18 string *) 
  | Dbref2_sequence_database_accession_code              (* 19-40 string *)
  | Empty_4                                              (* 41-45 string *) 
  | Dbref2_pdb_sequence_segment_initial_sequence_number  (* 46-55 int *)
  | Empty_5                                              (* 56-47 string *) 
  | Dbref2_pdb_sequence_segment_final_sequence_number    (* 58-67 int *)
  | Empty_8                                              (* 69-80 string *) 
;;
