(* $Id: Exp $ *)

open Make_test_v;;

testing "Recordpdb_atom_v";;

(* toplevel #use "trecordpdb_atom_v.ml";; *)

let str =
"ATOM    470 1HD1ALEU A  25       0.243  16.147  -1.682  0.57  5.46           H  ";;

test_number 1 (
Recordpdb_atom_v.get_current_word str Fieldpdb_symbol_t.Record_label
=
 "ATOM  "
);;

test_number 2 (
Recordpdb_atom_v.get_current_word str Fieldpdb_symbol_t.Aminoacid_symbol_pdb
=
 "LEU"
);;

test_number 3 (
Recordpdb_atom_v.atom_record_of_string  str
=
{
 Recordpdb_atom_t.record_label = "ATOM  ";
 Recordpdb_atom_t.atom_number = 470; 
 Recordpdb_atom_t.h_index_pdb = "1";
 Recordpdb_atom_t.atom_symbol = "H";
 Recordpdb_atom_t.remote_index_pdb = "D";
 Recordpdb_atom_t.branch_index_pdb = "1";
 Recordpdb_atom_t.alternate_location_index_pdb = "A";
 Recordpdb_atom_t.residue_symbol = "LEU";
 Recordpdb_atom_t.chain_index_pdb = "A";
 Recordpdb_atom_t.canonical_residue_number = 25;
 Recordpdb_atom_t.insertion_index_pdb = " "; Recordpdb_atom_t.x = 0.243;
 Recordpdb_atom_t.y = 16.147; Recordpdb_atom_t.z = -1.682;
 Recordpdb_atom_t.alternate_location_weight = 0.57;
 Recordpdb_atom_t.b_factor = 5.46
}
)
