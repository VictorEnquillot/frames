(* Id : Exp $ *)


(** {3 Hetero-Atom of the PDB} *)

(**{[
  
COLUMNS        DATA TYPE       FIELD         DEFINITION
--------------------------------------------------------------
 1 -  6        Record name     "HETATM"
 7 - 11        Integer         serial        Atom serial number.
12 - 12        Integer         h_index_pdb       H Atom index in a methyl or methylene
13 - 15        Atom            name          Atom name.
16 - 16        Index           branch_index_pdb    Number of branch (branch) after a fork..
17 - 17        Character       altLoc        Alternate location indicator.
18 - 20        Molecule name    resName       Molecule name.
22 - 22        Character       chainID       Chain identifier.
23 - 26        Integer         resSeq        Molecule sequence number.
27 - 27        AChar           iCode         Code for insertion of molecules.
31 - 38        Float(8.3)      x             Orthogonal coordinates for X in
                                             Angstroms.
39 - 46        Float(8.3)      y             Orthogonal coordinates for Y in
                                             Angstroms.
47 - 54        Float(8.3)      z             Orthogonal coordinates for Z in
                                             Angstroms.
55 - 60        Float(6.2)      occupancy     Alternative structure weight
61 - 66        Float(6.2)      tempFactor    Temperature factor.
73 - 76        LString(4)      segID         Segment identifier, left-justified.
77 - 78        LString(2)      element       Element symbol, right-justified.
79 - 80        LString(2)      charge        Charge on the atom.
]}

HETATM 4389 FE   HEM A1142      15.817  16.279  14.682  1.00 27.53          FE 
HETATM 4403  O1A HEM A1142      21.824  21.871  16.080  1.00 41.49           O  


@see <http://msdlocal.ebi.ac.uk/docs/pdb_format/y_atom.html#_Toc00060> Pdb Format. *)
(* *** TODO
type description = {
  record_label : Tokenpdb_t.keyword;
  number : number;
  h_index_and_symbol : h_index_and_symbol;
  branch_index_pdb : Index_pdb_t.branch_index_pdb;
  alternate_location_index_pdb : Index_pdb_t.alternate_location_index_pdb;
  molecule : Pdb_molecule.symbol;
  chain_index_pdb : Index_pdb_t.polypeptide_label;
  residue_number : Residue_pdb_t.number;
  x_in_angstrom : Tokenpdb_t.float_8;
  y_in_angstrom : Tokenpdb_t.float_8;
  z_in_angstrom : Tokenpdb_t.float_8;
  alternate_location_weight_pdb : Tokenpdb_t.float_6;
  b_factor : Tokenpdb_t.float_6; 
  some_label : Tokenpdb_t.string_8;
}
and number = Tokenpdb_t.integer_5

and h_index_and_symbol = Index_pdb_t.h_index_pdb * symbol_pdb
(** It is impossible to read the symbol_pdb without the knowlbranch
    of its h_index_pdb, because of Gly HA, which is named 1HA or 2HA. *)

and atom_name_pdb = h_index_and_symbol * Index_pdb_t.branch_index_pdb

(** Example : "HETATM nnnn 2HG3" gives (2, HG, 3). *)

type symbol_pdb =
  | O
  | CA 
  | CU 
  | HG 
  | FE 
  | ZN 
;;
(** The Hetero Atoms found of PDB : inside a Molecule or Ion *)


* *** *)
