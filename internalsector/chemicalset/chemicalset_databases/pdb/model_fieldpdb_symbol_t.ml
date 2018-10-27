(** {3 A Symbol for an MODEL field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect9.html#MODEL}
        http://www.wwpdb.org/documentation/format32/sect9.html#MODEL}
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
MODEL        1
MODEL      1  N   ALA A   1      11.104   6.134  -6.504  1.00  0.00           N
MODEL      2  CA  ALA A   1      11.639   6.071  -5.147  1.00  0.00           C

*)

type model_fieldpdb_symbol =
  | Empty_1                     (*  7-10 *)
  | Model_serial_number         (* 11-14 *)
  | Empty_1                     (* 15-80 *)
;;
