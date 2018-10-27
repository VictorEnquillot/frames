open Make_test_v;;

testing "Atom_pdb_v";;

let pri = Protein_identifier_t.Frames "ga" ;;
let fnm = File_pdb_v.file_name_pdb_of_protein_identifier pri;;
let rcd_l = File_pdb_v.recordpdb_list_of_file_name fnm;;
let rcd_atm_l = File_pdb_v.get_recordpdb_atom_list_of_recordpdb_list rcd_l
let rcd_atm_a = Array.of_list rcd_atm_l;;

let rcd_atm_ca = rcd_atm_a.(2);;

test_number 1 (
rcd_atm_ca
=
Recordpdb_t.ATOM
 "ATOM    757  CA  GLY A   1      17.226  10.779  18.683  1.00  5.06           C  "
);;

(*
test_number 2 (
Atom_pdb_v.atom_pdb_of_recordpdb_atom rcd_atm_ca
=
Recordpdb_t.ATOM
 "ATOM    757  CA  GLY A   1      17.226  10.779  18.683  1.00  5.06           C  "
) ;;

test_number 3 (
Pdb_atoms.print Format.str_formatter (Pdb_atom.Sidechain Pdb_atom.CB);
Format.flush_str_formatter () 
= "CB"
);;
*)
