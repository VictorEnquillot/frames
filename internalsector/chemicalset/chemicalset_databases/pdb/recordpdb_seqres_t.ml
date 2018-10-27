(* $Id: sub_sequence_pdb.mli,v 1.6 2007-09-19 19:20:17 colonna Exp $ *)

(** {3 A SEQRES record of the Pdb File.} *)
(** Description:
{[
COLUMNS DATA TYPE  FIELD       DEFINITION
--------------------------------------------------------------
 1 -  6  String    record_name "SEQRES"
 7 -  7  Empty
 8 - 10  Integer   record_number
                           Serial number of the SEQRES record for the current chain.
                           Starts at 1 and increments by one each line. 
                           Reset to 1 for each chain.
12 - 12 Character chain_index_pdb  
                           Chain identifier.  
                           This may be any single legal character, including a
                           blank which is used if there is only one chain.   
13 - 13  Empty
14 - 17 Integer   sequence_length   
                           Number of residues in the chain. 
                                 This value is repeated on every record.
18 - 19  Empty
20 - 22 String    resName  Residue name.  1
24 - 26 String    resName  Residue name.  2
28 - 30 String    resName  Residue name.  3 
32 - 34 String    resName  Residue name.  4
36 - 38 String    resName  Residue name.  5
40 - 42 String    resName  Residue name.  6
44 - 46 String    resName  Residue name.  7
48 - 50 String    resName  Residue name.  8
52 - 54 String    resName  Residue name.  9 
56 - 58 String    resName  Residue name. 10
60 - 62 String    resName  Residue name. 11
64 - 66 String    resName  Residue name. 12
68 - 70 String    resName  Residue name. 13

Examples:
         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
SEQRES   1 A   21  GLY ILE VAL GLU GLN CYS CYS THR SER ILE CYS SER LEU          

SEQRES   1 A   46  THR THR CYS CYS PRO SER ILE VAL ALA ARG SER ASN PHE 
... 
SEQRES   4 A   46  CYS PRO GLY ASP TYR ALA ASN 
SEQRES   1 A    8   DA  DA  DC  DC  DG  DG  DT  DT                              
SEQRES   1 B    8   DA  DA  DC  DC  DG  DG  DT  DT 

SEQRES   1 X   39    U   C   C   C   C   C   G   U   G   C   C   C   A          
SEQRES   2 X   39    U   A   G   C   G   G   C   G   U   G   G   A   A           
SEQRES   3 X   39    C   C   A   C   C   C   G   U   U   C   C   C   A        

]}. *)

type recordpdb_seqres = {
  record_label : Recordpdb_symbol_t.recordpdb_symbol;
  record_number : Token_pdb_t.integer_4;
  chain_index_pdb : Polypeptide_identifier_t.chain_index; 
  sequence_length : Token_pdb_t.integer_4;
  thirteen_names : Token_pdb_t.string_52;
}
(** The image of a SEQRES line.
    Each field_label is used to define the [model_recordpdb]. *)

