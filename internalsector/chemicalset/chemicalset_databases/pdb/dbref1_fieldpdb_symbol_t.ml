(** {3 A Symbol for an DBREF1 field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect3.html#DBREF1}
        http://www.wwpdb.org/documentation/format32/sect3.html#DBREF1}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
DBREF1 2J83 A   61    322 UNIMES               UPI000148A153                   
DBREF2 2J83 A     MES00005880000                     61         322

*)

type dbref1_fieldpdb_symbol =
  | Empty_1                                              (*  7- 7 string *)
  | Dbref1_id                                            (*  8-11 string *)
  | Empty_2                                              (* 12-12 string *) 
  | Dbref1_chain_id                                      (* 13-13 char *)
  | Empty_3                                              (* 14-14 string *) 
  | Dbref1_pdb_sequence_segment_initial_sequence_number  (* 15-18 int *)
  | Dbref1_pdb_sequence_segment_initial_insertion_code   (* 19-19 char *)
  | Empty_4                                              (* 20-20 string *) 
  | Dbref1_pdb_sequence_segment_final_sequence_number    (* 21-24 int *)
  | Dbref1_pdb_sequence_segment_final_insertion_code     (* 25-25 char *)
  | Empty_5                                              (* 26-26 string *) 
  | Dbref1_sequence_database_name                        (* 27-32 string *)
  | Empty_6                                              (* 33-47 string *) 
  | Dbref1_sequence_database_identification_code         (* 48-67 string *)
  | Empty_7                                              (* 68-80 string *) 
;;
