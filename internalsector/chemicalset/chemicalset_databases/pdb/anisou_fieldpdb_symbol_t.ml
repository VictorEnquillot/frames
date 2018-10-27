(** {3 A Symbol for an ANISOU field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect9.html#ANISOU}
        http://www.wwpdb.org/documentation/format32/sect9.html#ANISOU}
                                1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
ATOM    107  N   GLY A  13      12.681  37.302 -25.211 1.000 15.56           N
ANISOU  107  N   GLY A  13     2406   1892   1614    198    519   -328       N
ATOM    108  CA  GLY A  13      11.982  37.996 -26.241 1.000 16.92           C
ANISOU  108  CA  GLY A  13     2748   2004   1679    -21    155   -419       C
ATOM    109  C   GLY A  13      11.678  39.447 -26.008 1.000 15.73           C
ANISOU  109  C   GLY A  13     2555   1955   1468     87    357   -109       C
ATOM    110  O   GLY A  13      11.444  40.201 -26.971 1.000 20.93           O
ANISOU  110  O   GLY A  13     3837   2505   1611    164   -121    189       O
ATOM    111  N   ASN A  14      11.608  39.863 -24.755 1.000 13.68           N
ANISOU  111  N   ASN A  14     2059   1674   1462     27    244    -96       N
                           
*)

type anisou_fieldpdb_symbol =
  | Anisou_atom_serial_number         (*  7-11 int *)
  | Empty_1                           (* 12-12 string *)
  | Anisou_atom_name                  (* 13-16 string *) 
  | Anisou_atom_alternate_location_id (* 17-17 char *)
  | Anisou_residue_symbol             (* 18-20 string *)
  | Empty_2                           (* 21-21 string *)
  | Anisou_chain_id                   (* 22-22 string *)
  | Anisou_residue_sequence_number    (* 23-26 int *)
  | Anisou_insertion_code             (* 27-27 char *)
  | Anisou_u_1_1                      (* 29-35 float *)
  | Anisou_u_2_2                      (* 36-42 float *)
  | Anisou_u_3_3                      (* 43-39 float *)
  | Anisou_u_1_2                      (* 50-56 float *)
  | Anisou_u_1_3                      (* 57-63 float *)           
  | Anisou_u_2_3                      (* 64-70 float *)           
  | Empty_4                           (* 71-76 string *)
  | Anisou_element_symbol             (* 77-78 string *)
  | Anisou_atom_charge                (* 79-80 string *)
;;
