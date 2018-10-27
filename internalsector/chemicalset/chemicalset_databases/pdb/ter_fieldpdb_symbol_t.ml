(** {3 A Symbol for an TER field in a Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect2.html#TER}
        http://www.wwpdb.org/documentation/format32/sect2.html#TER}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
ATOM    601  N   LEU A  75     -17.070 -16.002   2.409  1.00 55.63           N  
ATOM    602  CA  LEU A  75     -16.343 -16.746   3.444  1.00 55.50           C  
ATOM    603  C   LEU A  75     -16.499 -18.263   3.300  1.00 55.55           C  
ATOM    604  O   LEU A  75     -16.645 -18.789   2.195  1.00 55.50           O  
ATOM    605  CB  LEU A  75     -16.776 -16.283   4.844  1.00 55.51           C  
TER     606      LEU A  75   

*)

type ter_fieldpdb_symbol =
  | Ter_serial_number              (*  7-11 int *)
  | Empty_1                        (* 12-17 string *)
  | Ter_residue_name               (* 18-20 string *)
  | Empty_2                        (* 21-21 string *)
  | Ter_chain_id                   (* 22-22 char *)
  | Ter_residue_sequence_number    (* 23-26 int *)
  | Ter_insertion_code             (* 27-27 char *)
  | Empty_3                        (* 28-80 string *)
;;
