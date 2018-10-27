(** {3 A ATOM record of PDB file.} *)

(**
{[
COLUMNS        DATA TYPE       FIELD         DEFINITION
--------------------------------------------------------------
 1 -  6        String          record_label   "ATOM  "
 7 - 11        Integer         atom_number   Atom serial number.
     12        Empty
13 - 13        Integer         h_index_pdb       H Atom index in a methyl or methylene
14 - 15        String          atom_symbol   Atom name.
16 - 16        Index           branch_index_pdb    Number of branch (branch) after a fork..
17 - 17        Character       alternate_location_index_pdb        
                                             Alternate location indicator.
18 - 20        String          residue_symbol  
                                             Residue name.
     21  Empty
22 - 22        Character       chain_index_pdb   Chain label
23 - 26        Integer         canonical_residue_number        
                                             Residue canonical sequence number.
27 - 27        AChar           insertion_index_pdb         
                                             Code for insertion of residues.
28 - 30  Empty
31 - 38        Float(8.3)      x             Orthogonal coordinates for X in Ang.
39 - 46        Float(8.3)      y             Orthogonal coordinates for Y in
47 - 54        Float(8.3)      z             Orthogonal coordinates for Z in
     55  Empty
     56  Empty
57 - 60        Float(4.2)      alternate_location_weight    
                                             Alternative structure weight
     61  Empty
62 - 66        Float(5.2)      b_factor      Temperature factor.
     67  Empty
73 - 76        LString(4)      segID         Segment identifier, left-justified.
77 - 78        LString(2)      element       Element symbol, right-justified.
79 - 80        LString(2)      charge        Charge on the atom.

Example:
ATOM    419 2HB3AARG    53      18.910  31.126  -1.141  1.00 23.55      4PTI 507
ATOM    470 1HD1ALEU A  25       0.243  16.147  -1.682  0.57  5.46           H  
          11        2      2  3        4         5    555  66     6  7  7      8 
1   5    0 2  5    01   5  8 0123 5    0    5    0    567  01   5 7  0  3 5    0

ATOM    470 1HD1ALEU A  25       0.243  16.147  -1.682  0.57  5.46           H  
ATOM     15  CD2 LEU A   2      20.031   3.495   1.202  1.00 29.07           C  
         1         2
1   5    0    5    0    5 
]}
@see <http://bmerc-www.bu.edu/needle-doc/latest/atom-format.html> Pdb Format. 

Insertion Code: in pdb coordinate files sometimes  different amino acids have same
                 residue numbers extended by A,B,C ... like
                 381, 381A , 381B, 381C , 382
The PDB documentation calls these letters insertion codes.

It is supposed that colums  5 6 12 21 30 55 56 61 67 are empty for each ATOM record

]}. *)

type recordpdb_atom = {
    record_label : Tokenpdb_t.string_6;
    atom_number : Tokenpdb_t.integer_5;
    h_index_pdb : Tokenpdb_t.string_1;
    atom_symbol : Tokenpdb_t.string_1;
    remote_index_pdb : Tokenpdb_t.string_1;
    branch_index_pdb : Tokenpdb_t.string_1;
    alternate_location_index_pdb : Tokenpdb_t.string_1;
    residue_symbol : Tokenpdb_t.string_3;
    chain_index_pdb : Tokenpdb_t.string_1;
    canonical_residue_number : Tokenpdb_t.integer_4;
    insertion_index_pdb : Tokenpdb_t.string_1;
    x : Tokenpdb_t.float_8;
    y : Tokenpdb_t.float_8;
    z : Tokenpdb_t.float_8;
    alternate_location_weight : Tokenpdb_t.float_4;
    b_factor : Tokenpdb_t.float_6;
  }
;;
(** These are only strings, integers or floats. *)
