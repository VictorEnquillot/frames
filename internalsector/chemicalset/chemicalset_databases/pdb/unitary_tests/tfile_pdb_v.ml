(* $Id : Exp $ *)

open Make_test_v;;

testing "File_pdb_v";;

(* toplevel #use "tfile_pdb_v.ml";; *)

let pri = Protein_identifier_t.Frames "ga" ;;
let fnm = File_pdb_v.file_name_pdb_of_protein_identifier pri;;

test_number 1 (
fnm
=
{File_format_t.content = "ga"; 
File_format_t.extension = "pdb";
 File_format_t.unix_path = "../../databases/PDB/"}
);;

test_number 2 (
File_format_v.make_file_name  "ga" "pdb" "../../databases/PDB/"
=
{File_format_t.content = "ga";
 File_format_t.extension = "pdb";
 File_format_t.unix_path = "../../databases/PDB/";
}
);;

let rcd_l = File_pdb_v.recordpdb_list_of_file_name fnm;;

test_number 3 (
List.length rcd_l
=
40
);;

let atm_rcd_l = File_pdb_v.gather_recordpdb_list_by_recordpdb_symbol
    rcd_l Recordpdb_symbol_t.ATOM ;;

test_number 4 (
atm_rcd_l 
=  
File_pdb_v.get_recordpdb_atom_list_of_recordpdb_list rcd_l
);;

let seq_l = File_pdb_v.get_recordpdb_seqres_list_of_recordpdb_list rcd_l;;

test_number 5 (
seq_l
=  
[Recordpdb_t.SEQRES
    "SEQRES   1      2  GLY ALA                                              4GA_  70"]
);;

let hdr = File_pdb_v.get_recordpdb_header_of_recordpdb_list rcd_l;;
test_number 6 (
hdr
=  
  Recordpdb_t.HEADER
   "HEADER    PROTEINASE INHIBITOR (TRYPSIN)          27-SEP-82   4GA_      4GA_   3"
);;

let cnt = File_pdb_v.make_file_content_pdb_of_protein_identifier pri;;
test_number 7 (
cnt 
=
  {
   File_pdb_t.recordpdb_header = hdr;
   File_pdb_t.atom_pdb_records = atm_rcd_l;
   File_pdb_t.seqres_records = seq_l;
 }
);;

(*
let ic = File_pdb_v.in_channel_of_file_name_pdb fnm;;


test_number 8 (
cnt 
=
File_pdb_v.read ic
);; 
*)
