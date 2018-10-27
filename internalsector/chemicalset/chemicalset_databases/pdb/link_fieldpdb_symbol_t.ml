(** {3 A Symbol for an LINK field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect6.html#LINK}
        http://www.wwpdb.org/documentation/format32/sect6.html#LINK}

         1         2          3        4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
SSBOND   1 CYS A    6    CYS A  127                          1555   1555  2.03 
SSBOND   2 CYS A   30    CYS A  115                          1555   1555  2.07 
SSBOND   3 CYS A   64    CYS A   80                          1555   1555  2.06 
SSBOND   4 CYS A   76    CYS A   94                          1555   1555  2.04 
string *)

type link_fieldpdb_symbol =
  | Empty_1                                  (*  7-12 string *)
  | Link_atom_name_1                         (* 13-16 string *)
  | Link_alternative_location_1              (* 17-17 char *) 
  | Link_residue_name_1                      (* 18-20 string *)
  | Empty_3                                  (* 21-21 string *) 
  | Link_chain_idpdb_1                          (* 22-22 char *)
  | Link_residue_sequence_number_1           (* 23-26 string *)
  | Link_insertion_code_1                    (* 27-27 char *)
  | Empty_4                                  (* 28-42 string *) 
  | Link_atom_name_2                         (* 43-46 string *)
  | Link_alternative_location_2              (* 47-47 char *)  
  | Link_residue_name_2                      (* 48-50 string *)
  | Empty_5                                  (* 51-51 string *) 
  | Link_chain_idpdb_2                          (* 52-52 char *)
  | Link_residue_sequence_number_2           (* 53-56 int *)
  | Link_insertion_code_2                    (* 57-57 char *)
  | Empty_8                                  (* 58-59 string *) 
  | Symmetry_operator_1                      (* 60-65 string *)
  | Empty_9                                  (* 66-66 string *) 
  | Symmetry_operator_2                      (* 67-72 string *)
  | Empty_10                                 (* 73-73 string *) 
  | Link_length                              (* 74-78 float *) 
  | Empty_11                                 (* 79-80 string *) 
;;
