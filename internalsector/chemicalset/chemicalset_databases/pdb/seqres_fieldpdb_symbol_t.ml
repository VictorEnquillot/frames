(** {3 A Symbol for a field in a SEQRES Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect3.html#SEQRES}
        http://www.wwpdb.org/documentation/format32/sect3.html#SEQRES}

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
SEQRES   1 A   21  GLY ILE VAL GLU GLN CYS CYS THR SER ILE CYS SER LEU          
SEQRES   2 A   21  TYR GLN LEU GLU ASN TYR CYS ASN                              
SEQRES   1 B   30  PHE VAL ASN GLN HIS LEU CYS GLY SER HIS LEU VAL GLU          
SEQRES   2 B   30  ALA LEU TYR LEU VAL CYS GLY GLU ARG GLY PHE PHE TYR          
SEQRES   3 B   30  THR PRO LYS ALA     
*)

type seqres_fieldpdb_symbol =
  | Empty_1                      (*  7- 7 string *)
  | Seqres_record_serial_number  (*  8-10 int *)
  | Empty_2                      (* 11-11 string *)
  | Seqres_chain_id              (* 12-12 char *)
  | Empty_3                      (* 13-13 string *)
  | Seqres_sequence_length       (* 14-17 int *)
  | Empty_4                      (* 18-19 string *)
  | Seqres_thirteen_names        (* 20-70 string *) 
  | Empty_5                      (* 71-80 string *)
;;
