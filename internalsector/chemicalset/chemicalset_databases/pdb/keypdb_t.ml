(* $Id: Exp $ *)

(** {3 The definition of keypdb.} *)

    to atoms. 
    It is a kind of equivalent to path for sites. *)

 type keypdb =
   | Top          (* the very Top *)
   | Partial_key  (* the Top of key to define an ATOM record *)
   | Level of key_level_pdb * keypdb           (* any level *)
 and key_level_pdb = key_symbol_pdb * key_index_pdb 
 and key_symbol_pdb = 
   | Atom_name of atom_symbol_pdb
   | Block_symbol
   | Branch_symbol
   | Residue_symbol of residue_symbol_pdb
   | Polypeptide_symbol of polypeptide_symbol_pdb
   | Molecule_symbol of molecule_symbol_pdb
   | Protein_symbol of protein_symbol_pdb
 and atom_symbol_pdb = Atom_name_t.atom_symbol
 and residue_symbol_pdb = Aminoacid_symbol_pdb_t.aminoacid_symbol_pdb
 and molecule_symbol_pdb = Molecule_symbol_t.molecule_symbol
 and polypeptide_symbol_pdb = Polypeptide_symbol_t.polypeptide_symbol
 and protein_symbol_pdb = Protein_symbol_t.protein_symbol
 and key_index_pdb =
   | Atom_index of atom_index_pdb 
   | Block_index of Index_pdb_t.remote_index_pdb
   | Branch_index of Index_pdb_t.branch_index_pdb 
   | Residue_index of residue_index_pdb
   | Polypeptide_index of Polypeptide_identifier_t.chain_index
   | Molecule_index of int 
   | Can_index of int 
 and atom_index_pdb =
     Index_pdb_t.h_index_pdb * Index_pdb_t.alternate_location_index_pdb
 and residue_index_pdb = residue_canonical_index_pdb * Index_pdb_t.insertion_index_pdb  
 and residue_canonical_index_pdb = int
 ;;
 
(**

ATOM   1766  HZ3BTRP A 216C    -20.430  10.390  14.100  0.59 16.25           C 1kg2
atom_keypdb =
 Level (Atom_name_pdb_t.H, (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank),  <-- H alone
  Level (Block_symbol_pdb_t.Ch, Index_pdb_t.Remote_Z, <-- Ch at zeta
   Level (Branch_symbol_pdb_t.Chch, Index_pdb_t.Branch_three, 
    Level (Residue_symbol_pdb_t.Trp, (216, Index_pdb_t.Insertion_C),
     Level (Polypeptide_symbol , Polypeptide_identifier_t.Chain_A,
      Level (Protein_symbol_pdb_t.1ejg , Index_pdb_t.Altloc A,
       Top))))))
*)

(** The branch index should be the number of Left or Right Constructors. 
    There is no branch_symbol nor block_symbol in ATOM Record.*) 
(* 
and grain =
   | Atom 
   | Block
   | Branch
   | Residue   
   | Polypeptide
   | Protein 
*)
