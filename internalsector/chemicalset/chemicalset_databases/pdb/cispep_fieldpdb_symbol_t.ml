(** {3 A Symbol for an CISPEP field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect6.html#CISPEP}
        http://www.wwpdb.org/documentation/format32/sect6.html#CISPEP}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
CISPEP   1 SER A   58    GLY A   59          0        20.91    
CISPEP   1 GLY A  116    GLY A  117          0        18.50 
CISPEP   1 MET A    1    SER A    2          0        -3.69 

*)

type cispep_fieldpdb_symbol =
  | Empty_1                                  (*  7- 7 string *)
  | Cispep_serial_number                     (*  8-10 int *)
  | Empty_2                                  (* 11-11 string *) 
  | Cispep_residue_name_1                    (* 12-14 string *)
  | Empty_3                                  (* 15-15 string *) 
  | Cispep_chain_idpdb_1                        (* 16-16 char *)
  | Empty_4                                  (* 17-17 string *) 
  | Cispep_residue_sequence_number_1         (* 18-21 int *)
  | Cispep_insertion_code_1                  (* 22-22 char *)
  | Empty_5                                  (* 23-25 string *) 
  | Cispep_residue_name_2                    (* 26-28 string *)
  | Empty_6                                  (* 29-29 string *) 
  | Cispep_chain_idpdb_2                        (* 30-30 char *)
  | Empty_7                                  (* 31-31 string *) 
  | Cispep_residue_sequence_number_2         (* 32-35 int *)
  | Cispep_insertion_code_2                  (* 36-36 char *)
  | Empty_8                                  (* 37-43 string *) 
  | Cispep_model_number                      (* 44-46 int *)
  | Empty_10                                 (* 47-53 string *) 
  | Cispep_angle_degree                      (* 54-59 float *) 
  | Empty_11                                 (* 60-80 string *) 
;;
