(** {3 A Symbol for an SSBOND field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect6.html#SSBOND}
        http://www.wwpdb.org/documentation/format32/sect6.html#SSBOND}

         1         2          3        4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
SSBOND   1 CYS A    6    CYS A  127                          1555   1555  2.03 
SSBOND   2 CYS A   30    CYS A  115                          1555   1555  2.07 
SSBOND   3 CYS A   64    CYS A   80                          1555   1555  2.06 
SSBOND   4 CYS A   76    CYS A   94                          1555   1555  2.04 
*)

type ssbond_fieldpdb_symbol =
  | Empty_1                                  (*  7- 7 string *)
  | Ssbond_serial_number                     (*  8-10 int *)
  | Empty_2                                  (* 11-11 string *) 
  | Ssbond_residue_name_1                    (* 12-14 string *)
  | Empty_3                                  (* 15-15 string *) 
  | Ssbond_chain_idpdb_1                        (* 16-16 char *)
  | Empty_4                                  (* 17-17 string *) 
  | Ssbond_residue_sequence_number_1         (* 18-21 int *)
  | Ssbond_insertion_code_1                  (* 22-22 char *)
  | Empty_5                                  (* 23-25 string *) 
  | Ssbond_residue_name_2                    (* 26-28 string *)
  | Empty_6                                  (* 29-29 string *) 
  | Ssbond_chain_idpdb_2                        (* 30-30 char *)
  | Empty_7                                  (* 31-31 string *) 
  | Ssbond_residue_sequence_number_2         (* 32-35 int *)
  | Ssbond_insertion_code_2                  (* 36-36 char *)
  | Empty_8                                  (* 37-59 string *) 
  | Ssbond_symmetry_operator_1               (* 60-65 string *)
  | Empty_9                                  (* 66-66 string *) 
  | Ssbond_symmetry_operator_2               (* 67-72 string *)
  | Empty_10                                 (* 73-73 string *) 
  | SSbond_length                            (* 74-78 float *) 
  | Empty_11                                 (* 79-80 string *) 
;;
