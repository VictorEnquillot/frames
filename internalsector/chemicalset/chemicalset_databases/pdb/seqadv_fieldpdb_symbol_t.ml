(** {3 A Symbol for a field in a SEQADV Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect3.html#SEQADV}
        http://www.wwpdb.org/documentation/format32/sect3.html#SEQADV}

The SEQADV record identifies differences between sequence information in the SEQRES records of the PDB entry and the sequence database entry given in DBREF.  Please note that these records were designed to identify differences and not errors.  No assumption is made as to which database contains the correct data.  A comment explaining any engineered differences in the sequence between the PDB and the sequence database may also be included here.
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
SEQADV 3ABC MET A   -1  UNP  P10725              EXPRESSION TAG
SEQADV 3ABC GLY A   50  UNP  P10725    VAL    50 ENGINEERED
SEQADV 2QLE CRO A   66  UNP  P42212    SER    65 CHROMOPHORE

*)

type seqadv_fieldpdb_symbol =
  | Empty_1                                   (*  7- 7 string *)
  | Seqadv_id                                 (*  8-11 string *)
  | Empty_2                                   (* 12-12 string *)
  | Seqadv_residue_name                       (* 13-15 string *)
  | Empty_3                                   (* 16-16 string *)
  | Seqadv_chain_id                           (* 17-17 char *)
  | Empty_4                                   (* 18-18 string *)
  | Seqadv_sequence_number                    (* 19-22 string *)
  | Seqadv_insertion_code                     (* 23-23 char *)
  | Empty_5                                   (* 24-24 string *)
  | Seqadv_database                           (* 25-28 string *)
  | Empty_6                                   (* 29-29 string *) 
  | Seqadv_sequence_databse_accession_number  (* 30-38 int *)
  | Empty_7                                   (* 39-39 string *)  
  | Seqadv_sequence_databse_residue_name      (* 40-42 string *) 
  | Empty_8                                   (* 43-43 string *)
  | Seqadv_sequence_databse_sequence_number   (* 44-48 int *)
  | Empty_9                                   (* 49-49 string *)  
  | Seqadv_conflict_description               (* 50-70 string *) 
  | Empty_10                                  (* 71-80 string *)
;;
