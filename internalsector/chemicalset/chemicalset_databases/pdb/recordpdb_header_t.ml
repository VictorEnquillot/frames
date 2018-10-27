(* $Id: Exp $ *)

(** {3 A HEADER record of PDB file.} *)

(**
{[
COLUMNS        DATA TYPE       FIELD         DEFINITION
--------------------------------------------------------------
 1 -  6        String          record_label   "HEADER  "
 7 - 10        Empty
11 - 50        String          chemical_species 
                                             The Chemical species 
                                             or UNKNOWN FUNCTION
51 - 59        String          date          Date
60 - 62  Empty
63 - 66        String          id_pdb        Identifier
67 - 72  Empty
73 - 80  Any   String

Example:
HEADER    PLANT PROTEIN                           02-MAR-00   1EJG 
HEADER    PROTEINASE INHIBITOR (TRYPSIN)          27-SEP-82   4PTI      4PTI   3
          11        2      2  3        4         5    555  66     6  7  7      8 
1   5    0 2  5    01   5  8 0123 5    0    5    0    567  01   5 7  0  3 5    0

]}
*)

type header_record = {
    record_label : Recordpdb_symbol_t.recordpdb_symbol;
    chemical_species : Tokenpdb_t.string_40;
    date : Tokenpdb_t.date_9;
    id_pdb : Tokenpdb_t.string_4;
  }
