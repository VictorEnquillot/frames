(** {3 A Symbol for an ENDMDL field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect9.html#ENDMDL}
        http://www.wwpdb.org/documentation/format32/sect9.html#ENDMDL}
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
...                                                                                                                                                  ...
...                                                                                                                                                  ...
ATOM  14550 1HG  GLU   122     -14.364  14.787 -14.258  1.00  0.00           H
ATOM  14551 2HG  GLU   122     -13.794  13.738 -12.961  1.00  0.00           H
TER   14552      GLU   122                                             
ENDMDL                                                                 
MODEL        9                                                         
ATOM  14553  N   SER     1     -28.280   1.567  12.004  1.00  0.00           N
ATOM  14554  CA  SER     1     -27.749   0.392  11.256  1.00  0.00           C
*)

type endmdl_fieldpdb_symbol =
  | Empty_1                     (*  7-80 *)
;;
