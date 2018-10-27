(** {3 A Symbol for an HELIX field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect5.html#HELIX}
        http://www.wwpdb.org/documentation/format32/sect5.html#HELIX}
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
HELIX    1  HA GLY A   86  GLY A   94  1                                   9   
HELIX    2  HB GLY B   86  GLY B   94  1                                   9  
 
HELIX   21  21 PRO J  385  LEU J  388  5                                   4    
HELIX   22  22 PHE J  397  PHE J  402  5                                   6   

*)

type helix_fieldpdb_symbol =
  | Empty_1                                  (*  7- 7 string *)
  | Helix_serial_number                      (*  8-10 int *)
  | Empty_2                                  (* 11-11 string *)
  | Helix_id                                 (* 12-14 string *) 
  | Helix_initial_residue_name               (* 16-18 string *)
  | Empty_3                                  (* 19-19 string *)
  | Helix_initial_chain_id                   (* 20-20 char *)
  | Empty_4                                  (* 21-21 string *)
  | Helix_initial_residue_sequence_number    (* 22-25 int *)
  | Helix_initial_residue_insertion_code     (* 26-26 char *)
  | Empty_5                                  (* 27-27 string *)
  | Helix_final_residue_name                 (* 28-30 string *)
  | Empty_6                                  (* 31-31 string *)
  | Helix_final_chain_id                     (* 32-32 char *)
  | Empty_7                                  (* 33-33 string *)
  | Helix_final_residue_sequence_number      (* 34-37 int *)
  | Helix_final_residue_insertion_code       (* 38-38 char *)
  | Helix_class                              (* 39-40 int *)
  | Empty_8                                  (* 41-71 string *)
  | Helix_length                             (* 72-76 float *)
  | Empty_9                                  (* 77-80 string *)
;;
